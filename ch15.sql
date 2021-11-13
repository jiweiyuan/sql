# ch15 插入数据

SELECT *
FROM Customers;

INSERT INTO Customers
VALUES(1000000006,
       'Toy Land',
       '123 Any Street',
       'Beijing',
       'BJ',
       11111,
       'China',
       NULL,
       NULL)

# 插入部分行
INSERT INTO Customers(cust_id,
                      cust_name)
VALUES(1000000007,
       'Yuan')
