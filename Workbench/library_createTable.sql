-- create table table_name(

-- column_name datatype optional constraint,
-- column_name datatype optional constraint,
-- column_name datatype optional constraint,
-- .......
-- constraint constraint_name constraint_type(column_name)
-- );

-- create table Book(
-- bookId int Not Null,
-- bookName varChar(45) Not Null,
-- bookAuthor varChar(45) Not Null,
-- -- define the primary key column --
-- constraint book_PK Primary Key (bookId)
-- );

-- create table `User`(
-- userId int Not Null,
-- name varChar(45) Not Null,
-- gender varChar(5) Not Null,
-- address varchar(45) Not Null,
-- phonenumber varchar(15) Not Null,
-- -- -- -- -- -- -- define the primary key column --
-- constraint user_PK Primary Key (userId)
-- );

-- create table Staff(
-- staffId int Not Null,
-- name varChar(45) Not Null,
-- emailaddress varChar(45) Not Null,
-- phonenumber varchar(15) Not Null,
-- address varchar(45) Not Null,
-- job varchar(45) Not Null,
-- -- -- -- -- define the primary key column --
-- constraint staff_PK Primary Key (staffId)
-- );

create table Borrowed(
borrowedId int Not Null,
userId int Not Null,
staffId int Not Null,
bookId int Not Null,
dateCollected date Not Null,
deadline date Not Null,
-- -- define the primary key column --
constraint user_fk foreign Key (userId)
				references `user` (userId),
constraint staff_fk foreign Key (staffId)
				references staff (staffId),
constraint book_fk foreign Key (bookId)
			references book (bookId)
);


