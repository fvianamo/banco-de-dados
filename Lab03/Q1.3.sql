USE company;

SELECT e.fname,e.minit , e.lname
FROM EMPLOYEE e, EMPLOYEE s
WHERE e.super_ssn = s.ssn
	AND s.fname = "Franklin"
    AND s.lname = "Wong";