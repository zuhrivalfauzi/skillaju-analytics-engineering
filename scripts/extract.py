import pandas as pd
from pathlib import Path

BASE_DIR = Path(__file__).resolve().parent.parent
RAW_DATA_PATH = BASE_DIR / "data" / "raw"

students = pd.read_csv(RAW_DATA_PATH / "students.csv")
courses = pd.read_csv(RAW_DATA_PATH / "courses.csv")
instructors = pd.read_csv(RAW_DATA_PATH / "instructors.csv")
enrollments = pd.read_csv(RAW_DATA_PATH / "enrollments.csv")
quiz_results = pd.read_csv(RAW_DATA_PATH / "quiz_results.csv")