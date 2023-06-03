-- Create the books table
CREATE TABLE books (
  id INT PRIMARY KEY,
  title VARCHAR(100) NOT NULL,
  author VARCHAR(100) NOT NULL,
  genre VARCHAR(50) NOT NULL,
  price DECIMAL(8,2) NOT NULL,
  stock_quantity INT NOT NULL
);

-- Insert sample data
INSERT INTO books (id, title, author, genre, price, stock_quantity)
VALUES
  (1, 'Book 1', 'Author 1', 'Fiction', 9.99, 10),
  (2, 'Book 2', 'Author 2', 'Fantasy', 14.99, 5),
  (3, 'Book 3', 'Author 3', 'Mystery', 12.99, 8);

-- Retrieve all books
SELECT * FROM books;

-- Retrieve books of a specific genre
SELECT * FROM books WHERE genre = 'Fiction';

-- Insert a new book
INSERT INTO books (id, title, author, genre, price, stock_quantity)
VALUES (4, 'Book 4', 'Author 4', 'Science Fiction', 19.99, 3);

-- Update the price of a book
UPDATE books SET price = 17.99 WHERE id = 1;

-- Delete books of a specific genre
DELETE FROM books WHERE genre = 'Mystery';
