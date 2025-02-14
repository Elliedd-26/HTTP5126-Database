--  LAB 5 MULTIPLE TABLES

--  Put your answers on the lines after each letter. E.g. your query for question 1A should go on line 5; your query for question 1B should go on line 7...
--  1 
-- A 
SELECT * FROM sale WHERE stock_item_id = "1014"
-- B 
SELECT stock_item.stock_item_id, sale.date
FROM stock_item INNER JOIN sale
ON stock_item.stock_item_id = sale.stock_item_id
WHERE stock_item.stock_item_id = 1014;

--  2
-- A 
SELECT * FROM sale 
WHERE employee_id = "111";
-- B
SELECT sale.date, employee.first_name, employee.last_name, sale.stock_item_id FROM sale
INNER JOIN employee
ON sale.employee_id = employee.employee_id
WHERE employee.employee_id = "111";


--  3
-- A
SELECT sale.date, stock_item.name
FROM sale
INNER JOIN stock_item
WHERE sale.stock_item_id = stock_item.stock_item_id
ORDER BY sale.date DESC 
LIMIT 5;
-- B
SELECT sale.date, stock_item.name, employee.last_name, employee.first_name
FROM sale
INNER JOIN stock_item
ON sale.stock_item_id = stock_item.stock_item_id
INNER JOIN employee
ON sale.employee_id = employee. employee_id
ORDER BY sale.date DESC 
LIMIT 5;


--  4
-- A
SELECT s.date, si.name, em.first_name
FROM sale s
INNER JOIN stock_item si
ON s.stock_item_id = si.stock_item_id
INNER JOIN employee em
ON s.employee_id = em. employee_id
WHERE s.date BETWEEN '2025-01-12' AND '2025-01-18';
-- B
SELECT COUNT(s.sale_id) AS total_sale, 
CONCAT(em.first_name, ' ', em.last_name) AS full_name
FROM sale s
INNER JOIN employee em 
ON s.employee_id = em.employee_id
GROUP BY em.first_name, em.last_name;

--  5
-- A
SELECT COUNT(s.sale_id) AS total_sale, 
       CONCAT(em.first_name, ' ', em.last_name) AS full_name
FROM sale s
INNER JOIN employee em 
ON s.employee_id = em.employee_id
GROUP BY em.first_name, em.last_name;
-- B
SELECT s.date, em.first_name, si.name, si.price, si.category
FROM sale s
JOIN employee em 
ON s.employee_id = em.employee_id
JOIN stock_item si 
ON s.stock_item_id = si.stock_item_id
WHERE s.employee_id = (
    SELECT employee_id 
    FROM sale 
    GROUP BY employee_id 
    ORDER BY COUNT(sale_id) DESC 
    LIMIT 1);

--  6
-- A 
-- What is the top saling item? NEED the name, price, and category of that item and intotal how many being sold.
-- B
SELECT si.name, si.price, si.category, COUNT(s.sale_id) AS total_sold
FROM sale s
JOIN stock_item si ON s.stock_item_id = si.stock_item_id
GROUP BY si.stock_item_id
ORDER BY total_sold DESC
LIMIT 1;