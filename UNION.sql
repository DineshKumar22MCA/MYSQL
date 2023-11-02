use logic;

CREATE TABLE clients (
client_id INT PRIMARY KEY AUTO_INCREMENT,
location VARCHAR(30) NOT NULL,
addr VARCHAR(200) );

INSERT INTO clients VALUES(1,"NewYork","25 10th Block");
INSERT INTO clients VALUES(2,"Coimbatore","120 15th Block");
INSERT INTO clients VALUES(3,"London","21 ABC Road");

select * from branches
union 
select * from clients;

-- union all

select * from branches
union all
select * from clients;