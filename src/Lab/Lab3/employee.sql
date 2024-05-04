
INSERT INTO employee values(1,'Alice',10.5,null),
                            (2,'Bob',15,null);

CREATE TRIGGER before_hourly_pay_update
    BEFORE UPDATE on employee
    FOR EACH ROW
    SET NEW.salary = (NEW.hourly_pay * 2080);

CREATE TRIGGER before_hourly_pay_insert
    BEFORE INSERT ON employee
    FOR EACH ROW
    SET NEW.salary = NEW.hourly_pay * 2048;

INSERT INTO employee VALUES(3,'Cathy',20,null);
SELECT * FROM employee;

CREATE TABLE houly_pay_log(
    id int not null PRIMARY KEY AUTO_INCREMENT,
    hourly_pay int,
    updated date default DATE()
)

CREATE TRIGGER after_hourly_pay_update
    AFTER UPDATE on employee
    FOR EACH ROW
    SET NEW.salary = (NEW.hourly_pay * 2080);

