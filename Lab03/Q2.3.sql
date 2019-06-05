USE mailorder;

SELECT c1.cno AS C1NO, c2.cno AS C2NO
FROM customers c1, customers c2, zipcodes z
WHERE c1.zip = z.zip
	AND c2.zip = z.zip
    AND c1.zip = c2.zip
    AND c1.cno <> c2.cno;