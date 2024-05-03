
INSERT INTO employee values(1,'Alice',10.5,null),
                            (2,'Bob',15,null);

CREATE TRIGGER before_hourly_pay_update
    BEFORE UPDATE on employee
    FOR EACH ROW
    SET NEW.salary = (NEW.hourly_pay * 2080);


CREATE TRIGGER after_hourly_pay_update
    AFTER UPDATE on employee
    FOR EACH ROW
    SET NEW.salary = (NEW.hourly_pay * 2080);

