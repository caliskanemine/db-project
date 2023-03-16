/*
create table syntax:
create table TableName(
colName1 DataType Constraints,
colName2 DataType Constraints(optional)
colName3 DataType Constraints,
...
);
*/
CREATE TABLE ScrumTeam(
    Emp_ID INTEGER PRIMARY KEY,
    FirstName varchar(30) not null,
    LastName varchar(30),
    JobTitle varchar(20)
);

select * from ScrumTeam;


/*
INSERT INTO tableName (column1, column2,...)
VALUES (value1, value2 ... );
*/
INSERT INTO ScrumTeam(emp_id, firstname, lastname, jobtitle)
VALUES (1, 'Severus', 'Snape', 'Tester');

INSERT INTO ScrumTeam VALUES (2, 'Harold', 'Finch', 'Developer');
INSERT INTO ScrumTeam VALUES (3, 'Phoeve', 'Buffay', 'ScrumMaster');
INSERT INTO ScrumTeam VALUES (4, 'Micheal', 'Scofield', 'PO');

--how to update data
/*
UPDATE table_name
SET column1 = value1,
column2 = value2 , ...
WHERE condition;
*/

UPDATE ScrumTeam
SET JobTitle= 'Tester' where Emp_ID= 4;

--Delete from table
/*
DELETE FROM table_name
WHERE condition;
*/
DELETE FROM ScrumTeam WHERE Emp_ID=3;

COMMIT;


SELECT * FROM SCRUMTEAM;

--ADDING NEW COLUMN
ALTER TABLE SCRUMTEAM ADD SALARY INTEGER;

UPDATE SCRUMTEAM SET SALARY = 100000 WHERE Emp_ID = 1;

UPDATE SCRUMTEAM SET SALARY = 90000 WHERE Emp_ID = 2;

UPDATE SCRUMTEAM SET SALARY = 120000 WHERE Emp_ID = 4;


--rename the column
ALTER TABLE ScrumTeam RENAME COLUMN SALARY TO ANNUAL_SALARY;

--delete, drop column
ALTER TABLE ScrumTeam DROP COLUMN ANNUAL_SALARY;

--how to change table name?
ALTER TABLE SCRUMTEAM RENAME TO AGILETEAM;

SELECT * FROM AGILETEAM;

COMMIT;

--TRUNCATE, IF WE WANT TO DELETE ALL DATA FROM THE TABLE, BUT STILL KEEP THE TABLE STRUCTURE
TRUNCATE TABLE  AGILETEAM;

--IF WE WANT TO DELETE THE TABLE AND DATA TOGETHER
DROP TABLE AGILETEAM;


/*
 select * from customer;
select * from address;
select first_name,last_name,address,phone
from customer join address
on customer.address_id = address.address_id;
select first_name,last_name,c.address_id,address,phone
from customer c left join address a
on c.address_id = a.address_id;
select first_name,last_name,c.address_id,a.address_id,address,phone
from customer c right join address a
on c.address_id = a.address_id;
select first_name,last_name,c.address_id,a.address_id,address,phone
from customer c full join address a
on c.address_id = a.address_id;
 */



