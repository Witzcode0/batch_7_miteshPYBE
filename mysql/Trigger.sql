-- Syntax
-- CREATE TRIGGER trigger_name
-- {BEFORE | AFTER} {INSERT | UPDATE | DELETE} ON table_name
-- FOR EACH ROW
-- BEGIN
--     -- Trigger action statements go here
-- END;

CREATE TABLE orders (
  order_id INT AUTO_INCREMENT PRIMARY KEY,
  order_date DATE,
  customer_name VARCHAR(255),
  total_amount DECIMAL(10, 2)
);

CREATE TABLE order_log (
  log_id INT AUTO_INCREMENT PRIMARY KEY,
  log_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
  order_id INT,
  order_date DATE,
  customer_name VARCHAR(255),
  total_amount DECIMAL(10, 2)
);


DELIMITER //

CREATE TRIGGER log_new_order
AFTER INSERT ON orders
FOR EACH ROW
BEGIN
  INSERT INTO order_log (order_id, order_date, customer_name, total_amount)
  VALUES (NEW.order_id, NEW.order_date, NEW.customer_name, NEW.total_amount);
END

//
DELIMITER ;


INSERT INTO orders (order_date, customer_name, total_amount)
VALUES ('2023-09-08', 'John Doe', 100.00);
