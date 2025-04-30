from fastapi import APIRouter

router = APIRouter()
@router.get("/test")
def test():
    print("🔥 test 接口被调用了！")
    return {"msg": "it works"}
