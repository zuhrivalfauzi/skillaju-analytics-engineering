# Business Understanding

## Project Overview

SkillAju is an online learning platform that provides various courses across multiple categories. Students can enroll in courses, complete learning materials, take quizzes, and earn certificates upon successful completion.

As the platform grows, stakeholders require reliable analytics to monitor student engagement, course performance, instructor effectiveness, and overall business growth.

This project aims to build an Analytics Engineering pipeline by transforming raw operational data into a structured Data Warehouse using Star Schema. The resulting data model supports business reporting and dashboard development.

---

# Business Problems

The current operational database is designed for transactional processes (OLTP), making analytical reporting difficult because it requires multiple table joins and complex SQL queries.

Business stakeholders need a centralized analytical data model to answer important business questions efficiently.

---

# Business Objectives

The project aims to:

- Build a Data Warehouse using Star Schema.
- Create an ETL pipeline to transform raw data into analytical tables.
- Support interactive dashboards for business monitoring.
- Improve query performance for reporting and analytics.

---

# Key Business Questions

The Data Warehouse should answer questions such as:

### Student Analytics

- How many students register each month?
- What are the most common acquisition sources?
- What percentage of students use Free vs Pro plans?

---

### Course Analytics

- Which courses have the highest enrollments?
- Which categories are the most popular?
- Which courses have the highest completion rate?

---

### Instructor Analytics

- Which instructors teach the most students?
- Which instructors have the highest average course rating?

---

### Learning Analytics

- What is the average completion percentage?
- How many certificates are issued?
- How many quiz attempts are made?
- What is the average quiz score?

---

### Business Growth

- Monthly student growth
- Monthly enrollments
- Monthly certificates issued
- Student retention trend

---

# Project Scope

This project covers:

- Data profiling
- Data quality assessment
- Data Warehouse design
- Star Schema implementation
- ETL pipeline using Python
- PostgreSQL Data Warehouse
- SQL transformations
- Power BI dashboard

---

# Expected Deliverables

- Business Understanding documentation
- Data Dictionary
- Entity Relationship Diagram (ERD)
- Star Schema
- PostgreSQL Data Warehouse
- ETL Pipeline
- Analytical Data Mart
- Interactive Dashboard
- Business Insights