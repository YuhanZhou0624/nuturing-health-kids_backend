from fastapi import APIRouter, UploadFile, File, Request
from fastapi.responses import JSONResponse
import os, shutil
from openai import OpenAI

router = APIRouter()

# Directory to temporarily store uploaded files
TEMP_DIR = "static"
os.makedirs(TEMP_DIR, exist_ok=True)

# Initialize OpenAI client for Doubao API
client = OpenAI(
    base_url="https://ark.cn-beijing.volces.com/api/v3",
    api_key=os.environ.get("ARK_API_KEY"),  # Ensure this environment variable is set
)
@router.post("/dish/predict")
async def predict_dish(file: UploadFile = File(...), request: Request = None):
    # Save the uploaded image to temp folder
    filename = file.filename
    save_path = os.path.join(TEMP_DIR, filename)
    with open(save_path, "wb") as f:
        shutil.copyfileobj(file.file, f)

    # Generate image URL (for local testing or Render deployment)
    scheme = request.url.scheme
    host = request.client.host if "127" in request.client.host else request.base_url.hostname
    port = request.url.port
    image_url = f"https://nuturing-health-kids-backend-1.onrender.com/static/{filename}"  # For Render deployment

    # Call Doubao API to analyze the image
    response = client.chat.completions.create(
        model="doubao-1.5-vision-pro-250328",
        messages=[
            {
                "role": "user",
                "content": [
                    {
                        "type": "image_url",
                        "image_url": { "url": image_url }
                    },
                    {
                        "type": "text",
                        "text": "Identify the dish in this image and return the result in this format: {'predicted_dish': 'xxx', 'ingredients': [...], 'steps': [...]}"
                    }
                ],
            }
        ],
    )

    content = response.choices[0].message.content

    # Try to parse the output
    try:
        result = eval(content) if isinstance(content, str) else content
    except:
        return JSONResponse(status_code=500, content={"error": "Failed to parse model response", "raw": content})

    return result
