# 过滤数据
-- 注意：SQL 过滤， 优于应用过滤

SELECT prod_name, prod_price, vend_id
FROM Products;


# 使用 WHERE 子句过滤数据
SELECT prod_name, prod_price
FROM Products
WHERE prod_price = 3.49;

# WHERE 子句操作符号
-- =      等于
-- != <> 不等于
-- <     小于
-- <=    小于等于
-- >     大于
-- >=    大于等于
-- BETWEEN 在指定的两个值中间
-- IS NULL 为NULL值

# WHERE —— 检查单个值
SELECT prod_name, prod_price
FROM Products
WHERE prod_price < 10;

# WHERE —— 不匹配检查
SELECT prod_name, prod_price, vend_id
FROM Products
WHERE vend_id !=  'DLL01';

SELECT prod_name, vend_id
FROM Products
WHERE vend_id <> 'DLL01';

# WHERE —— 范围值检查
SELECT prod_name, prod_price
FROM Products
WHERE prod_price BETWEEN 5 AND 10;

# WHERE —— 空值检查
SELECT cust_name, cust_email
FROM Customers;

SELECT cust_name, cust_email
FROM Customers
WHERE cust_email IS NULL;