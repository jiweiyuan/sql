# ch7: 创建计算字段

SELECT vend_id, vend_name, vend_country
FROM Vendors;

# 拼接字段
SELECT Concat(vend_name, ' (', vend_country, ')')
From Vendors
ORDER BY vend_name;

SELECT Concat(LTRIM(vend_name), ' (', LTRIM(vend_country), ')') AS vend_title
FROM Vendors
ORDER BY vend_name;

# 执行算术运算
SELECT *
FROM OrderItems;

SELECT prod_id, quantity, item_price
FROM OrderItems
WHERE order_num = 20008;

SELECT prod_id,
       quantity,
       item_price,
       quantity * item_price AS expanded_price
FROM OrderItems
WHERE order_num = 20008;

# SQL 算术运算符
# + - * / 加减乘除