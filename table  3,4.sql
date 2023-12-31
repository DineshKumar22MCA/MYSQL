use logic;


CREATE TABLE table1 (
branch_id INT PRIMARY KEY AUTO_INCREMENT,
br_name VARCHAR(30) NOT NULL,
addr VARCHAR(200) );

CREATE TABLE  table2(
emp_id INT PRIMARY KEY AUTO_INCREMENT,
ename VARCHAR(30) NOT NULL,
job_desc VARCHAR(20),
salary INT,
branch_id INT,
CONSTRAINT FK_ FOREIGN KEY table2(branch_id) REFERENCES table1(branch_id)
on delete set null
);

INSERT INTO table1 VALUES(1,"Chennai","16 ABC Road");
INSERT INTO table1 VALUES(2,"Coimbatore","120 15th Block");
INSERT INTO table1 VALUES(3,"Mumbai","25 XYZ Road");
INSERT INTO table1 VALUES(4,"Hydrabad","32 10th Street");

INSERT INTO table2 VALUES(1,'Ram','ADMIN',1000000,2);
INSERT INTO table2 VALUES(2,'Harini','MANAGER',2500000,2);
INSERT INTO table2 VALUES(3,'George','SALES',2000000,1);
INSERT INTO table2 VALUES(4,'Ramya','SALES',1300000,2);
INSERT INTO table2 VALUES(5,'Meena','HR',2000000,3);
INSERT INTO table2 VALUES(6,'Ashok','MANAGER',3000000,1);
INSERT INTO table2 VALUES(7,'Abdul','HR',2000000,1);
INSERT INTO table2 VALUES(8,'Ramya','ENGINEER',1000000,2);
INSERT INTO table2 VALUES(9,'Raghu','CEO',8000000,3);
INSERT INTO table2 VALUES(10,'Arvind','MANAGER',2800000,3);
INSERT INTO table2 VALUES(11,'Akshay','ENGINEER',1000000,1);
INSERT INTO table2 VALUES(12,'John','ADMIN',2200000,1);
INSERT INTO table2 VALUES(13,'Abinaya','ENGINEER',2100000,2);
INSERT INTO table2 VALUES(14,'Vidya','ADMIN',2200000,NULL);
INSERT INTO table2 VALUES(15,'Ranjani','ENGINEER',2100000,NULL);


select * from table1;
select * from table2;

delete from table1
where branch_id = 3;