from pydantic import BaseModel

class ParkOut(BaseModel):
    id: int
    longitude: float
    latitude: float
    postcode: int
    features: str
    park_address: str
    image_url: str

class GuidelineOut(BaseModel):
    id: int
    age_group: str
    physical_activity: str
    sedentary_time: str
    screen_time: str
    sleep: str

class RecipeOut(BaseModel):
    food_name: str
    ingredients: str
    directions: str
    link: str
    cooking_time_cat: str
    meal_budget_cat: str
    meal_type: str
    dietary_cat: str
    food_groups: str

class NutritionGuidelineOut(BaseModel):
    gender: str
    age_group: str
    vegetables: str
    fruit: str
    grains: str
    protein: str
    dairy: str

class SwapFoodQuizOut(BaseModel):
    Round: str
    Option_1: str
    Option_2: str
    Option_3: str
    Answer: str
    Why: str
    image_1: str
    image_2: str
    image_3: str

    class Config:
        from_attributes = True