# ch9 汇总数据

SELECT prod_price
FROM Products;

SELECT *
FROM Customers;

# 9.1 聚集函数
-- AVG() 返回某列的平均值
-- COUNT()  返回某列的行数
-- MAX()  返回某列的最大值
-- MIN()  返回某列的最小值
-- SUM()  返回某列的值的和

# AVG() 函数
-- AVG 只能确定列的平均值，并且忽略 NULL
SELECT AVG(prod_price) AS avg_price
FROM Products;

# COUNT() 函数
-- COUNT(*) 对表中行中的数目进行计数
-- COUNT(column) 对特定列中具有值的数目进行计数， 忽略空值
SELECT COUNT(*) AS num_cust
FROM Customers;

SELECT COUNT(cust_email) AS num_cust
FROM Customers;

# MAX() 函数
SELECT prod_price
FROM Products;

SELECT MAX(prod_price) AS max_price
FROM Products;

# MIN() 函数
SELECT MIN(prod_price)
FROM Products;

# SUM() 函数
SELECT *
FROM OrderItems;

SELECT SUM(quantity) AS sum_quantity_20005
FROM OrderItems
WHERE order_num = 20005;

SELECT SUM(item_price * quantity) AS total_price
FROM OrderItems
WHERE order_num = 20005;

# 9.2 聚集不同值
SELECT AVG(DISTINCT prod_price) AS avg_price
FROM Products
WHERE vend_id = 'DLL01';

# 9.3 组合聚集函数
SELECT COUNT(*) AS num_items,
       MIN(prod_price) AS price_min,
       MAX(prod_price) AS price_max,
       AVG(prod_price) AS price_avg
FROM Products;
