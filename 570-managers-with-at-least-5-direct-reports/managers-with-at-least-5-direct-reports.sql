SELECT m.name
FROM Employee AS e
-- 1. Self Join: Ek hi table ko do baar use kar rahe hain.
-- 'e' ko humne maana Reports (Employees) aur 'm' ko maana Managers.
JOIN Employee AS m 
  ON e.managerId = m.id 

-- 2. Grouping: Saare employees ko unke manager ke ID ke hisaab se bucket mein daal do.
-- Taki hum gcount kar sakein ki har manager ke neeche kitne log hain.
GROUP BY m.id, m.name 

-- 3. Filter: Sirf wo buckets rakho jisme 5 ya usse zyada (>= 5) rows hain.
HAVING COUNT(*) >= 5;