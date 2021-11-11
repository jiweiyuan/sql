# ch8: 使用函数处理数据

# 文本处理函数
SELECT vend_name
FROM Vendors;

SELECT vend_name, UPPER(vend_name) AS vend_name_upcase
FROM Vendors
ORDER BY vend_name;

-- 常用的文本处理函数
-- LEFT()
-- RIGHT()
-- LOWER()
-- UPPER()
-- TRIM()
-- LTRIM()
-- RTRIM()
-- SUBSTR() or SUBSTRING()

# 日期处理函数
-- 日期处理函数在各个数据库差异较大

SELECT * FROM Orders;

SELECT * FROM Orders WHERE YEAR(order_date) = 2020;

# 数值处理函数
-- 在主要的 DBMS 中，数值函数最一致、最统一
-- ABS() 绝对值
-- SIN() 正弦
-- COS() 余弦
-- TAN() 正切
-- PI() 圆周率
-- SQRT() 平方根
-- EXP() 指数值


