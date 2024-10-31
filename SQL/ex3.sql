-- 1. Standard INSERT
INSERT INTO User (name, email, password) 
VALUES ('Alice Johnson', 'alice.johnson@example.com', 'password123');

-- 2. INSERT ... SELECT using UNION
INSERT INTO User (name, email, password)
SELECT * FROM (
    SELECT 'Bob Smith', 'bob.smith@example.com', 'securePass'
    UNION
    SELECT 'Carol White', 'carol.white@example.com', 'strongPass'
    UNION
    SELECT 'David Brown', 'david.brown@example.com', 'password321'
) AS dummy;

-- 3. INSERT multiple tuples 
INSERT INTO User (name, email, password)
VALUES 
    ('Eve Black', 'eve.black@example.com', 'blackPass'),
    ('Frank Green', 'frank.green@example.com', 'greenPass'),
    ('Grace Blue', 'grace.blue@example.com', 'bluePass');