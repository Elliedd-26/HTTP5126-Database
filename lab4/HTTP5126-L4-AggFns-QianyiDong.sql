-- LAB 4 AGGREGATE FUNCTIONS
-- Put your answers on the lines after each letter. E.g. your query for question 1A should go on line 6; your query for question 1B should go on line 8...

--  1 
-- A
SELECT min(price) from stock_item
-- B
SELECT max(inventory) from stock_item
-- C
SELECT avg(price) from stock_item
-- D
SELECT sum(inventory) from stock_item

--  2
-- A
SELECT COUNT(employee_id),role FROM employee
GROUP by role;
-- B
SELECT category AS Mammals, COUNT(inventory)
FROM stock_item
WHERE category != 'Piscine'
Group BY category;
-- C
SELECT item, AVG(price)
FROM stock_item
Group BY category;

--  3
-- A
SELECT category AS 'Species', SUM(inventory)AS 'IN STOCK'
FROM stock_item
Group BY category 
ORDER BY inventory ASC;
-- B
SELECT category , SUM(inventory),AVG(price)
FROM stock_item
Group BY category 
HAVING SUM(inventory) < 100 and AVG(price) < 100;

--  4
-- A
SELECT item AS Product, price, inventory AS 'Stock Remaining', category AS 'Species', price * inventory AS 'Potential Earnings'
FROM stock_item
ORDER BY 'Potential Earnings' DESC