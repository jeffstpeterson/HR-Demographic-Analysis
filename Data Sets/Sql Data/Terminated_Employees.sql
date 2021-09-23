SELECT employee_final.employee_no
, employee_final.position
, employee_final.department
, employee_final.status
, employee_final.flsa_status
, employee_final.manager_name
, employee_final.performance
, employee_final.engagement_score
, employee_final.emp_satisfaction
, employee_final.source
, employee_final.post_education
, employee_final.race_desc
, employee_final.sex
, employee_final.term_reason
, employee_final.term_date
, employee_final.days_employed
FROM employee_final
WHERE employee_final.status = 'Voluntarily Terminated' OR employee_final.status ='Terminated for Cause'
ORDER BY status DESC, position, manager_name; 
