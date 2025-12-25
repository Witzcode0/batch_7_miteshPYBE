-- Create function

DELIMITER $$

CREATE FUNCTION cube(n INT)
RETURNS INT
DETERMINISTIC
BEGIN
    RETURN n * n * n;
END $$

DELIMITER ;

-- call function

use blogs;
select cubex(10);


DELIMITER //

CREATE FUNCTION calculate_area(length DECIMAL(8, 2), width DECIMAL(8, 2))
  RETURNS DECIMAL(12, 2)
  DETERMINISTIC
BEGIN
  DECLARE area DECIMAL(12, 2);
  SET area = length * width;
  RETURN area;
END;

//

DELIMITER ;


SELECT calculate_area(10.5, 7.2); 