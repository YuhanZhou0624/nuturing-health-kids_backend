from fastapi import APIRouter, HTTPException, Query
from typing import Optional
from app.db import get_db_connection

router = APIRouter()

@router.get("/api/parks")
def get_parks(postcode: Optional[int] = Query(None)):
    try:
        conn = get_db_connection()
        cursor = conn.cursor()

        if postcode:
            cursor.execute("SELECT * FROM melbourne_playgrounds WHERE postcode = ?", (postcode,))
        else:
            cursor.execute("SELECT * FROM melbourne_playgrounds")

        rows = cursor.fetchall()
        columns = [col[0] for col in cursor.description]
        conn.close()

        return [dict(zip(columns, row)) for row in rows]

    except Exception as e:
        raise HTTPException(status_code=500, detail=str(e))
