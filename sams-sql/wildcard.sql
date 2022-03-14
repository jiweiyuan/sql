# 使用通配符进行过滤

SELECT prod_id, prod_name
FROM Products;

# LIKE 操作符
#  % 通配符
SELECT prod_id, prod_name
FROM Products
WHERE prod_name LIKE '%bean bag%';

#  _ 通配符
SELECT prod_id, prod_name
FROM Products
WHERE prod_name LIKE '__ inch teddy bear';

# Tips
#  1. 不要过度使用通配符
#  2. 使用通配符尽量不要放到搜索模式的开始处

