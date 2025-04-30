from sqlalchemy import Column, Integer, String, Float
from app.db import Base

class Park(Base):
    __tablename__ = "melbourne_playgrounds"

    id = Column(Integer, primary_key=True, index=True)
    longitude = Column(Float)
    latitude = Column(Float)
    postcode = Column(Integer)
    features = Column(String)
    park_address = Column(String)
    image_url = Column(String)

class Guideline(Base):
    __tablename__ = "guidelines_summary"

    id = Column(Integer, primary_key=True, index=True)
    age_group = Column(String(50))
    physical_activity = Column(String)
    sedentary_time = Column(String)
    screen_time = Column(String)
    sleep = Column(String)

class Recipe(Base):
    __tablename__ = "recipe_table"

    __table_args__ = {'extend_existing': True}
    food_name = Column(String(59), primary_key=True)
    ingredients = Column(String(462), nullable=False)
    directions = Column(String(870), nullable=False)
    link = Column(String(48), nullable=False)
    cooking_time_cat = Column(String(17), nullable=False)
    meal_budget_cat = Column(String(15), nullable=False)
    meal_type = Column(String(9), nullable=False)
    dietary_cat = Column(String(35), nullable=False)
    food_groups = Column(String(56), nullable=False)

class NutritionGuideline(Base):
    __tablename__ = "nurtition_guidelines"

    gender = Column(String(6), primary_key=True)
    age_group = Column(String(17), primary_key=True)
    vegetables = Column(String(10), nullable=False)
    fruit = Column(String(5), nullable=False)
    grains = Column(String(6), nullable=False)
    protein = Column(String(7), nullable=False)
    dairy = Column(String(5), nullable=False)

