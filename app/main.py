from fastapi import FastAPI
from fastapi.middleware.cors import CORSMiddleware
from app.routers import guideline
from app.routers import park
app = FastAPI()

app.add_middleware(
    CORSMiddleware,
    allow_origins=["*"],
    allow_credentials=True,
    allow_methods=["*"],
    allow_headers=["*"],
)

@app.get("/")
def read_root():
    return {"message": "Hello from Azure!"}
# 路由引入
app.include_router(guideline.router)
app.include_router(park.router)