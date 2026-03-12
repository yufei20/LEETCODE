# Write your MySQL query statement below
SELECT P.Product_name, S.year, S.price 
FROM Sales AS S
LEFT JOIN Product AS P ON S.Product_id =P.Product_id ;