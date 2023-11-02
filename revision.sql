use library;

select * from authors;
select * from books;
select * from borrowers;

select a.author_name,b.book_title 
from books as b
join authors as a 
on a.author_id = b.author_id
order by a.author_name asc;

select b.book_title,bb.borrower_name
from borrowers as bb
join books as b
on b.book_id = bb.book_id
where bb.borrower_name = "Jane Smith";

update borrowers
set borrower_name = "Sarah Johnson"
where borrower_id = 2;


delete from borrowers
where book_id = 2;


SELECT books.book_title, authors.author_name
FROM books
JOIN authors ON books.author_id = authors.author_id
ORDER BY authors.author_name ASC;
 
insert into borrowers values (2,"sarah",2),
(3,"pinky",3),
(5,"chintu",3);
insert into borrowers value (6,"chottu",1);

select * from authors;
select * from books;
select * from borrowers;

 select * from authors,books,borrowers;
 
 SELECT borrowers.borrower_name, COUNT(*) AS book_count
FROM borrowers
JOIN books ON borrowers.book_id = books.book_id
GROUP BY borrowers.borrower_name;
 
 
 select borrower_name,count(book_id)
 from borrowers
 group by borrower_name;
 
select books.book_title,count(borrowers.book_id)
from borrowers
join books
on books.book_id = borrowers.book_id
group by books.book_title;


select books.book_title
from borrowers
right join books 
on books.book_id = borrowers.book_id
where borrowers.borrower_id is null;


update books
join authors 
on books.author_id = authors.author_id
set authors.author_name = "hellen"
where books.book_id = 2;

delete from borrowers
where book_id is null; 















