SELECT employee_final.employee_no
, employee_final.position
, employee_final.department
, employee_final.pay_rate
, employee_final.status 
, employee_final.flsa_status 
, employee_final.post_education
, employee_final.school
, employee_final.race_desc
, employee_final.age
, employee_final.sex
, salary_grid.salary_min
, salary_grid.salary_mid
, salary_grid.salary_max
FROM employee_final
JOIN salary_grid
ON salary_grid.position = employee_final.position
WHERE employee_final.flsa_status = 'Exempt'
ORDER BY position DESC, status; 