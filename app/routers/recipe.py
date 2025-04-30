# app/routers/recipe.py
from fastapi import APIRouter, Depends, HTTPException, Query
from sqlalchemy.orm import Session
from typing import List
from app.db import SessionLocal
from app.models import Recipe
from app.schemas import RecipeOut

router = APIRouter()

def get_db():
    db = SessionLocal()
    try:
        yield db
    finally:
        db.close()

@router.get("/api/recipes/search", response_model=List[RecipeOut])
def search_recipes(
    meal_type: str = Query(None),
    cooking_time_cat: str = Query(None),
    meal_budget_cat: str = Query(None),
    dietary_cat: str = Query(None),
    db: Session = Depends(get_db)
):
    query = db.query(Recipe)

    if meal_type:
        query = query.filter(Recipe.meal_type == meal_type)
    if cooking_time_cat:
        query = query.filter(Recipe.cooking_time_cat == cooking_time_cat)
    if meal_budget_cat:
        query = query.filter(Recipe.meal_budget_cat == meal_budget_cat)
    if dietary_cat:
        query = query.filter(Recipe.dietary_cat.contains(dietary_cat))

    return query.all()

