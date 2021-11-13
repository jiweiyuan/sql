# ch17 创建和操纵表

# 创建表
CREATE TABLE NewProducts
(
    prod_id  CHAR(10)  NOT NULL,
    vend_id  CHAR(10) NOT NULL,
    prod_name CHAR(10) NOT NULL,
    prod_price CHAR(10) NOT NULL,
    prod_desc VARCHAR(1000) NULL
);

# 删除表
DROP TABLE NewProducts;

