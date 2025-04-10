from fastapi import APIRouter, HTTPException
from app.db import get_db_connection

router = APIRouter()

@router.get("/api/guidelines/{id}")
def get_guideline_by_id(id: int):
    try:
        conn = get_db_connection()
        cursor = conn.cursor()
        cursor.execute("SELECT * FROM guidelines_summary WHERE id = ?", (id,))
        row = cursor.fetchone()
        conn.close()

        if row:
            columns = [column[0] for column in cursor.description]
            result = dict(zip(columns, row))
            return result
        else:
            raise HTTPException(status_code=404, detail="Guideline not found")
    except Exception as e:
        raise HTTPException(status_code=500, detail=str(e))