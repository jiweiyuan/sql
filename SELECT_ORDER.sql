# 排序检索数据

# 排序数据
-- 注意1：ORDER BY 是最后的子句（clause)
-- 注意2：ORDER BY 可以用非选择的列进行排序
SELECT prod_name
FROM Products
ORDER BY prod_name;

# 按照多个列排序
SELECT prod_id, prod_price, prod_name
FROM Products
ORDER BY prod_price, prod_name;

# 按照列顺序排序
SELECT prod_id, prod_price, prod_name
FROM Products
ORDER BY 2, 3;


# 指定排序方向
-- DESC DESCENDING 降序
-- ASC ASCENDING 升序（默认）
SELECT prod_id, prod_price, prod_name
FROM Products
ORDER BY prod_price DESC, prod_name;

SELECT prod_id, prod_price, prod_name
FROM Products
ORDER BY prod_price DESC, prod_name DESC;