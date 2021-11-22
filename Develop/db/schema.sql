-- DROP DATABASE
DROP DATABASE IF EXISTS ecommerce_db;

-- CREATE DATABASE
CREATE DATABASE ecommerce_db;
USE ecommerce_db;

CREATE TABLE Category 
(
Category INTEGER AUTO_INCREMENT, 
category_name varchar (100) NOT NULL,
PRIMARY KEY(category_name)
);
INSERT INTO Category (category_name)
Values ('Shirts', 'Shorts', 'Music', 'Hats', 'Shoes')
 
 SELECT * FROM Category;

CREATE TABLE Product
(
Seeds Integer NOT NULL  AUTO_INCREMENT,
product_name varchar(100) NOT NULL,
price DECIMAL(2,2) NOT NULL ,
stock Integer NOT NULL default ('stock' 10),
category_id INTEGER REFERENCES Category id (category_id)
PRIMARY KEY (Seeds)
FOREIGN KEY (Category)
)
INSERT INTO Seeds(product_name, price, stock, category_id)
VALUES ('Plain T-Shirt', 14.99, 14, 1), ('Running Sneakers', 90.0, 25, 5),
('Branded Baseball Hat', 22.99, 12, 4), ('Top 40 Music Compilation Vinyl Record', 12.99, 50, 3)
('Cargo Shorts',29.99 22, 2);

CREATE TABLE Tag(
Tag INTEGER NOT NULL PRIMARY KEY (Tag) AUTO_INCREMENT,
tag_name varchar (30)
)
INSERT INTO Tags(tag_name)
VALUES('Rock Music', 'Pop Music', 'Red', 'Green', 'Blue', 'White', 'Gold', 'Pop Culture'); 

CREATE TABLE ProductTag(
proTag INTEGER NOT NULL PRIMARY KEY (proTag) AUTO_INCREMENT,
product_id INTEGER REFERENCES product_id FOREIGN KEY (Seeds),
tag_id INTEGER REFERENCES tag_id FOREIGN KEY (Tag))

INSERT INTO ProductTag(product_id, tag_id)
Values ( '1', '6',), ('1', '7'), ('1', '8'), ('2', '6'), ('3', '1'), ('3', '3'), ('3', '4'), ('3','5'), ('4', '1'), ('4', '2'), ('4', '8'), ('3','5');

