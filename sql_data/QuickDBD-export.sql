-- Exported from QuickDBD: https://www.quickdatabasediagrams.com/
-- NOTE! If you have used non-SQL datatypes in your design, you will have to change these here.


CREATE TABLE "employee_final" (
    "Employee_No" INT   NOT NULL,
    "Position" VARCHAR   NOT NULL,
    "Department" VARCHAR   NOT NULL,
    "PayRate" MONEY   NOT NULL,
    "FLSAStatus" VARCHAR   NOT NULL,
    "HireDate" DATE   NOT NULL,
    "TermDate" DATE   NOT NULL,
    "TermReason" VARCHAR   NOT NULL,
    "EmployStatus" VARCHAR   NOT NULL,
    "ManagerName" VARCHAR   NOT NULL,
    "Performance_Score" VARCHAR   NOT NULL,
    "DaysEmployed" INT   NOT NULL,
    "PositionID" INT   NOT NULL,
    "EngagementSurvey" INT   NOT NULL,
    "EmpSatisfaction" INT   NOT NULL,
    "Source" VARCHAR   NOT NULL,
    "Post_Education" VARCHAR   NOT NULL,
    "School" VARCHAR   NOT NULL,
    "CitizenDesc" VARCHAR   NOT NULL,
    "Hispanic/Latino" VARCHAR   NOT NULL,
    "Race/Desc" VARCHAR   NOT NULL,
    "State" VARCHAR   NOT NULL,
    "ZIP" INT   NOT NULL,
    "DOB" DATE   NOT NULL,
    "Age" INT   NOT NULL,
    "Sex" VARCHAR   NOT NULL,
    "MaritalDesc" VARCHAR   NOT NULL
);

CREATE TABLE "recruiting_costs" (
    "Source" VARCHAR   NOT NULL,
    "January" MONEY   NOT NULL,
    "February" MONEY   NOT NULL,
    "March" MONEY   NOT NULL,
    "April" MONEY  NOT NULL,
    "May" MONEY   NOT NULL,
    "June" MONEY   NOT NULL,
    "July" MONEY   NOT NULL,
    "August" MONEY   NOT NULL,
    "September" MONEY   NOT NULL,
    "October" MONEY   NOT NULL,
    "November" MONEY   NOT NULL,
    "December" MONEY   NOT NULL,
    "Total" MONEY   NOT NULL
);

CREATE TABLE "salary_grid" (
    "Position" VARCHAR   NOT NULL,
    "FLSAStatus" VARCHAR   NOT NULL,
    "Department" VARCHAR   NOT NULL,
    "HourlyMin" MONEY   NOT NULL,
    "HourlyMid" MONEY   NOT NULL,
    "HourlyMax" MONEY   NOT NULL,
    "SalaryMin" MONEY   NOT NULL,
    "SalaryMid" MONEY   NOT NULL,
    "SalaryMax" MONEY   NOT NULL
);

ALTER TABLE "employee_final" ADD CONSTRAINT "fk_employee_final_Position_Department_FLSAStatus" FOREIGN KEY("Position", "Department", "FLSAStatus")
REFERENCES "salary_grid" ("Position", "Department", "FLSAStatus");

ALTER TABLE "employee_final" ADD CONSTRAINT "fk_employee_final_Source" FOREIGN KEY("Source")
REFERENCES "recruiting_costs" ("Source");

