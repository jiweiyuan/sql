# Chapter 0: Create table
# https://github.com/shahbaz-ali/SQL-Cook-Book-Sample-Data/blob/master/sql_cookbook/mysqlinserts.txt

# Chapter 1: Retrieving Records

# 1.1 Retrieving All Rows and Columns from a Table
# *: return every column for the table
select *
from emp;

# 1.2 Retrieving a subset of rows from a Table
# common operators: =, <, >, <=, >=, !, <>
select *
from emp
where DEPTNO = 10;

# 1.3 Finding Rows That Satisfy Multiple Conditions
# datagrip: Ctrl + Alt + L
select *
from emp
where DEPTNO = 10
   or COMM is not null
   or (SAL <= 2000 and DEPTNO = 20);

# 1.4 Retrieving a Subset of Columns from a Table
select ENAME, DEPTNO, SAL
from emp;

# 1.5 Providing Meaningful Names for Columns
select SAL as salary, COMM as commission
from emp;

# 1.6 Referencing an aliased Column in the WHERE Clause
# FROM -> WHERE -> SELECT
select *
from (
         select SAL as salary, COMM as comission
         from emp) x
where salary < 5000;

# 1.7 Concatenating Column Values
# ||: DB2, Oracle, PostgreSQL
# + : SQL Server
# concat: MySQL
select concat(ENAME, ' WORKS AS A', job) as msg
from emp
where DEPTNO = 10;

# 1.8 Using Conditional Logical in a SELECT Statement
# CASE
select ENAME,
       SAL,
       case
           when SAL <= 2000 then 'UNDERPAID'
           when SAL >= 4000 then 'OVERPAID'
           else 'OK'
           end as status
from emp;

# 1.9 Limiting the Number of Rows Returned
# DB2: FETCH FIRST
# MySQL and PostgreSQL: LIMIT
# Oracle: ROWNUM and WHERE
# SQL Server: TOP
select *
from emp
limit 5;

# 1.10 Returning n Random Records from a Table
# DB: rand()
# MYSQL: rand()
# PostgreSQL: random()
# Oracle: dbms_random.value()
# SQL Server: newid()
select *
from emp
order by rand()
limit 5;

# 1.11 Finding Null Values
# is null, is not null
select *
from emp
where COMM is null;


# 1.12 Transforming Nulls into Real Values
select coalesce(COMM, 0),
       coalesce(MGR, 7000)
from emp;

# 1.13 Searching for Patterns
# %: matches any sequence of characters
# _: matches any single character
select ENAME, JOB
from emp
where DEPTNO in (10, 20)
and (ename like '%I%' or JOB like '%ER');
