--how to find employees information of who is making the highest salary in the company

--get me the highest salary
select max(SALARY) from EMPLOYEES;

--highest salary employee information
select * from EMPLOYEES where SALARY = 24000;

--one shot combining two queries
select * from EMPLOYEES where SALARY = (select max(SALARY) from EMPLOYEES);

--finding second highest salary
--get the highest salary first
select max(SALARY) from EMPLOYEES;

select max(SALARY) from EMPLOYEES where SALARY <24000;

--one shot combining two queries
select max(SALARY) from EMPLOYEES
where SALARY< (select max(SALARY) from EMPLOYEES);

--employee information of who is making second highest salary
select * from EMPLOYEES where SALARY=
(select max(SALARY) from EMPLOYEES
 where SALARY< (select max(SALARY) from EMPLOYEES));

-----------------
select * from EMPLOYEES order by SALARY desc;


select * from EMPLOYEES where ROWNUM< 11;

--list the employees who is making top 10 salary

--get the first 10 people then order theö high to low based on salary
select * from EMPLOYEES where ROWNUM< 11 order by SALARY desc;

--order all employees based on salary high to low then display only first 10 result
select * from (select * from EMPLOYEES order by SALARY desc) where ROWNUM< 11;


--how can we rename the colomn that we displayed
select FIRST_NAME as "Given_name", LAST_NAME as "surname" from EMPLOYEES;

--text functions, string mani.
--java first_name+" "+last_name
-- in sql concat is ||
select FIRST_NAME || ' ' || LAST_NAME  as "full_name" from EMPLOYEES;


--Task;
--add @gmail.com and name new column to full_email
select EMAIL from EMPLOYEES;

--making all lowercase
select lower(EMAIL||'@gmail.com') as "full_email" from EMPLOYEES;

--making all luppercase
select upper(EMAIL||'@gmail.com') as "full_email" from EMPLOYEES;

--length(value)
select FIRST_NAME, length(FIRST_NAME) as "length_name" from EMPLOYEES order by "length_name" desc;

--substr(colName, begIndex, NumberOfChar)
select substr(FIRST_NAME,0,1) ||'.'||substr(LAST_NAME,0,1) as "initials" from EMPLOYEES;

select substr(FIRST_NAME,0,1)||'.'||substr(LAST_NAME,0,1) as "initials",
FIRST_NAME||' '||LAST_NAME  as "full_name",
lower(EMAIL||'@gmail.com') as "full_email" from EMPLOYEES;


--VIEW
CREATE VIEW Emaillist_emine as select substr(FIRST_NAME,0,1)||'.'||substr(LAST_NAME,0,1) as "initials",
FIRST_NAME||' '||LAST_NAME  as "full_name",
lower(EMAIL||'@gmail.com') as "full_email" from EMPLOYEES;

select "full_name" from EMAILLIST;

--to remove view
drop view Emaillist_emine;


--find the highest 14th salary
select min(SALARY) from (select distinct SALARY from EMPLOYEES order by SALARY desc) where ROWNUM < 15;


--find employee info who is making 14th highest salary
select * from EMPLOYEES where SALARY= (select min(SALARY) from (select distinct SALARY from EMPLOYEES order by SALARY desc) where ROWNUM < 15);





