SELECT employee_final.employee_no
, employee_final.position
, employee_final.department
, employee_final.status
, employee_final.manager_name
, employee_final.performance
, employee_final.engagement_score
, employee_final.emp_satisfaction
, employee_final.source
, employee_final.post_education
, employee_final.race_desc
, employee_final.sex
, recruiting_costs.total
FROM employee_final
LEFT JOIN recruiting_costs
ON recruiting_costs.source = employee_final.source
WHERE employee_final.status ='Active'
ORDER BY position DESC, department; 