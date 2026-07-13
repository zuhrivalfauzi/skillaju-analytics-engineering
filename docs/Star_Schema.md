# Star Schema

```mermaid
flowchart LR

    DS[dim_student]
    DC[dim_course]
    DI[dim_instructor]
    DD[dim_date]

    FE[fact_enrollment]
    FQ[fact_quiz_result]

    DS --> FE
    DC --> FE
    DI --> FE
    DD --> FE

    DS --> FQ
    DC --> FQ
    DD --> FQ
```