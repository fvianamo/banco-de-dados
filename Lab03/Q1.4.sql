USE company;

SELECT DISTINCT e.fname, e.minit, e.lname
FROM EMPLOYEE e, WORKS_ON w
WHERE e.ssn = w.essn
	AND (SELECT COUNT(*) FROM WORKS_ON iw WHERE e.ssn = iw.essn) = (SELECT COUNT(*) FROM PROJECT p);