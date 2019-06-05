USE company;

SELECT e.fname, e.minit, e.lname 
FROM EMPLOYEE e, WORKS_ON w, PROJECT p
WHERE e.dno = 5
	AND e.ssn = w.essn
    AND w.pno = p.pnumber
    AND p.pname = "ProductX"
    AND w.hours > 10.0;