select * from EMPLOYEES;

select * from DEPARTMENTS;

select FIRST_NAME, LAST_NAME, DEPARTMENT_NAME from EMPLOYEES e left join DEPARTMENTS d
on e.DEPARTMENT_ID = d.DEPARTMENT_ID where e.DEPARTMENT_ID is null;

select FIRST_NAME, LAST_NAME, DEPARTMENT_NAME, CITY
from EMPLOYEES e join  DEPARTMENTS d
on e.DEPARTMENT_ID=d.DEPARTMENT_ID
JOIN LOCATIONS l
on d.LOCATION_ID = l.LOCATION_ID;


select EMPLOYEE_ID, FIRST_NAME, LAST_NAME, MANAGER_ID from EMPLOYEES;

--self join
select e1.EMPLOYEE_ID, e1.FIRST_NAME, e1.LAST_NAME, e1.MANAGER_ID, e2.EMPLOYEE_ID, e2.FIRST_NAME, e2.LAST_NAME
from EMPLOYEES e1 join EMPLOYEES e2
on e1.MANAGER_ID= e2.EMPLOYEE_ID
order by e1.EMPLOYEE_ID;


create table Developers(
Id_Number Integer primary key,
Names varchar(30),
Salary Integer
);
create table Testers(
Id_Number Integer primary key,
Names varchar(30),
Salary Integer
);

insert into developers values (1, 'Mike', 155000);
insert into developers values (2, 'John', 142000);
insert into developers values (3, 'Steven', 850000);
insert into developers values (4, 'Maria', 120000);
insert into testers values (1, 'Steven', 110000);
insert into testers values(2, 'Adam', 105000);
insert into testers values (3, 'Lex', 100000);
commit work;


select * from Developers minus select * from Testers;

select Names from Testers
union
select Names from Developers;

select Names from Developers
intersect
select Names from Testers;

--how to find duplicate names in employees table
select FIRST_NAME, count(*) from EMPLOYEES group by FIRST_NAME having count(*)> 1;

