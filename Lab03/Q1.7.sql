USE company;

SELECT e.fname, e.minit, e.lname
FROM EMPLOYEE e
WHERE e.ssn IN (SELECT DISTINCT d.mgr_ssn FROM DEPARTMENT d WHERE d.mgr_ssn NOT IN (SELECT DISTINCT de.essn FROM DEPENDENT de));