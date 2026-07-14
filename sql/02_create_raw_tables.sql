/* ===========================================================
   RAW LAYER TABLES
   Project : SkillAju Analytics Engineering
=========================================================== */

------------------------------------------------------------
-- STUDENTS
------------------------------------------------------------

CREATE TABLE raw.students (

    student_id VARCHAR(20) PRIMARY KEY,

    name VARCHAR(100),

    email VARCHAR(100),

    age INTEGER,

    city VARCHAR(100),

    registration_date DATE,

    acquisition_source VARCHAR(50),

    plan_type VARCHAR(20)

);

------------------------------------------------------------
-- COURSES
------------------------------------------------------------

CREATE TABLE raw.courses (

    course_id VARCHAR(20) PRIMARY KEY,

    title VARCHAR(255),

    category VARCHAR(100),

    instructor_id VARCHAR(20),

    price_idr INTEGER,

    duration_hours INTEGER,

    level VARCHAR(20),

    avg_rating NUMERIC(3,2),

    total_enrolled INTEGER,

    created_date DATE,

    status VARCHAR(20)

);

------------------------------------------------------------
-- INSTRUCTORS
------------------------------------------------------------

CREATE TABLE raw.instructors (

    instructor_id VARCHAR(20) PRIMARY KEY,

    name VARCHAR(100),

    expertise VARCHAR(100),

    city VARCHAR(100),

    courses_count INTEGER,

    avg_rating NUMERIC(3,2),

    joined_date DATE

);

------------------------------------------------------------
-- ENROLLMENTS
------------------------------------------------------------

CREATE TABLE raw.enrollments (

    enrollment_id VARCHAR(20) PRIMARY KEY,

    student_id VARCHAR(20),

    course_id VARCHAR(20),

    enrolled_date DATE,

    completion_date DATE,

    completion_pct INTEGER,

    certificate_issued BOOLEAN,

    last_accessed DATE

);

------------------------------------------------------------
-- QUIZ RESULTS
------------------------------------------------------------

CREATE TABLE raw.quiz_results (

    quiz_id VARCHAR(20) PRIMARY KEY,

    enrollment_id VARCHAR(20),

    student_id VARCHAR(20),

    course_id VARCHAR(20),

    quiz_number INTEGER,

    attempt_number INTEGER,

    score INTEGER,

    passed BOOLEAN,

    attempt_date DATE

);