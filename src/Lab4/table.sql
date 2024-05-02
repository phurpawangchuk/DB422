CREATE TABLE Categories(
                           category_id int not null AUTO_INCREMENT,
                           category_name varchar(255),
                           PRIMARY key(category_id)
);

CREATE TABLE Products(
                         product_id INT not null AUTO_INCREMENT,
                         product_name varchar(255),
                         price int,
                         category_id int,
                         PRIMARY KEY(product_id),
                         CONSTRAINT FOREIGN KEY(category_id) REFERENCES Categories(category_id) on delete cascade on update CASCADE
);

