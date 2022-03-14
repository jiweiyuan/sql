# Chapter 0: Create table
# https://github.com/shahbaz-ali/SQL-Cook-Book-Sample-Data/blob/master/sql_cookbook/mysqlinserts.txt

# Chapter 1: Retrieving Records

# 1.1 Retrieving All Rows and Columns from a Table
# *: return every column for the table
select * from EMP;

# 1.2 Retrieving a subset of rows from a Table
# common operators: =, <, >, <=, >=, !, <>
select *
from EMP
where DEPTNO = 10;

# 1.3 Finding Rows That Satisfy Multiple Conditions
# datagrip: Ctrl + Alt + L
select *
from EMP
where DEPTNO = 10
   or COMM is not null
   or (SAL <= 2000 and DEPTNO = 20);

# 1.4 Retrieving a Subset of Columns from a Table
select ENAME, DEPTNO, SAL
from EMP;

# 1.5 Providing Meaningful Names for Columns
select SAL as salary, COMM as commission
from EMP;

# 1.6 Referencing an aliased Column in the WHERE Clause