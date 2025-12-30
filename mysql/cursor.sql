-- What is a Cursor in MySQL?

-- A cursor is used to:
--     Read multiple rows one by one
--     Inside a stored procedure
--     When SELECT returns more than one row
--     👉 MySQL cursor works like a loop over result set

-- 🔹 Where Cursor Is Allowed?

-- ✅ Only inside STORED PROCEDURES
-- ❌ Not allowed in FUNCTIONS

-- 🔹 Cursor Life Cycle (Very Important)

    -- Declare cursor
    -- Declare handler
    -- Open cursor
    -- Fetch data
    -- Close cursor

-- Basic Cursor Syntax

-- DECLARE cursor_name CURSOR FOR select_query;


CREATE TABLE users (
    id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(100)
);

INSERT INTO users (name) VALUES
('Amit'),
('Rahul'),
('Priya');
