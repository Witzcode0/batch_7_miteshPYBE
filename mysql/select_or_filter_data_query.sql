mysql> SELECT * from users;
+----+---------------+-----+-----------+
| id | fullname      | age | is_active |
+----+---------------+-----+-----------+
|  4 | Amit Sharma   |  25 |         1 |
|  5 | Neha Patel    |  22 |         1 |
|  6 | Rohit Verma   |  30 |         0 |
|  7 | Priya Singh   |  27 |         1 |
|  8 | Karan Mehta   |  35 |         1 |
|  9 | Anjali Desai  |  24 |         0 |
| 10 | Vikram Joshi  |  40 |         1 |
| 11 | Pooja Nair    |  28 |         1 |
| 12 | Sandeep Kumar |  33 |         0 |
| 13 | Riya Malhotra |  21 |         1 |
+----+---------------+-----+-----------+
10 rows in set (0.00 sec)

mysql> SELECT * from posts;
+----+-----------------------+------------------------------------------+---------+
| id | title                 | content                                  | user_id |
+----+-----------------------+------------------------------------------+---------+
| 21 | Introduction to MySQL | Basics of MySQL database.                |       4 |
| 22 | MySQL CRUD            | Create, Read, Update, Delete operations. |       4 |
| 23 | Django Basics         | Introduction to Django framework.        |       5 |
| 24 | Django Models         | Understanding Django ORM.                |       5 |
| 25 | React Overview        | Introduction to React JS.                |       6 |
| 26 | React Hooks           | useState and useEffect explained.        |       6 |
| 27 | Node.js Intro         | Getting started with Node.js.            |       7 |
| 28 | Express.js            | API development using Express.           |       7 |
| 29 | REST vs GraphQL       | Differences between REST and GraphQL.    |       8 |
| 30 | GraphQL Basics        | Queries and Mutations in GraphQL.        |       8 |
+----+-----------------------+------------------------------------------+---------+
10 rows in set (0.00 sec)

mysql> SELECT * from comments;
+----+---------+--------------------------+
| id | user_id | content                  |
+----+---------+--------------------------+
|  1 |       4 | Very helpful post!       |
|  2 |       5 | Nice explanation ?       |
|  3 |       6 | I learned something new. |
+----+---------+--------------------------+
3 rows in set (0.00 sec)

mysql> SELECT * from likes;
+----+---------+---------+
| id | user_id | post_id |
+----+---------+---------+
|  7 |       4 |      21 |
|  8 |       5 |      21 |
|  9 |       6 |      22 |
| 10 |       7 |      22 |
| 11 |       8 |      23 |
+----+---------+---------+

mysql> select fullname, is_active from users;
+---------------+-----------+
| fullname      | is_active |
+---------------+-----------+
| Amit Sharma   |         1 |
| Neha Patel    |         1 |
| Rohit Verma   |         0 |
| Priya Singh   |         1 |
| Karan Mehta   |         1 |
| Anjali Desai  |         0 |
| Vikram Joshi  |         1 |
| Pooja Nair    |         1 |
| Sandeep Kumar |         0 |
| Riya Malhotra |         1 |
+---------------+-----------+

mysql> select fullname, is_active from users where is_active = 1;
+---------------+-----------+
| fullname      | is_active |
+---------------+-----------+
| Amit Sharma   |         1 |
| Neha Patel    |         1 |
| Priya Singh   |         1 |
| Karan Mehta   |         1 |
| Vikram Joshi  |         1 |
| Pooja Nair    |         1 |
| Riya Malhotra |         1 |
+---------------+-----------+

mysql> select fullname from users where id < 9;
+-------------+
| fullname    |
+-------------+
| Amit Sharma |
| Neha Patel  |
| Rohit Verma |
| Priya Singh |
| Karan Mehta |
+-------------+

mysql> select distinct is_active from users;
+-----------+
| is_active |
+-----------+
|         1 |
|         0 |
+-----------+

mysql> select age as price from users order by age;
+-------+
| price |
+-------+
|    21 |
|    22 |
|    24 |
|    25 |
|    27 |
|    28 |
|    30 |
|    33 |
|    35 |
|    40 |
+-------+

mysql> select age as price from users order by age DESC;
+-------+
| price |
+-------+
|    40 |
|    35 |
|    33 |
|    30 |
|    28 |
|    27 |
|    25 |
|    24 |
|    22 |
|    21 |
+-------+

mysql> select * from users where is_active = 1 and fullname LIKE "p%";
+----+-------------+-----+-----------+
| id | fullname    | age | is_active |
+----+-------------+-----+-----------+
|  7 | Priya Singh |  27 |         1 |
| 11 | Pooja Nair  |  28 |         1 |
+----+-------------+-----+-----------+

mysql> select * from users where is_active = 1 and fullname LIKE "%a";
+----+---------------+-----+-----------+
| id | fullname      | age | is_active |
+----+---------------+-----+-----------+
|  4 | Amit Sharma   |  25 |         1 |
|  8 | Karan Mehta   |  35 |         1 |
| 13 | Riya Malhotra |  21 |         1 |
+----+---------------+-----+-----------+

mysql> select * from users where is_active = 1 and fullname LIKE "%a%";
+----+---------------+-----+-----------+
| id | fullname      | age | is_active |
+----+---------------+-----+-----------+
|  4 | Amit Sharma   |  25 |         1 |
|  5 | Neha Patel    |  22 |         1 |
|  7 | Priya Singh   |  27 |         1 |
|  8 | Karan Mehta   |  35 |         1 |
| 10 | Vikram Joshi  |  40 |         1 |
| 11 | Pooja Nair    |  28 |         1 |
| 13 | Riya Malhotra |  21 |         1 |
+----+---------------+-----+-----------+

mysql> select * from users limit 3;
+----+-------------+-----+-----------+
| id | fullname    | age | is_active |
+----+-------------+-----+-----------+
|  4 | Amit Sharma |  25 |         1 |
|  5 | Neha Patel  |  22 |         1 |
|  6 | Rohit Verma |  30 |         0 |
+----+-------------+-----+-----------+

mysql> select max(age) from users;
+----------+
| max(age) |
+----------+
|       40 |
+----------+

mysql> select min(age) from users;
+----------+
| min(age) |
+----------+
|       21 |
+----------+

mysql> select avg(age) from users;
+----------+
| avg(age) |
+----------+
|  28.5000 |
+----------+

mysql> select count(id) from users;
+-----------+
| count(id) |
+-----------+
|        10 |
+-----------+

SELECT *
FROM users
WHERE age > (SELECT AVG(age) FROM users);


mysql> select * from users t1 inner join likes t2 on t1.id = t2.user_id;
+----+-------------+-----+-----------+----+---------+---------+
| id | fullname    | age | is_active | id | user_id | post_id |
+----+-------------+-----+-----------+----+---------+---------+
|  4 | Amit Sharma |  25 |         1 |  7 |       4 |      21 |
|  5 | Neha Patel  |  22 |         1 |  8 |       5 |      21 |
|  6 | Rohit Verma |  30 |         0 |  9 |       6 |      22 |
|  7 | Priya Singh |  27 |         1 | 10 |       7 |      22 |
|  8 | Karan Mehta |  35 |         1 | 11 |       8 |      23 |
+----+-------------+-----+-----------+----+---------+---------+


-- Correct Order of SQL Clauses :

-- SELECT
-- FROM
-- WHERE
-- GROUP BY
-- HAVING
-- ORDER BY
