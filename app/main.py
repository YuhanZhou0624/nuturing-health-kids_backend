from fastapi import FastAPI
from fastapi.middleware.cors import CORSMiddleware
from app.routers import guideline
from app.routers import park
from app.routers import recipe
from app.routers import nutrition
app = FastAPI()

app.add_middleware(
    CORSMiddleware,
    allow_origins=["*"],
    allow_credentials=True,
    allow_methods=["*"],
    allow_headers=["*"],
)

import os
from dotenv import load_dotenv

dotenv_path = os.path.join(os.path.dirname(__file__), "..", ".env")
load_dotenv(dotenv_path)

print("✅ DATABASE_URL loaded:", os.getenv("DATABASE_URL"))

@app.get("/")
def read_root():
    return {"message": "Hello from Azure!"}
# 路由引入
app.include_router(guideline.router)
app.include_router(park.router)
app.include_router(recipe.router)
app.include_router(nutrition.router)
