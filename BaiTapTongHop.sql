create database baitaptonghop;

use baitaptonghop;

create table book(
	book_id char(5) primary key,
    book_name varchar(200) not null,
    book_quantity int not null check (book_quantity >= 0),
    book_borrow_price decimal(10,2) default (5000) 
);

alter table book
	add column date_of_entry date not null;
    
create table borrow_books(
	borrow_id int primary key auto_increment ,
    id_book char(5),
    foreign key (id_book) references book(book_id),
    borrow_date date default (current_date)
);
