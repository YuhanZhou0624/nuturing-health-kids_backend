from fastapi import FastAPI
from fastapi.middleware.cors import CORSMiddleware
from app.routers import guideline, swapfood
from app.routers import park
from app.routers import recipe
from app.routers import nutrition
from fastapi.staticfiles import StaticFiles
from app.routers import dish_predict
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
app.include_router(recipe.router)
app.include_router(nutrition.router)
app.include_router(swapfood.router)

app.include_router(dish_predict.router)