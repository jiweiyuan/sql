# ch11: 使用子查询

SELECT order_num
FROM OrderItems
WHERE prod_id = 'RGAN01';

SELECT cust_id
FROM Orders
WHERE order_num IN (20007, 20008);


-- 列出订购物品 RGAN01 的所有顾客的id
-- 在 SQL 语句中，子查询总是从内向外处理

SELECT cust_id
FROM Orders
WHERE order_num IN (SELECT order_num
    FROM OrderItems
    WHERE prod_id = 'RGAN01');

-- 继续检索， 订购商品 RGAN01 的所有顾客的信息
SELECT cust_name, cust_contact
FROM Customers
WHERE cust_id In (SELECT cust_id
    FROM Orders
    WHERE order_num IN (SELECT order_num
        FROM OrderItems
        WHERE prod_id = 'RGAN01'));


# 作为计算字段使用子查询

-- 显示 Customers 表中每个顾客的订单总数

SELECT cust_name,
       cust_email,
       (SELECT COUNT(*)
        FROM Orders
        WHERE Orders.cust_id = Customers.cust_id) AS num_orders
FROM Customers
ORDER BY cust_name;