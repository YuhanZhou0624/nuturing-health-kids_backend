# app/db.py
import pyodbc
import os
from dotenv import load_dotenv

load_dotenv()  # load .env

# get set up information from .env
server = os.getenv("DB_SERVER")
database = os.getenv("DB_NAME")
username = os.getenv("DB_USER")
password = os.getenv("DB_PASSWORD")
driver = "{ODBC Driver 18 for SQL Server}"

# construct database connection str
conn_str = (
    f"DRIVER={driver};"
    f"SERVER={server};"
    f"DATABASE={database};"
    f"UID={username};"
    f"PWD={password};"
    f"Encrypt=yes;"
    f"TrustServerCertificate=no;"
)

# test method for local test
def test_connection():
    try:
        with pyodbc.connect(conn_str) as conn:
            cursor = conn.cursor()
            cursor.execute("SELECT 1")
            print("✅ successfully connected！")
    except Exception as e:
        print("❌ failed：", e)

# call function for connecting database
def get_db_connection():
    return pyodbc.connect(conn_str)

# test execute
if __name__ == "__main__":
    test_connection()
