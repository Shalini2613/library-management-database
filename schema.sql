-- LIBRARY MANAGEMENT DATABASE

CREATE DATABASE library_db;
USE library_db;

-- Authors table
CREATE TABLE Authors (
    author_id INT AUTO_INCREMENT PRIMARY KEY,
    author_name VARCHAR(100) NOT NULL,
    nationality VARCHAR(50)
);
