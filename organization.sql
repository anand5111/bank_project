create database org;
show databases;
use org;

create table worker (
worker_id int not null primary key,
first_name char(25),
last_name char(25),
salary int(15),
joining_date datetime,
department char(25)
);

select * from worker;

insert into worker values
(001,'Monika','Arora',100000,'14-02-20 09.00.00','HR'),
(002,'Niharika','Verma',80000,'14-06-11 09.00.00','Admin'),
(003,'Vishal','Singhal',300000,'14-02-20 09.00.00','HR'),
(004,'Amitabh','Singh',500000,'14-02-20 09.00.00','Admin'),
(005,'Vivek','Bhati',500000,'14-06-11 09.00.00','Admin'),
(006,'Vipul','Diwan',200000,'14-06-11 09.00.00','Account'),
(007,'Satish','Kumar',75000,'14-01-20 09.00.00','Account'),
(008,'Geetika','Chauhan',90000,'14-04-11 09.00.00','Admin');