-- Exported from QuickDBD: https://www.quickdatabasediagrams.com/
-- NOTE! If you have used non-SQL datatypes in your design, you will have to change these here.


CREATE TABLE "employee_final" (
    "employee_no" INT   NOT NULL,
    "position" VARCHAR   NOT NULL,
    "department" VARCHAR   NOT NULL,
    "pay_rate" MONEY   NOT NULL,
    "flsa_status" VARCHAR   NOT NULL,
    "hire_date" DATE   NOT NULL,
    "term_date" DATE   NOT NULL,
    "term_reason" VARCHAR   NOT NULL,
    "status" VARCHAR   NOT NULL,
    "manager_name" VARCHAR   NOT NULL,
    "performance" VARCHAR   NOT NULL,
    "days_employed" INT   NOT NULL,
    "position_id" INT   NOT NULL,
    "engagement_score" FLOAT   NOT NULL,
    "emp_satisfaction" INT   NOT NULL,
    "source" VARCHAR   NOT NULL,
    "post_education" VARCHAR   NOT NULL,
    "school" VARCHAR   NOT NULL,
    "citizen_desc" VARCHAR   NOT NULL,
    "race_desc" VARCHAR   NOT NULL,
    "hispanic/latino" VARCHAR   NOT NULL,
    "state" VARCHAR   NOT NULL,
    "zip" INT   NOT NULL,
    "date_of_birth" DATE   NOT NULL,
    "age" INT   NOT NULL,
    "sex" VARCHAR   NOT NULL,
    "marital_desc" VARCHAR   NOT NULL
);

CREATE TABLE "recruiting_costs" (
    "source" VARCHAR   NOT NULL,
    "january" MONEY   NOT NULL,
    "february" MONEY   NOT NULL,
    "march" MONEY   NOT NULL,
    "april" MONEY   NOT NULL,
    "may" MONEY   NOT NULL,
    "june" MONEY   NOT NULL,
    "july" MONEY   NOT NULL,
    "august" MONEY   NOT NULL,
    "september" MONEY   NOT NULL,
    "october" MONEY   NOT NULL,
    "november" MONEY   NOT NULL,
    "december" MONEY   NOT NULL,
    "total" MONEY   NOT NULL
);

CREATE TABLE "salary_grid" (
    "position" VARCHAR   NOT NULL,
    "flsa_status" VARCHAR   NOT NULL,
    "department" VARCHAR   NOT NULL,
    "salary_min" MONEY   NOT NULL,
    "salary_mid" MONEY   NOT NULL,
    "salary_max" MONEY   NOT NULL
);

CREATE TABLE "hourly_grid" (
    "position" VARCHAR   NOT NULL,
    "flsa_status" VARCHAR   NOT NULL,
    "department" VARCHAR   NOT NULL,
    "hourly_min" MONEY   NOT NULL,
    "hourly_mid" MONEY   NOT NULL,
    "hourly_max" MONEY   NOT NULL
);

ALTER TABLE "employee_final" ADD CONSTRAINT "fk_employee_final_source" FOREIGN KEY("source")
REFERENCES "recruiting_costs" ("source");

ALTER TABLE "salary_grid" ADD CONSTRAINT "fk_salary_grid_position_flsa_status_department" FOREIGN KEY("position", "flsa_status", "department")
REFERENCES "employee_final" ("position", "flsa_status", "department");

ALTER TABLE "hourly_grid" ADD CONSTRAINT "fk_hourly_grid_position_flsa_status_department" FOREIGN KEY("position", "flsa_status", "department")
REFERENCES "employee_final" ("position", "flsa_status", "department");

