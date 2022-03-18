# Chapter 3

select * from emp limit 1;

select * from dept limit 1;

# 3.1 Stacking One Row-set atop Another
# UNION ALL
# UNION: no duplicate rows
select ENAME, DEPTNO
from emp
where DEPTNO = 10
union all
select '-------------', null
from T1
union all
select DNAME, DEPTNO
from dept;


# 3.2 Combining Related Rows
# Cartesian Product
# join
select emp.empno, dept.loc
from emp, dept
where emp.deptno = dept.deptno
and emp.deptno = 10;


select emp.empno, dept.loc
from emp
         inner join dept on (
    emp.deptno = dept.deptno
    )
where emp.deptno = 10;

# 3.3 Finding 