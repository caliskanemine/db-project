select * from EMPLOYEES;
-- " * " means everything, it reads all column from employees table

select * from DEPARTMENTS;

select FIRST_NAME from EMPLOYEES;

select CITY FROM LOCATIONS;

select FIRST_NAME,LAST_NAME,SALARY FROM EMPLOYEES;

select STREET_ADDRESS, POSTAL_CODE from LOCATIONS;

--distinct: removes the duplicates
select distinct FIRST_NAME from EMPLOYEES;

select FIRST_NAME, LAST_NAME, PHONE_NUMBER
from EMPLOYEES
where FIRST_NAME= 'David' and LAST_NAME= 'Lee';

select * from EMPLOYEES where SALARY> 7000;

select EMAIL from EMPLOYEES where SALARY< 4000;

select * from EMPLOYEES
where JOB_ID= 'IT_PROG' or JOB_ID= 'SA_REP';

select FIRST_NAME, LAST_NAME, SALARY
from EMPLOYEES where SALARY>= 5000 and SALARY<= 10000;

select FIRST_NAME, LAST_NAME, SALARY
from EMPLOYEES where SALARY between 5000 and 10000;

select * from EMPLOYEES
where EMPLOYEE_ID between 130 and 170;

select * from EMPLOYEES
where EMPLOYEE_ID= 135 or EMPLOYEE_ID= 176 or EMPLOYEE_ID=154 or EMPLOYEE_ID=129;

select * from EMPLOYEES
where EMPLOYEE_ID in(135, 176, 154, 129);

select CITY from LOCATIONS
WHERE COUNTRY_ID in('IT', 'US', 'UK');

select * from EMPLOYEES
where JOB_ID in('IT_PROG', JOB_ID= 'SA_REP');

select count(*) from EMPLOYEES
where JOB_ID in('IT_PROG', JOB_ID= 'SA_REP');

select count(*) from EMPLOYEES where SALARY> 8000;

select distinct FIRST_NAME from EMPLOYEES;

--number of unique first names
select count(distinct FIRST_NAME) from EMPLOYEES;

--order by
--desc 9-0 z-a
--asc  0-9 a-z
select * from EMPLOYEES order by SALARY desc;

--get me all emp info order by alphabetical based on firstname
select * from EMPLOYEES order by FIRST_NAME asc;

--get me all employees whose first name starts with C
select * from EMPLOYEES where FIRST_NAME like 'C%'; --% unlimited character sayısını temsile der, kaç tane % koyduğumuz fark etmez
select * from EMPLOYEES where FIRST_NAME like 'C____'; --alt tire sonraki karakterlerin sayısını temsil ediyor

--get me 5 letter first names where the middle char is z
select * from EMPLOYEES where FIRST_NAME like '__z__';

--get me first name where second char is u
select * from EMPLOYEES where FIRST_NAME like '_u&';

--find me min salary
select min(SALARY) from EMPLOYEES;

--max
select max(SALARY) from EMPLOYEES;

--avarage salary
select avg(SALARY) from EMPLOYEES;

--round: sayıyı yuvarla(ondalıktan sonraki kısmı aşağıda verdiğim 2, 2 tane sayı kalsın demek)
select round(avg(SALARY), 2) from EMPLOYEES;

--sum
select sum(SALARY) from EMPLOYEES;

--get me avarage salary for IT_PROG
select avg(SALARY) from EMPLOYEES where JOB_ID='IT_PROG';

--get me unique job ids
select distinct JOB_ID from EMPLOYEES;

--group by
--get me average salary for each job_id
select JOB_ID, avg(SALARY), count(*), sum(SALARY) from EMPLOYEES group by JOB_ID; --writes job id, their avg salary and numbers(with count)
--tabloya diğer istenen bilgiler de virgül ile eklenebilir

--get me jobs id where their avg salary is more than 5k
select JOB_ID, avg(SALARY) from EMPLOYEES group by JOB_ID having avg(SALARY)>5000;

select JOB_ID, avg(SALARY), count(*), sum(SALARY) from EMPLOYEES where SALARY>5000 group by JOB_ID;












