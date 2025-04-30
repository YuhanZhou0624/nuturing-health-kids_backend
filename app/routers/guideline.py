# app/routers/guideline.py
from fastapi import APIRouter, Depends, HTTPException
from sqlalchemy.orm import Session
from app.db import SessionLocal
from app.models import Guideline
from app.schemas import GuidelineOut

router = APIRouter()

def get_db():
    db = SessionLocal()
    try:
        yield db
    finally:
        db.close()

@router.get("/api/guidelines/{id}", response_model=GuidelineOut)
def get_guideline_by_id(id: int, db: Session = Depends(get_db)):
    guideline = db.query(Guideline).filter(Guideline.id == id).first()
    if not guideline:
        raise HTTPException(status_code=404, detail="Guideline not found")
    return guideline
