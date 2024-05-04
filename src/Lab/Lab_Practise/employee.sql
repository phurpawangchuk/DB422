
INSERT INTO employee values(4,'emp4',11,'Clerk',null);
INSERT INTO employee values(5,'emp5',14,'Manager',null);
INSERT INTO employee values(6,'emp6',16,'PR',null);
INSERT INTO employee values(7,'emp7',17,'HR',null);
INSERT INTO employee values(8,'emp8',18,'Adm',null);
INSERT INTO employee values(9,'emp9',13,'Clerk',null);
INSERT INTO employee values(10,'emp10',18,'Accoutant',null);
INSERT INTO employee values(11,'emp11',6,'PR',null);
INSERT INTO employee values(12,'emp12',9,'HR',null);
INSERT INTO employee values(13,'emp13',15,'Adm',null);

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

