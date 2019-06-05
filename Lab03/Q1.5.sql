USE company;

SELECT e.fname, e.minit, e.lname 
FROM EMPLOYEE e
WHERE e.ssn NOT IN (SELECT DISTINCT w.essn FROM WORKS_ON w);