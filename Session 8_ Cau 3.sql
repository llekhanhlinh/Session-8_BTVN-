create database thu_vien;
use thu_vien;

create table Books(
	book_id int primary key,
	title varchar(200),
	author varchar(255),
	publication_year int,
	pages int
);

create table BorrowingRecords(
	record_id int primary key,
	borrow_date date,
	book_id int,
    foreign key (book_id) references Books(book_id)
);


select count(*) as total_books
from Books;

select sum(pages) as total_pages_in_library
from Books;

select avg(pages) as average_pages_per_book
from Books;

select
	min(publication_year) as oldest_book_year,
    max(publication_year) as newest_book_year
from Books;

select count(*) as books_after_2000
from Books
where publication_year > 2000;