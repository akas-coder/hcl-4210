-- Data Types and Constraints - Task 1: Choose suitable data types

CREATE TABLE library_books (
    book_id INT AUTO_INCREMENT PRIMARY KEY,
    title VARCHAR(255) NOT NULL,
    isbn CHAR(13) NOT NULL,
    price DECIMAL(10,2) NOT NULL,
    copies INT UNSIGNED NOT NULL DEFAULT 0,
    available BOOLEAN NOT NULL DEFAULT TRUE,
    category ENUM('Fiction', 'Science', 'History') NOT NULL,
    published_year YEAR,
    description TEXT,
    UNIQUE (isbn)
);

-- Example insert
INSERT INTO library_books
(title, isbn, price, copies, available, category, published_year, description)
VALUES
('Learning MySQL', '0012345678901', 499.50, 5, TRUE, 'Science', 2024,
 'A beginner-friendly book about relational databases and SQL.');

SELECT * FROM library_books;
