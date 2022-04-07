-- -----------------------------
-- Chapter 3 Introduction to SQL
-- -----------------------------
/**
3.1
a. Find the titles of courses in the Comp. Sci. department that have 3 credits.
b. Find the IDs of all students who were taught by an instructor named Ein- stein; make sure there are no duplicates in the result.
c. Find the highest salary of any instructor.
d. Find all instructors earning the highest salary (there may be more than one with the same salary).
e. Find the enrollment of each section that was offered in Fall 2017.
f. Find the maximum enrollment, across all sections, in Fall 2017.
g. Find the sections that had the maximum enrollment in Fall 2017.
*/

-- 3.1.a
SELECT title
FROM course
WHERE dept_name = 'Comp. Sci.'
  AND credits = 3;

-- 3.1.b
SELECT takes.id
FROM takes,
     teaches,
     instructor
WHERE takes.course_id = teaches.course_id
  AND takes.sec_id = teaches.sec_id
  AND takes.semester = teaches.semester
  AND takes.year = teaches.year
  AND teaches.id = instructor.id
  AND instructor.name = 'Einstein';

-- 3.1.c
SELECT max(salary)
FROM instructor;

-- 3.1.d
SELECT *
FROM instructor
WHERE salary = (
    SELECT max(salary)
    FROM instructor
);

-- 3.1.e
SELECT course_id, sec_id, semester, year, count(*) as enrollment
FROM takes
WHERE semester = 'Fall'
  AND year = 2017
GROUP BY course_id, sec_id, semester, year;

-- 3.1.f
SELECT max(T.enrollment)
FROM (
         SELECT course_id, sec_id, semester, year, count(*) as enrollment
         FROM takes
         WHERE semester = 'Fall'
           AND year = 2017
         GROUP BY course_id, sec_id, semester, year
     ) as T;

-- 3.1.g
WITH enrollment(course_id, sec_id, semester, year, enroll_count) AS
         (
             SELECT course_id, sec_id, semester, year, count(*) as enroll_count
             FROM takes
             WHERE takes.semester = 'Fall'
               AND year = 2017
             GROUP BY course_id, sec_id, semester, year
         )
SELECT course_id, sec_id, semester, year
FROM enrollment
WHERE enroll_count = (
    SELECT max(enroll_count)
    FROM enrollment
);

SELECT sum(year)
FROM takes
WHERE id = 'xx'
