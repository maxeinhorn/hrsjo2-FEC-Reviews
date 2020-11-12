DROP DATABASE IF EXISTS reviews;

CREATE DATABASE reviews;

USE reviews;

CREATE TABLE users (
  id INT AUTO_INCREMENT,
  userId INT,
  username VARCHAR(25),
  PRIMARY KEY (id)
);

CREATE TABLE products (
  id INT AUTO_INCREMENT,
  productId INT,
  productName VARCHAR(100),
  PRIMARY KEY (id)
);

CREATE TABLE reviews (
  id INT AUTO_INCREMENT,
  userId INT,
  productId INT,
  reviewText VARCHAR(255),
  reviewDate DATE DEFAULT (CURRENT_DATE),
  broadAgeAppeal INT,
  lengthOfPlay INT,
  quality INT,
  value INT,
  average INT,
  FOREIGN KEY (userId)
    REFERENCES users(id),
  FOREIGN KEY (productId)
    REFERENCES products(id),
  PRIMARY KEY (id)
);

INSERT INTO users (userId, username) values (10001, 'maxeinhorn');
INSERT INTO users (userId, username) values (10002, 'maximus');
INSERT INTO users (userId, username) values (10003, 'maximillius');
INSERT INTO users (userId, username) values (10004, 'maximillian');
INSERT INTO users (userId, username) values (10005, 'maxwell');
INSERT INTO users (userId, username) values (10006, 'maximusprime');
INSERT INTO users (userId, username) values (10007, 'max');


INSERT INTO products (productID, productName) values (100001, 'Settlers of Catan');
INSERT INTO products (productID, productName) values (100002, 'Settlers of Bhutan');
INSERT INTO products (productID, productName) values (100003, 'Settlers of Gadol');
INSERT INTO products (productID, productName) values (100004, 'Settlers of Mars');
INSERT INTO products (productID, productName) values (100005, 'Settlers of Antarctica');
INSERT INTO products (productID, productName) values (100006, 'Settlers of Catalan');

INSERT INTO reviews (reviewText, broadAgeAppeal, lengthOfPlay, quality, value, average) values ('Such a fun game!', 5, 4, 5, 4, 4);





-- mysql -u root -p < database/schema.sql
