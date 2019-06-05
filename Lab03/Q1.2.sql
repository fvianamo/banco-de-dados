USE company;

SELECT e.fname, e.minit, e.lname
FROM EMPLOYEE e, DEPENDENT d
WHERE e.ssn = d.essn
	AND e.fname = d.dependent_name;