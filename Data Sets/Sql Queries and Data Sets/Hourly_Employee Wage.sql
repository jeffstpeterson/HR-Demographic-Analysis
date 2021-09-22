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
, hourly_grid.hourly_min
, hourly_grid.hourly_mid
, hourly_grid.hourly_max
FROM employee_final
JOIN hourly_grid
ON hourly_grid.position = employee_final.position
WHERE employee_final.flsa_status = 'Non Exempt'
ORDER BY position DESC, status; 
