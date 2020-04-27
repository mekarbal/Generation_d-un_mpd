UPDATE `br3`.`administrator` SET `adminName` = 'admin1' WHERE `administrator`.`userId` = 1;
DELETE FROM `administrator` WHERE userId=3;


UPDATE `br3`.`customer` SET `creditCardInfo` = 'aaaaaaaaaaaaaaaaaaaaa' WHERE `customer`.`userId` = 2;
DELETE FROM `customer` WHERE userId=3;

UPDATE `br3`.`orderdetails` SET `productName` = 'tv FITCO' WHERE `orderdetails`.`orderDetailsId` = 1;
DELETE FROM `orderdetails` WHERE orderDetailsId=2.


UPDATE `br3`.`shippinginfo` SET `shippingRegionId` = '4' WHERE `shippinginfo`.`shippingId` = 2;
DELETE FROM `shippinginfo` WHERE shippingId=1;


UPDATE `br3`.`user` SET `password` = '12345' WHERE `user`.`userId` = 2;
DELETE FROM `user` WHERE userId=2;


create user:
CREATE USER 'mehdi'@'localhost' IDENTIFIED BY '123';
GRANT ALL PRIVILEGES ON * . * TO 'mehdi'@'localhost';
GRANT CREATE, SELECT ON * . * TO 'mehdi'@'localhost';


/* revoquer toutes les privileges */

REVOKE ALL PRIVILEGES ON *.* FROM 'mehdi'@'localhost';