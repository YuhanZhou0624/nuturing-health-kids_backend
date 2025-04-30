from fastapi import APIRouter, Depends, HTTPException
from sqlalchemy.orm import Session
from typing import List
from fastapi import Query
from app.db import SessionLocal
from app.models import NutritionGuideline
from app.schemas import NutritionGuidelineOut

router = APIRouter()

def get_db():
    db = SessionLocal()
    try:
        yield db
    finally:
        db.close()

@router.get("/api/nutrition", response_model=List[NutritionGuidelineOut])
def get_nutrition_guidelines(
    gender: str = Query(..., description="Boy or Girl"),
    age_group: str = Query(..., description="e.g., 2–3 years old"),
    db: Session = Depends(get_db)
):
    query = db.query(NutritionGuideline).filter_by(gender=gender, age_group=age_group).all()
    if not query:
        raise HTTPException(status_code=404, detail="Nutrition guideline not found")
    return query


