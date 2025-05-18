from fastapi import APIRouter, Depends, Query, HTTPException
from sqlalchemy.orm import Session
from typing import List
import random

from app.db import SessionLocal
from app.models import SwapFoodQuiz
from app.schemas import SwapFoodQuizOut

router = APIRouter()
#connect to database
def get_db():
    db = SessionLocal()
    try:
        yield db
    finally:
        db.close()

#swap food api
@router.get("/api/swapfoodquiz", response_model=List[SwapFoodQuizOut])
def get_random_quiz(num: int = Query(5, ge=1, le=30), db: Session = Depends(get_db)):#random select five from 30
    all_quiz = db.query(SwapFoodQuiz).all()
    if not all_quiz:
        raise HTTPException(status_code=404, detail="No quiz data found")

    selected = random.sample(all_quiz, min(num, len(all_quiz)))
    return selected
