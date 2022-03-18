# Chapter2 Sorting Query Results

# 2.1 Returning Query Results in a Specified Order
# ORDER BY, ASC, DESC
# From -> WHERE ->  SELECT -> ORDER BY
select ENAME, JOB, SAL
from emp
order by SAL asc;

select ENAME, JOB, SAL
from emp
where DEPTNO = 10
order by SAL desc;

# 2.2 Sorting by Multiple Columns
select EMPNO, DEPTNO, SAL, ENAME, JOB
from emp
order by DEPTNO, SAL desc;

# 2.3 Sorting by Substrings
# substr pos form 0 to length
# DB2,MySQL,Oracle,and PostgreSQL: substr
# SQL Server: substring
select ENAME, JOB, SAL, substr(JOB, length(JOB) - 1) as JOB_SUFFIX
from emp
order by substr(JOB, length(JOB) - 1);

# 2.4 Sorting Mixed Alphanumeric Data
# In MySQL no translate function
create view V
as
select concat(ENAME, ' ', DEPTNO) as data
from emp;

select * from V;

# 2.5 Dealing with Nulls When Sorting
# MySQL: is_null as auxiliary column
# Oracle: NULLS FIRST, NULLS LAST

/* ascending */
select ENAME, SAL, COMM
from emp
order by 3;
/* descending */
select ENAME, SAL, COMM
from emp
order by 3 desc;

/* NON-NULL COMM SORTED ASCENDING, ALL NULLS LAST */
select *
from (
         select ENAME,
                SAL,
                COMM,
                case
                    when COMM is null then 1
                    else 0
                    end as is_null
         from emp
     ) as E
order by is_null, COMM;


/* NON-NULL COMM SORTED DESCENDING, ALL NULLS LAST */
select *
from (
         select ENAME,
                SAL,
                COMM,
                case
                    when COMM is null then 1
                    else 0
                    end as is_null
         from emp
         ) as  E
order by is_null, COMM desc;

/* NON-NULL COMM SORTED ASCENDING, ALL NULLS FIRST */
select *
from (
     select ENAME,
            SAL,
            COMM,
            case
                when COMM is null then 1
                else 0
                end as is_null
    from emp
         ) as E
order by is_null desc, COMM;

/* NON-NULL COMM SORTED DESCENDING, ALL NULLS FIRST */
select *
from (
     select ENAME,
            SAL,
            COMM,
            case
                when COMM is null then 1
                else 0
                end as is_null
    from emp
         ) as E
order by is_null desc , COMM desc;

# 2.6 Sorting on a Data-Dependent Key
select ENAME, SAL, JOB, COMM
from emp
order by case when JOB = 'SALESMAN' then COMM else SAL end;

select ENAME,
       SAL,
       JOB,
       COMM,
       case when JOB = 'SALESMAN' then COMM else SAL end as ordered
from emp
order by ordered asc;