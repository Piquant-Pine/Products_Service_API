DROP DATABASE IF EXISTS sdc;

CREATE DATABASE sdc;

USE sdc;

CREATE TABLE Products (
  product_id INT,
  name VARCHAR(200) NOT NULL,
  slogan VARCHAR(200) NOT NULL,
  description VARCHAR(500) NOT NULL,
  category VARCHAR(100) NOT NULL,
  default_price DECIMAL(20, 2) NOT NULL,
  PRIMARY KEY(product_id)
);

CREATE TABLE Features (
  feature_id INT,
  product_id INT NOT NULL,
  feature VARCHAR(100) NOT NULL,
  value VARCHAR(100) DEFAULT NULL,
  PRIMARY KEY(feature_id),
  FOREIGN KEY(product_id) REFERENCES Products(product_id) ON DELETE CASCADE
);

CREATE TABLE Styles (
  style_id INT,
  product_id INT NOT NULL,
  name VARCHAR(100) NOT NULL,
  sale_price VARCHAR(100) DEFAULT 'N/A',
  original_price INT NOT NULL,
  default_style TINYINT DEFAULT 0,
  PRIMARY KEY(style_id),
  FOREIGN KEY(product_id) REFERENCES Products(product_id) ON DELETE CASCADE
);

-- IS SKU NUMBER A FIELD OR UNIQUE ID?
CREATE TABLE SKUs (
  sku_id INT NOT NULL,
  style_id INT NOT NULL,
  size VARCHAR(20) NOT NULL,
  quantity INT NOT NULL,
  PRIMARY KEY(sku_id),
  FOREIGN KEY(style_id) REFERENCES Styles(style_id) ON DELETE CASCADE
);

CREATE TABLE Photos (
  photo_id INT NOT NULL,
  style_id INT NOT NULL,
  url VARCHAR(1000) NOT NULL,
  thumbnail_url VARCHAR(1000) NOT NULL,
  PRIMARY KEY(photo_id),
  FOREIGN KEY(style_id) REFERENCES Styles(style_id) ON DELETE CASCADE
);

CREATE TABLE Related_Product (
  id INT,
  current_product_id INT NOT NULL,
  related_product_id INT NOT NULL,
  PRIMARY KEY(id),
  FOREIGN KEY(related_product_id) REFERENCES Products(product_id) ON DELETE CASCADE,
  FOREIGN KEY(current_product_id) REFERENCES Products(product_id) ON DELETE CASCADE
);

-- constraint relationship UNIQUE KEY (product_id, related_id)
