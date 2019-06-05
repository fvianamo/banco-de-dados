USE company;

SELECT e.fname, e.minit, e.lname, e.address 
FROM EMPLOYEE e, DEPARTMENT d
WHERE d.dnumber = e.dno 
	AND e.ssn IN ( SELECT DISTINCT w.essn FROM WORKS_ON w, PROJECT p WHERE w.pno = p.pnumber AND p.plocation LIKE '%Houston%' )
    AND d.dnumber NOT IN ( SELECT DISTINCT dl.dnumber FROM DEPT_LOCATIONS dl WHERE dl.dlocation LIKE '%Houston%' );