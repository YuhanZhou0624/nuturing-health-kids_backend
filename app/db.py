from sqlalchemy import create_engine
from sqlalchemy.orm import sessionmaker, declarative_base
import os
from dotenv import load_dotenv

load_dotenv()

DATABASE_URL = os.getenv("DB_URL")

# 创建数据库引擎
engine = create_engine(DATABASE_URL)

# 创建 SessionLocal 类，用于依赖注入
SessionLocal = sessionmaker(autocommit=False, autoflush=False, bind=engine)

# 声明基础类，用于继承定义 ORM 模型
Base = declarative_base()
