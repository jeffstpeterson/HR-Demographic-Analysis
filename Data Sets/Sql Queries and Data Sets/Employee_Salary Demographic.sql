SELECT employee_final.employee_no
, employee_final.position
, employee_final.department
, employee_final.status 
, employee_final.flsa_status 
, employee_final.post_education
, employee_final.school
, employee_final.race_desc
, employee_final.state
, employee_final.zip
, employee_final.age
, employee_final.sex
FROM employee_final
WHERE employee_final.flsa_status = 'Exempt'
ORDER BY position DESC, status;