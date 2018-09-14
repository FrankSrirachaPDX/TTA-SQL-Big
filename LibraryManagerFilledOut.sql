CREATE DATABASE db_library;

USE db_library;

/*Create Tables*/

CREATE TABLE library_branch(
	branchID INT PRIMARY KEY NOT NULL IDENTITY (1,1),
	branchName VARCHAR(50) NOT NULL,
	branchAddress VARCHAR (100) NOT NULL
);

CREATE TABLE publisher(
	publisherName VARCHAR (100) PRIMARY KEY NOT NULL,
	publisherAddress VARCHAR (100) NOT NULL,
	publisherPhone VARCHAR (15) NOT NULL
);

CREATE TABLE books(
	bookID INT PRIMARY KEY NOT NULL IDENTITY (100,1),
	bookTitle VARCHAR (100) NOT NULL,
	bookPublisherName VARCHAR(100) NOT NULL
);
CREATE TABLE book_authors(
	bookID INT NOT NULL,
	authorName VARCHAR (100) NOT NULL
);
CREATE TABLE book_copies(
	bookID INT NOT NULL,
	branchID INT NOT NULL,
	num_of_copies INT NOT NULL
);
CREATE TABLE book_loans(
	bookID INT NOT NULL,
	branchID INT NOT NULL,
	cardNo INT NOT NULL,
	dateOut VARCHAR (8) NOT NULL,
	dateDue VARCHAR (8) NOT NULL
);
CREATE TABLE borrower(
	cardNo INT PRIMARY KEY NOT NULL IDENTITY (100,1),
	borrowerName VARCHAR (50) NOT NULL,
	borrowerAddress VARCHAR (100) NOT NULL,
	borrowerPhone VARCHAR (15) NOT NULL
);

/*Insert into tables*/

INSERT INTO library_branch
	(branchName,branchAddress)
	VALUES
	('Central','123 NW Street Rd'),
	('Sharptown', '321 NE Yeet St'),
	('Downtown', '722 NW E St'),
	('Hoodcreek', '213 SE Bronson Dr')
;
SELECT * FROM library_branch;

INSERT INTO publisher
	(publisherName, publisherAddress, publisherPhone)
	VALUES
	('Bantam Spectra','100 Park Ave','555-0001'),
	('Doubleday','101 Swag Rd', '555-0002'),
	('HarperCollins','130 Street St', '555-0003'),
	('The Viking Press','420 Brook Rd', '555-0004'),
	('W.W. Norton & Company','550 Alan Blvd', '555-0005'),
	('The Russian Manager','240 Dick Rd', '555-0006'),
	('DC Comics','720 Street St', '555-0007'),
	('Dark Horse Comics','690 Stork Dr', '555-0008'),
	('Pidacor USA','523 Street Rd', '555-0009'),
	('Crown Publishing Group','325 Road St', '555-0010'),
	('Vintage Books',' 333 Doctor Dr', '555-0011'),
	('Harvill Secker','424 End Ave', '555-0012')
;
SELECT * FROM publisher;

INSERT INTO books
	(bookTitle, bookPublisherName)
	VALUES
	('Game Of Thrones', 'Bantam Spectra'),
	('Do Androids Dream of Electric Sheep?', 'Doubleday'),
	('Half Life', 'HarperCollins'),
	('IT', 'The Viking Press'),
	('The Shining','The Viking Press'),
	('Fellowship of the Ring',''),
	('Fight Club','W.W. Nortong & Company'),
	('War and Peace','The Russian Messenger'),
	('Watchmen','DC Comics'),
	('Oldboy', 'Dark Horse Comics'),
	('The Lost Tribe','Pidacor USA'),
	('The Lost City of Z','Doubleday'),
	('World War Z', 'Crown Publishing Group'),
	('American Psycho', 'Vintage Books'),
	('Salems Lot','The Viking Press'),
	('Misery','The Viking Press'),
	('The Stand','The Viking Press'),
	('Claire','The Viking Press'),
	('Cujo','Viking Press'),
	('1984','Harvill Secker')
;
SELECT * FROM books;

INSERT INTO book_authors
	(bookID, authorName)
	VALUES
	('100','George R.R. Martin'),
	('101','Philip K Dick'),
	('102','Shelly Jackson'),
	('103','Stephen King'),
	('104','Stephen King'),
	('105','J.R.R. Tolkein'),
	('106','Chuck Palanuk'),
	('107','Leo Tolstoy'),
	('108','Alan Moore'),
	('109','Nobuaki Minegishi'),
	('110','Mark Lee'),
	('111','David Green'),
	('112','Max Brooks'),
	('113','Bret Easton Ellis'),
	('114','Stephen King'),
	('115','Stephen King'),
	('116','Stephen King'),
	('117','Stephen King'),
	('118','Stephen King'),
	('119','George Orwell')
;
SELECT * FROM book_authors;

INSERT INTO book_copies
	(bookID, branchID, num_of_copies)
	VALUES
	('100','1','50'),
	('101','2','25'),
	('102','3','92'),
	('103','4','55'),
	('104','1','21'),
	('105','2','35'),
	('106','3','15'),
	('107','4','73'),
	('108','1','42'),
	('109','2','48'),
	('110','2','77'),
	('111','3','37'),
	('112','4','78'),
	('113','1','36'),
	('114','2','54'),
	('115','3','25'),
	('116','4','73'),
	('117','1','52'),
	('118','3','94'),
	('119','4','25')
;
SELECT * FROM book_copies;

INSERT INTO book_loans
	(bookID, branchID, cardNo, dateOut, dateDue)
	VALUES
	('100','1','100','5-12','5-20'),
	('100','1','102','5-12','5-20'),
	('100','1','104','5-12','5-20'),
	('100','1','103','5-14','5-22'),
	('101','2','100','5-12','5-20'),
	('101','2','102','5-12','5-20'),
	('101','2','103','5-12','5-20'),
	('101','2','104','5-12','5-20'),
	('101','2','101','5-12','5-20'),
	('102','3','100','9-4','9-12'),
	('102','3','101','9-4','9-12'),
	('102','3','102','9-4','9-12'),
	('118','3','101','9-5','9-13'),
	('118','3','103','9-5','9-13'),
	('118','3','104','9-5','9-13'),
	('118','3','105','9-5','9-13'),
	('117','1','101','9-5','9-13'),
	('117','1','102','9-5','9-13'),
	('117','1','103','9-5','9-13'),
	('109','2','100','9-4','9-12'),
	('109','2','101','9-4','9-12'),
	('109','2','102','9-4','9-12'),
	('109','2','103','9-4','9-12'),
	('109','2','104','9-4','9-12'),
	('109','2','105','9-4','9-12'),
	('112','4','100','9-4','9-12'),
	('112','4','101','9-4','9-12'),
	('112','4','102','9-4','9-12'),
	('112','4','103','9-4','9-12'),
	('112','4','104','9-4','9-12'),
	('112','4','105','9-4','9-12'),
	('116','4','100','9-4','9-12'),
	('116','4','101','9-4','9-12'),
	('116','4','102','9-4','9-12'),
	('116','4','103','9-4','9-12'),
	('116','4','104','9-4','9-12'),
	('116','4','105','9-4','9-12'),
	('107','4','100','9-4','9-12'),
	('107','4','101','9-4','9-12'),
	('107','4','102','9-4','9-12'),
	('107','4','103','9-4','9-12'),
	('107','4','104','9-4','9-12'),
	('105','2','100','9-4','9-12'),
	('105','2','101','9-4','9-12'),
	('105','2','102','9-4','9-12'),
	('105','2','103','9-4','9-12'),
	('105','2','104','9-4','9-12'),
	('119','4','106','9-4','9-12'),
	('119','4','101','9-4','9-12'),
	('119','4','102','9-4','9-12'),
	('119','4','103','9-4','9-12')
;
SELECT * FROM book_loans;
INSERT INTO borrower
	(borrowerName, borrowerAddress, borrowerPhone)
	VALUES
	('Kelly','4321 Florida Rd','555-2000'),
	('Brian','4293 Oregon St','555-1234'),
	('Adam','1234 Driver Dr','555-2001'),
	('Alexis','4389 Washington Ave','555-2002'),
	('Sara','1111 Yeezy St','555-2003'),
	('Mike','4615 Washington Way','555-2004'),
	('Drake','4032 Oak St','555-2005'),
	('Natalie',' 4038 Oak St','555-2006')
;
SELECT * from borrower;

/* STORED PROCEDURES */

/*1*/
CREATE PROCEDURE TLTinSharptown
AS
SELECT num_of_copies 
FROM ((book_copies
INNER JOIN library_branch ON book_copies.branchID = library_branch.branchID)
INNER JOIN books ON book_copies.bookID = books.bookID)
WHERE books.bookTitle = 'The Lost Tribe' AND library_branch.branchName = 'Sharptown'
/*WHERE bookID = '110' AND branchID = '2'*/
GO
/*2*/
CREATE PROCEDURE TheLostTribe_Total
AS
SELECT num_of_copies 
FROM ((book_copies
INNER JOIN library_branch ON book_copies.branchID = library_branch.branchID)
INNER JOIN books ON book_copies.bookID = books.bookID)
WHERE books.bookTitle = 'The Lost Tribe'
GO
/*3*/
CREATE PROCEDURE NoBooks
AS
SELECT * --borrowerName 
FROM borrower
FULL OUTER JOIN book_loans ON borrower.cardNo = book_loans.cardNo
WHERE book_loans.cardNo IS NULL
GO

EXEC NoBooks;

/*4*/
CREATE PROCEDURE DueToday
AS
SELECT books.bookTitle, borrower.borrowerName, borrower.borrowerAddress
FROM (((book_loans
INNER JOIN books ON book_loans.bookID = books.bookID)
INNER JOIN library_branch ON book_loans.branchID = library_branch.branchID)
INNER JOIN borrower ON book_loans.cardNo = borrower.cardNo)
WHERE library_branch.branchName='Sharptown' AND book_loans.dateDue='9-12'
GO
/*5*/
CREATE PROCEDURE BranchLoanTotal
AS
SELECT COUNT(book_loans.dateDue), library_branch.branchName
FROM book_loans
INNER JOIN library_branch ON book_loans.branchID = library_branch.branchID
GROUP BY library_branch.branchName
GO
/*6*/
ALTER PROCEDURE MoreThan5
AS
SELECT borrower.borrowerName, borrower.borrowerAddress,COUNT(book_loans.bookID) AS bookcount,book_loans.cardNo
FROM book_loans
INNER JOIN borrower ON book_loans.cardNo = borrower.cardNo
GROUP BY borrower.borrowerName, borrower.borrowerAddress, book_loans.cardNo
HAVING COUNT(book_loans.bookID) > 5
GO
EXEC MoreThan5;


/*7*/
CREATE PROCEDURE StephenCentral
AS
SELECT SUM(book_copies.num_of_copies), books.bookTitle
FROM (((book_copies
INNER JOIN library_branch ON book_copies.branchID = library_branch.branchID)
INNER JOIN books ON book_copies.bookID = books.bookID)
INNER JOIN book_authors ON book_copies.bookID = book_authors.bookID)
WHERE book_authors.authorName = 'Stephen King' AND library_branch.branchName = 'Central'
GROUP BY books.bookTitle

GO