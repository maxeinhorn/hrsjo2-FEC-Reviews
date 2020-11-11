DROP DATABASE IF EXISTS reviews;

CREATE DATABASE reviews;

USE reviews;

CREATE TABLE users (
  id INT AUTO_INCREMENT,
  userId INT,
  username VARCHAR(25),
  PRIMARY KEY (id)
)

CREATE TABLE products (
  id INT AUTO_INCREMENT,
  productId INT,
  PRIMARY KEY (id)
)

CREATE TABLE reviews (
  id INT AUTO_INCREMENT,
  userId INT,
  productId INT,
  fullText VARCHAR(255),
  reviewDate DATE,
  broadAgeAppeal INT,
  lengthOfPlay INT,
  quality INT,
  value INT,
  average INT,
  FOREIGN KEY (userId)
    REFERENCES users(id)
  FOREIGN KEY (productId)
    REFERENCES products(id)
)

