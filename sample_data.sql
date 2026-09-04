USE library_db;

-- Sample Authors
INSERT INTO Authors (author_name, nationality) VALUES
('R.K. Narayan', 'Indian'),
('J.K. Rowling', 'British'),
('Chetan Bhagat', 'Indian'),
('Agatha Christie', 'British');

-- Sample Books
INSERT INTO Books (title, genre, author_id, total_copies, available_copies) VALUES
('Malgudi Days', 'Fiction', 1, 4, 4),
('Harry Potter and the Sorcerer''s Stone', 'Fantasy', 2, 5, 5),
('Five Point Someone', 'Fiction', 3, 3, 3),
('Murder on the Orient Express', 'Mystery', 4, 2, 2);

-- Sample Members
INSERT INTO Members (member_name, email, phone) VALUES
('Arjun Kumar', 'arjun@email.com', '9876543210'),
('Priya Raj', 'priya@email.com', '9876500000'),
('Vikram S', 'vikram@email.com', '9876511111');

-- Sample Borrow_Records
INSERT INTO Borrow_Records (book_id, member_id, borrow_date, due_date, return_date) VALUES
(1, 1, '2026-08-01', '2026-08-15', '2026-08-14'),  -- returned on time
(2, 2, '2026-08-05', '2026-08-19', NULL),           -- still borrowed
(3, 1, '2026-08-10', '2026-08-24', '2026-08-30'),   -- returned LATE
(4, 3, '2026-08-20', '2026-09-03', NULL);           -- still borrowed
