# ch16 创建和更新数据

SELECT *
FROM Customers
WHERE cust_id = 1000000007;


# 更新一个列
UPDATE Customers
SET cust_email = 'xx@163.email.com'
WHERE cust_id = 1000000007;

# 更新多个列
UPDATE Customers
SET cust_email = 'test@test.com',
    cust_city = 'Beijing'
WHERE cust_id = 1000000007;

# 删除某个列的值，设置为空
UPDATE Customers
SET cust_email = NULL
WHERE cust_id = 1000000007;

# 从一个表中删除数据
DELETE FROM Customers
WHERE cust_id = 1000000007;