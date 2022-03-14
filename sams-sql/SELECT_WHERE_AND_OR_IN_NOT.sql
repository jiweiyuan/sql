# AND 操作符
SELECT prod_name, prod_price, vend_id
FROM Products;

SELECT prod_name, prod_price, vend_id
FROM Products
WHERE vend_id = 'BRS01' AND prod_price < 10;

# OR 操作符
SELECT prod_id, prod_name, vend_id
FROM Products
WHERE vend_id = 'DLL01' OR vend_id = 'BRS01';

# (ADN OR) 组合,能够消除歧义
SELECT prod_name, prod_price, vend_id
FROM Products
WHERE (vend_id = 'DLL01' OR vend_id = 'BRS01') AND prod_price >= 10

# IN 操作符
# 优点：
#   1. 有很多选项时，IN 更方便直观
#   2. IN 操作符一般比一组 OR 操作符执行的更快
#   3. 可以包含其他 SELECT 语句
SELECT prod_name, prod_price, vend_id
FROM Products
WHERE vend_id IN ('DLL01', 'FNG01');

# NOT 操作符
