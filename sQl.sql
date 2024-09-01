-- Step 1: Create a new database
CREATE DATABASE IF NOT EXISTS LibraryDB;

-- Step 2: Select the new database
USE LibraryDB;

-- Step 3: Create a table for storing books
CREATE TABLE IF NOT EXISTS Books (
    BookID INT AUTO_INCREMENT PRIMARY KEY,
    Title VARCHAR(100) NOT NULL,
    Author VARCHAR(100) NOT NULL,
    PublishYear INT
);

-- Step 4: Insert sample data into the Books table
INSERT INTO Books (Title, Author, PublishYear)
VALUES 
    ('The Great Gatsby', 'F. Scott Fitzgerald', 1925),
    ('To Kill a Mockingbird', 'Harper Lee', 1960),
    ('1984', 'George Orwell', 1949),
    ('Pride and Prejudice', 'Jane Austen', 1813);

-- Step 5: Create a table for storing authors
CREATE TABLE IF NOT EXISTS Authors (
    AuthorID INT AUTO_INCREMENT PRIMARY KEY,
    Name VARCHAR(100) NOT NULL,
    BirthYear INT
);

-- Step 6: Insert sample data into the Authors table
INSERT INTO Authors (Name, BirthYear)
VALUES 
    ('F. Scott Fitzgerald', 1896),
    ('Harper Lee', 1926),
    ('George Orwell', 1903),
    ('Jane Austen', 1775);

-- Step 7: Query data from the Books table
SELECT * FROM Books;

-- Step 8: Query data from the Authors table
SELECT * FROM Authors;

-- Step 9: Join Books and Authors tables to find books with author details
SELECT 
    B.Title, 
    B.PublishYear, 
    A.Name AS AuthorName, 
    A.BirthYear AS AuthorBirthYear
FROM 
    Books B
JOIN 
    Authors A ON B.Author = A.Name;
