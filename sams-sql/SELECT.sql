# 检索 SELECT

# 检索单个列
SELECT prod_name
FROM Products;

# 检索多个列
SELECT prod_id, prod_name, prod_price
FROM Products;

# 检索所有列
SELECT *
FROM Products;

# 检索不同的值
SELECT DISTINCT vend_id
FROM Products;

# 限制结果
SELECT prod_name
FROM Products
LIMIT 5;

SELECT prod_name
FROM Products
LIMIT 5 OFFSET 5;
