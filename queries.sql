USE library_db;

-- 1. List all books along with their author's name (JOIN)
SELECT Books.title, Authors.author_name, Books.genre
FROM Books
JOIN Authors ON Books.author_id = Authors.author_id;

-- 2. Find all currently borrowed books (not yet returned)
SELECT Books.title, Members.member_name, Borrow_Records.borrow_date, Borrow_Records.due_date
FROM Borrow_Records
JOIN Books ON Borrow_Records.book_id = Books.book_id
JOIN Members ON Borrow_Records.member_id = Members.member_id
WHERE Borrow_Records.return_date IS NULL;

-- 3. Find members who returned a book LATE
SELECT Members.member_name, Books.title, Borrow_Records.due_date, Borrow_Records.return_date
FROM Borrow_Records
JOIN Members ON Borrow_Records.member_id = Members.member_id
JOIN Books ON Borrow_Records.book_id = Books.book_id
WHERE Borrow_Records.return_date > Borrow_Records.due_date;
