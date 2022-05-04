create database company;

use company;

show databases;

-- create table employee

create table employee(
emp_id varchar(5),
emp_name char(10),
salary int(5),
dept_id varchar(5),
manager_id varchar(5)
);

select * from employee;

-- insert data into employee

insert into  employee values
('E1','Rahul',15000,'D1','M1'),
('E2','Manoj',15000,'D1','M1'),
('E3','James',55000,'D2','M2'),
('E4','Michael',25000,'D2','M2'),
('E5','Ali',20000,'D10','M3'),
('E6','Robin',35000,'D10','M3');

-- create another table departments

create table departments(
dept_id varchar(5),
dept_name varchar(10)
);

select * from departments;

-- insert data into departments

insert into departments values
('D1','IT'),
('D2','HR'),
('D3','Finance'),
('D4','Admin');


-- create table manager

create table manager(
manager_id varchar(5),
manager_name char(10),
dept_id varchar(5)
);


select * from manager;

-- insert into data manager table

insert into manager values
('M1','Prem','D3'),
('M2','Shripadh','D4'),
('M3','Nick','D1'),
('M4','Cory','D1');


-- create an another table whose name is projects

create table projects(
project_id varchar(5),
project_name char(15),
team_member_id varchar(5)
);


select * from projects;


-- insert data into table projects


insert into projects values
('P1','Data Migration','E1'),
('P1','Data Migration','E2'),
('P1','Data Migration','M3'),
('P2','ETL Tool','E1'),
('P2','ETL Tool','M4');


-- some questions based on the above tables

-- 1)  fetch the employee name and the department name they belong to.        

select e.emp_name,d.dept_name 
from employee e
inner join
departments d
on e.dept_id=d.dept_id;


-- 2) find all the employee name and their department name they belong to.

select e.emp_name,d.dept_name
from employee e 
left join 
departments d
on e.dept_id = d.dept_id;


-- 3) find  the employee name and all department name they belong to.

select e.emp_name,d.dept_name
from employee e
right join
departments d
on e.dept_id = d.dept_id;


-- 4) fetch details of all emp, their manager, their department and projects they work on.

select e.emp_name, d.dept_name , m.manager_name , p.project_name
from employee e 
left join departments d on e.dept_id = d.dept_id
inner join manager m on m.manager_id = e.manager_id
left join projects p on p.team_member_id = e.emp_id;


-- 5) find all the employee name and all the department name they belong to.

select e.emp_name,d.dept_name 
from employee e
left join
departments d
on e.dept_id=d.dept_id
union
select e.emp_name,d.dept_name 
from employee e
right join
departments d
on e.dept_id=d.dept_id;



  