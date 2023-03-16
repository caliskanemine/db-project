select DEPARTMENT_NAME from DEPARTMENTS ;

select DEPARTMENT_NAME, DEPARTMENT_ID from DEPARTMENTS ;

select DEPARTMENT_NAME, DEPARTMENT_ID from DEPARTMENTS;

select * from EMPLOYEES ;
select * from DEPARTMENTS;

select * from EMPLOYEES, DEPARTMENTS;
select EMPLOYEES.EMPLOYEE_ID, DEPARTMENTS.DEPARTMENT_ID from EMPLOYEES, DEPARTMENTS;

/*
 distinct keyword: displays only unique values/without the duplicates
 */

select distinct DEPARTMENT_ID from DEPARTMENTS;
select distinct SALARY from EMPLOYEES;

select MAX_SALARY from JOBS;
select distinct MAX_SALARY from JOBS;

select * from EMPLOYEES where SALARY < 5000;

select * from EMPLOYEES where SALARY < 5000 and MANAGER_ID= 114;

/*
 between statement: used for specifying the range of the condition
 value between lowest and highest
 */
select * from DEPARTMENTS where LOCATION_ID between 1800 and 2400;
select * from EMPLOYEES where SALARY between 3500 and 5000;

/*
 in statement: used for specifying the range of the condition
 */
select * from EMPLOYEES where DEPARTMENT_ID in (60, 30, 110) ;
select * from COUNTRIES where REGION_ID in (1, 4);

/*
 order by statement
 */
select * from COUNTRIES order by REGION_ID; --by default sorts in ascending order

select * from COUNTRIES where REGION_ID <5 order by REGION_ID asc;
select * from COUNTRIES order by REGION_ID desc;

/*
 like statement
 */

 --starts with:
select COUNTRY_NAME from COUNTRIES;
select COUNTRY_NAME from COUNTRIES where COUNTRY_NAME like  'Au%';

--ends with:
select COUNTRY_NAME from COUNTRIES where COUNTRY_NAME like '%a';

--starts with & ends with
select COUNTRY_NAME from COUNTRIES where COUNTRY_NAME like 'A%' and COUNTRY_NAME like '&a';

--contains:
select COUNTRY_NAME from COUNTRIES where COUNTRY_NAME like '%b%';

--min
--max
select min(LOCATION_ID) from DEPARTMENTS;

select * from DEPARTMENTS where LOCATION_ID=(select min(LOCATION_ID) from DEPARTMENTS);

select max(LOCATION_ID) from DEPARTMENTS;

select * from DEPARTMENTS where LOCATION_ID= (select max(LOCATION_ID) from DEPARTMENTS);

select max(SALARY) from EMPLOYEES;

select * from EMPLOYEES where SALARY=(select max(SALARY) from EMPLOYEES);

select * from EMPLOYEES where SALARY= (select min(SALARY) from EMPLOYEES);

--avarage(avg)
select avg(SALARY) from EMPLOYEES;

--round(used for decimal formatting)--> noktalı ondalık sayılarda nktadan sonra yazdırmak istediğin sayıyı giriyorsun
--örn: 12,123 bu 123 aşağıdaki 3 sayısından dolayı.
select round(avg(SALARY), 3 ) from EMPLOYEES;

--sum
select sum(SALARY) from EMPLOYEES;

--count
select count(*) from EMPLOYEES where MANAGER_ID= 100;

select count(*) from EMPLOYEES where SALARY< 10000;


 --group by: DİVİDES THE ROWS INTO GROUP




 select JOB_ID, count(*) from EMPLOYEES group by JOB_ID;

select JOB_ID, COUNT(*) FROM EMPLOYEES GROUP BY JOB_ID;

select JOB_ID, MAX(SALARY) FROM EMPLOYEES GROUP BY JOB_ID;

select JOB_ID, MIN(SALARY) FROM EMPLOYEES GROUP BY JOB_ID;

select JOB_ID, AVG(SALARY) FROM EMPLOYEES GROUP BY JOB_ID;

select JOB_ID, SUM(SALARY) FROM EMPLOYEES GROUP BY JOB_ID;

--having: sets the condition for groups rows created by the GROUP BY clause AFTER the GROUP BY applies.
--But WHERE clause sets the condition for individual rows BEFORE GROUP BY clause applies

select JOB_ID, count(*) from EMPLOYEES group by JOB_ID having max(SALARY) > 2000;

select JOB_ID, count(*) from EMPLOYEES group by JOB_ID having avg(SALARY) > 6000;

select JOB_ID, count(*) from EMPLOYEES group by JOB_ID having min(SALARY) > 6000;














