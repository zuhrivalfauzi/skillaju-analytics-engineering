import pandas as pd
from pathlib import Path

# Folder data mentah
RAW_DATA_PATH = Path("../data/raw")

# Load datasets
students = pd.read_csv(RAW_DATA_PATH / "students.csv")
courses = pd.read_csv(RAW_DATA_PATH / "courses.csv")
instructors = pd.read_csv(RAW_DATA_PATH / "instructors.csv")
enrollments = pd.read_csv(RAW_DATA_PATH / "enrollments.csv")
quiz_results = pd.read_csv(RAW_DATA_PATH / "quiz_results.csv")

# Simpan dalam dictionary
datasets = {
    "students": students,
    "courses": courses,
    "instructors": instructors,
    "enrollments": enrollments,
    "quiz_results": quiz_results,
}

# Preview
if __name__ == "__main__":
    for name, df in datasets.items():
        print("=" * 50)
        print(name.upper())
        print(df.head())
        print()