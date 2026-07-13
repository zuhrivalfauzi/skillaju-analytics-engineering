# Star Schema

## Overview

The SkillAju Data Warehouse is designed using a Star Schema to support analytical workloads. Compared to the operational database (OLTP), the Star Schema simplifies analytical queries by placing business events in fact tables and descriptive information in dimension tables.

---

## Fact Tables

### fact_enrollment

**Grain**

One row represents one student enrollment in one course.

**Measures**

- completion_pct
- certificate_issued

**Foreign Keys**

- student_key
- course_key
- instructor_key
- enrollment_date_key
- completion_date_key

---

### fact_quiz_result

**Grain**

One row represents one quiz attempt by one student.

**Measures**

- score
- passed
- attempt_number

**Foreign Keys**

- enrollment_key
- student_key
- course_key
- attempt_date_key

---

## Dimension Tables

### dim_student

Stores descriptive information about students.

### dim_course

Stores descriptive information about courses.

### dim_instructor

Stores instructor information.

### dim_date

Stores calendar attributes to simplify time-based analysis.

---

## Business Benefits

The Star Schema enables:

- Faster analytical queries
- Simplified SQL joins
- Better dashboard performance
- Easier reporting by time, course, instructor, and student
- Scalability for future business growth