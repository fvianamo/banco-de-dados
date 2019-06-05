USE mailorder;

SELECT p.pname
FROM parts p
WHERE p.price < 20;