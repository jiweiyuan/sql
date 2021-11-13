# ch12 联结表

# 创建连接
SELECT vend_name, prod_name, prod_price
FROM Vendors, Products
WHERE Vendors.vend_id = Products.vend_id;

# 内连接
SELECT vend_name, prod_name, prod_price
FROM Vendors
INNER JOIN Products on Vendors.vend_id = Products.vend_id

# 连接多个表
-- 显示订单 20007 中的物品
SELECT prod_name, vend_name, prod_price, quantity
FROM OrderItems, Products, Vendors
WHERE Vendors.vend_id = Products.vend_id &&
      OrderItems.prod_id = Products.prod_id &&
      order_num = 200007