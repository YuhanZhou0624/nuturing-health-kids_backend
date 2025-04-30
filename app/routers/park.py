from fastapi import APIRouter, Depends
from sqlalchemy.orm import Session
from typing import List
from app.db import SessionLocal
from app.models import Park
from app.schemas import ParkOut

router = APIRouter()

def get_db():
    db = SessionLocal()
    try:
        yield db
    finally:
        db.close()

@router.get("/api/parks", response_model=List[ParkOut])
def get_all_parks(db: Session = Depends(get_db)):
    return db.query(Park).all()
