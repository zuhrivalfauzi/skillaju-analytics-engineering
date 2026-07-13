# Data Dictionary

## Overview

Dataset SkillAju terdiri dari lima tabel utama yang merepresentasikan data operasional platform pembelajaran online. Dataset ini digunakan untuk membangun Data Warehouse dan Analytics Layer guna mendukung analisis performa siswa, course, instructor, serta aktivitas pembelajaran.

---

# 1. Students

**Description**

Menyimpan informasi seluruh siswa yang terdaftar pada platform SkillAju.

| Column | Data Type | Description | Key |
|---------|-----------|-------------|-----|
| student_id | VARCHAR | Unique identifier for each student | Primary Key |
| name | VARCHAR | Student full name | |
| email | VARCHAR | Student email address | |
| age | INTEGER | Student age | |
| city | VARCHAR | Student domicile | |
| registration_date | DATE | Date when student registered | |
| acquisition_source | VARCHAR | Marketing channel where student registered (Google, Instagram, YouTube, etc.) | |
| plan_type | VARCHAR | Subscription type (Free / Pro) | |

---

# 2. Courses

**Description**

Menyimpan informasi seluruh course yang tersedia pada platform.

| Column | Data Type | Description | Key |
|---------|-----------|-------------|-----|
| course_id | VARCHAR | Unique identifier for each course | Primary Key |
| title | VARCHAR | Course title | |
| category | VARCHAR | Course category | |
| instructor_id | VARCHAR | Instructor teaching the course | Foreign Key → instructors.instructor_id |
| price_idr | INTEGER | Course price in Indonesian Rupiah | |
| duration_hours | INTEGER | Course duration in hours | |
| level | VARCHAR | Course difficulty level (Beginner, Intermediate, Advanced) | |
| avg_rating | DECIMAL | Average rating given by students | |
| total_enrolled | INTEGER | Total students enrolled | |
| created_date | DATE | Course publication date | |
| status | VARCHAR | Course status (Active / Inactive) | |

---

# 3. Instructors

**Description**

Menyimpan informasi seluruh instructor yang mengajar pada platform.

| Column | Data Type | Description | Key |
|---------|-----------|-------------|-----|
| instructor_id | VARCHAR | Unique identifier for each instructor | Primary Key |
| name | VARCHAR | Instructor full name | |
| expertise | VARCHAR | Instructor specialization | |
| city | VARCHAR | Instructor domicile | |
| courses_count | INTEGER | Number of courses taught | |
| avg_rating | DECIMAL | Average instructor rating | |
| joined_date | DATE | Date instructor joined SkillAju | |

---

# 4. Enrollments

**Description**

Menyimpan data aktivitas pendaftaran siswa ke dalam course.

Tabel ini merupakan **fact table** karena menghubungkan student dengan course.

| Column | Data Type | Description | Key |
|---------|-----------|-------------|-----|
| enrollment_id | VARCHAR | Unique enrollment identifier | Primary Key |
| student_id | VARCHAR | Student who enrolled | Foreign Key → students.student_id |
| course_id | VARCHAR | Enrolled course | Foreign Key → courses.course_id |
| enrolled_date | DATE | Enrollment date | |
| completion_date | DATE | Date when course was completed (NULL if not completed) | |
| completion_pct | INTEGER | Percentage of course completed (0–100%) | |
| certificate_issued | BOOLEAN | Indicates whether certificate has been issued | |
| last_accessed | DATE | Last date student accessed the course | |

**Business Notes**

- `completion_date` boleh bernilai **NULL**, karena siswa yang belum menyelesaikan course memang belum memiliki tanggal penyelesaian.
- `certificate_issued` hanya bernilai **TRUE** apabila siswa memenuhi syarat kelulusan.

---

# 5. Quiz Results

**Description**

Menyimpan seluruh hasil pengerjaan quiz oleh siswa.

Satu enrollment dapat memiliki beberapa quiz dan beberapa attempt.

| Column | Data Type | Description | Key |
|---------|-----------|-------------|-----|
| quiz_id | VARCHAR | Unique quiz attempt identifier | Primary Key |
| enrollment_id | VARCHAR | Related enrollment | Foreign Key → enrollments.enrollment_id |
| student_id | VARCHAR | Student taking the quiz | Foreign Key → students.student_id |
| course_id | VARCHAR | Related course | Foreign Key → courses.course_id |
| quiz_number | INTEGER | Quiz sequence number within a course | |
| attempt_number | INTEGER | Attempt number for the quiz | |
| score | INTEGER | Quiz score (0–100) | |
| passed | BOOLEAN | Indicates whether the student passed the quiz | |
| attempt_date | DATE | Date of quiz attempt | |

**Business Notes**

- Satu siswa dapat mengerjakan quiz lebih dari satu kali.
- Nilai (`score`) digunakan untuk menentukan status `passed`.
- Tabel ini digunakan untuk menganalisis performa belajar siswa.

---

# Relationship Summary

| Parent Table | Child Table | Relationship |
|---------------|-------------|--------------|
| Students | Enrollments | One-to-Many |
| Courses | Enrollments | One-to-Many |
| Instructors | Courses | One-to-Many |
| Enrollments | Quiz Results | One-to-Many |
| Students | Quiz Results | One-to-Many |
| Courses | Quiz Results | One-to-Many |