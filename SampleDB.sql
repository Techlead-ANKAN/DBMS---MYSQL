-- Sample SQL Script for practice

CREATE DATABASE OnlineBookstore;
USE OnlineBookstore;



CREATE TABLE Books (
    BookID INT PRIMARY KEY,
    Title VARCHAR(100),
    Author VARCHAR(100),
    Genre VARCHAR(50),
    Price DECIMAL(6,2),
    Stock INT
);

INSERT INTO Books (BookID, Title, Author, Genre, Price, Stock) VALUES
(101, 'The Alchemist', 'Paulo Coelho', 'Fiction', 399.00, 12),
(102, 'Atomic Habits', 'James Clear', 'Self-help', 499.00, 8),
(103, 'Clean Code', 'Robert C. Martin', 'Programming', 699.00, 5),
(104, 'Deep Work', 'Cal Newport', 'Productivity', 449.00, 3),
(105, 'Harry Potter and the Sorcerer', 'J.K. Rowling', 'Fantasy', 599.00, 10);


CREATE TABLE Customers (
    CustomerID VARCHAR(10) PRIMARY KEY,
    Name VARCHAR(100),
    Email VARCHAR(100),
    City VARCHAR(50)
);

INSERT INTO Customers (CustomerID, Name, Email, City) VALUES
('C001', 'Ananya Singh', 'ananya@example.com', 'Delhi'),
('C002', 'Rahul Mehta', 'rahul123@example.com', 'Mumbai'),
('C003', 'Priya Das', 'priya.das@example.com', 'Kolkata'),
('C004', 'Arjun Roy', 'arjun.roy@example.com', 'Bangalore');


CREATE TABLE Orders (
    OrderID VARCHAR(10) PRIMARY KEY,
    CustomerID VARCHAR(10),
    BookID INT,
    Quantity INT,
    OrderDate DATE,
    FOREIGN KEY (CustomerID) REFERENCES Customers(CustomerID),
    FOREIGN KEY (BookID) REFERENCES Books(BookID)
);

INSERT INTO Orders (OrderID, CustomerID, BookID, Quantity, OrderDate) VALUES
('O1001', 'C001', 101, 1, '2025-07-15'),
('O1002', 'C002', 103, 2, '2025-07-16'),
('O1003', 'C001', 105, 1, '2025-07-17'),
('O1004', 'C004', 104, 1, '2025-07-18'),
('O1005', 'C003', 102, 1, '2025-07-19');
