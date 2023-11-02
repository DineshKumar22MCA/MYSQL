use library;
CREATE TABLE authors (
  author_id INT PRIMARY KEY AUTO_INCREMENT,
  author_name VARCHAR(100) NOT NULL
);

CREATE TABLE books (
  book_id INT PRIMARY KEY AUTO_INCREMENT,
  book_title VARCHAR(100) NOT NULL,
  author_id INT,
  
  FOREIGN KEY (author_id) REFERENCES authors(author_id)
);

CREATE TABLE borrowers (
  borrower_id INT PRIMARY KEY AUTO_INCREMENT,
  borrower_name VARCHAR(100) NOT NULL,
  book_id INT,
  FOREIGN KEY (book_id) REFERENCES books(book_id)
);

INSERT INTO authors (author_name) VALUES ('J.K. Rowling');
INSERT INTO authors (author_name) VALUES ('George Orwell');
INSERT INTO authors (author_name) VALUES ('Harper Lee');

INSERT INTO books (book_title, author_id) VALUES ('Harry Potter and the Philosopher\'s Stone', 1);
INSERT INTO books (book_title, author_id) VALUES ('1984', 2);
INSERT INTO books (book_title, author_id) VALUES ('To Kill a Mockingbird', 3);

INSERT INTO borrowers (borrower_name, book_id) VALUES ('John Doe', 1);
INSERT INTO borrowers (borrower_name, book_id) VALUES ('Jane Smith', 2);

INSERT INTO borrowers (borrower_name, book_id) VALUES ('John Doe', 2);
INSERT INTO borrowers (borrower_name, book_id) VALUES ('Jane Smith', 1);

show tables;
select * from authors;
select * from books;
select * from borrowers;

show databases;
use movie;
show tables;
create table kollywood (id int primary key auto_increment , director varchar(100) not null,
						film varchar(100)not null);
insert into kollywood(director,film)values('lokie','leo');

update kollwood
SET director = 'vicky'
where id=1;
select * from kollywood;

   