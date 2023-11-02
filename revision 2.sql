use library;

CREATE TABLE Employees (
  id INT PRIMARY KEY,
  name VARCHAR(50),
  age INT,
  department VARCHAR(50),
  salary DECIMAL(10, 2)
);



INSERT INTO Employees (id, name, age, department, salary)
VALUES (1, 'John', 25, 'Marketing', 50000);

INSERT INTO Employees (id, name, age, department, salary)
VALUES (2, 'Sarah', 30, 'HR', 60000);

INSERT INTO Employees (id, name, age, department, salary)
VALUES (3, 'Michael', 35, 'Finance', 70000);

INSERT INTO Employees (id, name, age, department, salary)
VALUES (4, 'Emily', 28, 'Sales', 55000);

INSERT INTO Employees (id, name, age, department, salary)
VALUES (5, 'David', 32, 'Operations', 65000);



CREATE TABLE Orders (
  order_id INT PRIMARY KEY,
  order_date DATE,
  customer_id INT,
  product VARCHAR(50),
  quantity INT
);
create table Customers(
customer_id int primary key,
customer_name varchar(30),
email varchar(30),
phone int);


CREATE TABLE Orders (
  order_id INT PRIMARY KEY,
  order_date DATE,
  customer_id INT,
  product VARCHAR(50),
  quantity INT,
  constraint fk foreign key Orders(customer_id)
  references Customers(customer_id)
);



INSERT INTO Orders (order_id, order_date, customer_id, product, quantity)
VALUES (1, '2023-01-05', 1, 'Laptop', 2);

INSERT INTO Orders (order_id, order_date, customer_id, product, quantity)
VALUES (2, '2023-02-10', 2, 'Smartphone', 1);

INSERT INTO Orders (order_id, order_date, customer_id, product, quantity)
VALUES (3, '2023-03-15', 1, 'Tablet', 3);

INSERT INTO Orders (order_id, order_date, customer_id, product, quantity)
VALUES (4, '2023-04-20', 3, 'Headphones', 2);

INSERT INTO Orders (order_id, order_date, customer_id, product, quantity)
VALUES (5, '2023-05-25', 2, 'Monitor', 1);

INSERT INTO Customers (customer_id, customer_name, email, phone)
VALUES (1, 'John Smith', 'john@example.com', 123-456-789);

INSERT INTO Customers (customer_id, customer_name, email, phone)
VALUES (2, 'Jane Doe', 'jane@example.com', 987-654-321);

INSERT INTO Customers (customer_id, customer_name, email, phone)
VALUES (3, 'Mike Johnson', 'mike@example.com', 555-555-555);

INSERT INTO Customers (customer_id, customer_name, email, phone)
VALUES (4, 'Sarah Adams', 'sarah@example.com', 111-222-333);

INSERT INTO Customers (customer_id, customer_name, email, phone)
VALUES (5, 'David Brown', 'david@example.com', 444-444-444);


select  *
from Customers as c
join Orders as o
on c.customer_id = o.customer_id;

select	* from Orders;
select * from Customers;


select product,sum(quantity) as total
from Orders
group by quantity;


select *
from Orders as o
right join Customers as c
on c.customer_id = o.customer_id
where o.order_id is null;


select *
from Orders
where quantity >= 2;



select * from Customers;
select	* from Orders;








