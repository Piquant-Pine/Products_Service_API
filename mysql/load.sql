-- TESTING FILES

USE sdc;

LOAD DATA local INFILE './csv10/product.test.csv'
INTO TABLE Products
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '\n';

SET foreign_key_checks = 0;
LOAD DATA local INFILE './csvClean/features.csv'
INTO TABLE Features
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '\n';

SET foreign_key_checks = 0;
LOAD DATA local INFILE './csv10/styles.test.csv'
INTO TABLE Styles
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS;

LOAD DATA local INFILE './csv10/skus.test.csv'
INTO TABLE SKUs
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS;

LOAD DATA local INFILE './csv10/photos.test.csv'
INTO TABLE Photos
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS;

LOAD DATA local INFILE './csv10/related.test.csv'
INTO TABLE Related_Product
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS;
