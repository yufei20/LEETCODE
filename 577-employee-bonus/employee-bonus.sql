# Write your MySQL query statement below
SELECT e.name,b.Bonus
FROM employee as e
left join bonus as b on (e.empid = b.empid)
Where b.bonus <1000 OR b.bonus IS NULL;
