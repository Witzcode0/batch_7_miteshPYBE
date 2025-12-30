create database test;

use test;

CREATE TABLE bank_account (
    id INT PRIMARY KEY,
    name VARCHAR(50),
    balance INT
);


INSERT INTO bank_account VALUES
(1, 'Ravi', 1000),
(2, 'Amit', 2000);

SELECT * FROM bank_account;


use test;
START TRANSACTION;

UPDATE bank_account
SET balance = balance - 300
WHERE id = 1;

SELECT * FROM bank_account;

SAVEPOINT sp1;

UPDATE bank_account
SET balance = balance + 300
WHERE id = 2;

SELECT * FROM bank_account;

ROLLBACK TO sp1;

SELECT * FROM bank_account;

COMMIT;

ROLLBACK;

---------------------------------------------------------------

use test;
START TRANSACTION;

UPDATE bank_account
SET balance = balance - 300
WHERE id = 1;

SELECT * FROM bank_account;

COMMIT;

SAVEPOINT sp1;


UPDATE bank_account
SET balance = balance + 300
WHERE id = 2;

SELECT * FROM bank_account;


ROLLBACK TO sp1;

SELECT * FROM bank_account;



ROLLBACK;

