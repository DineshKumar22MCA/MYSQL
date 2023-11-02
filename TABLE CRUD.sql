create database logic;
use logic;
create table student(
id INT PRIMARY KEY,
    name VARCHAR(30),
    gpa DECIMAL(3,2)
);
show tables ;

CREATE TABLE stud( 
	id INT,
    name VARCHAR(30),
    gpa DECIMAL(3,2),
    PRIMARY KEY(id)
);
show tables;
desc stud;

alter	table student add department varchar(10);
desc student;

alter table student drop department;
desc student;