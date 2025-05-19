# app/routers/dish_predict.py
from fastapi import APIRouter, UploadFile, File, Request
from fastapi.responses import JSONResponse
from dotenv import load_dotenv
from openai import OpenAI
from app.schemas import DishPrediction
import os, shutil, base64, json, re, traceback

router = APIRouter()
load_dotenv()

TEMP_DIR = "temp_uploads"
os.makedirs(TEMP_DIR, exist_ok=True)

# Initialize OpenAI client
client = OpenAI(api_key=os.environ.get("OPENAI_API_KEY"))

@router.post("/dish/predict")
async def predict_dish(file: UploadFile = File(...), request: Request = None):
    try:
        # Step 1: Save uploaded image
        filename = file.filename
        ext = os.path.splitext(filename)[-1].lower()
        save_path = os.path.join(TEMP_DIR, filename)
        with open(save_path, "wb") as f:
            shutil.copyfileobj(file.file, f)

        # Step 2: Read image & convert to base64
        with open(save_path, "rb") as f:
            image_bytes = f.read()
            image_base64 = base64.b64encode(image_bytes).decode("utf-8")

        # Step 3: Send to OpenAI GPT-4o
        response = client.chat.completions.create(
            model="gpt-4o",
            messages=[
                {
                    "role": "user",
                    "content": [
                        {
                            "type": "image_url",
                            "image_url": {
                                "url": f"data:image/{ext[1:]};base64,{image_base64}"
                            }
                        },
                        {
                            "type": "text",
                            "text": (
                                "This is a photo of a dish. Please identify the dish name, ingredients, and cooking steps. "
                                "Respond ONLY in this JSON format: "
                                "{\"dish\": ..., \"ingredients\": [...], \"steps\": [...]} — Do not include explanation or markdown."
                            )
                        }
                    ]
                }
            ]
        )

        # Step 4: Clean & parse GPT output
        raw_text = response.choices[0].message.content or ""
        match = re.search(r"\{.*\}", raw_text, re.DOTALL)
        if not match:
            raise ValueError("No valid JSON object found in model response.")

        json_str = match.group()
        structured = DishPrediction.model_validate(json.loads(json_str))

        # Step 5: Return parsed result
        return JSONResponse(content=structured.model_dump())

    except Exception as e:
        traceback.print_exc()
        return JSONResponse(status_code=500, content={"error": str(e)})