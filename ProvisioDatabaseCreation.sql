/*drop database if exists*/
DROP DATABASE IF EXISTS provisio;

/*create database*/
CREATE DATABASE provisio;

USE provisio;

/*drop user if exists*/ 
DROP USER IF EXISTS 'provisio'@'localhost';

/* create provisio_user and grant them all privileges to the provisio database */ 
CREATE USER 'provisio'@'localhost' IDENTIFIED WITH mysql_native_password BY 'provisio';

/* grant all privileges to the provisio database to user provisio on localhost */ 
GRANT ALL PRIVILEGES ON provisio.* TO'provisio'@'localhost';

/* create user table */
CREATE TABLE users
(
    user_id         INT             NOT NULL        AUTO_INCREMENT,
    first_name      VARCHAR(25)     NOT NULL,
    last_name       VARCHAR(25)     NOT NULL,
    email_address   VARCHAR(50)     NOT NULL,
    phone_number    INT             NOT NULL,
    password        VARCHAR(50)     NOT NULL,
    password_salt   VARCHAR(25)     NOT NULL,
    PRIMARY KEY(user_id)
);

/* create room table */
CREATE TABLE room
(
    room_id         INT             NOT NULL        AUTO_INCREMENT,
    size            VARCHAR(50)     NOT NULL,
    cost            FLOAT           NOT NULL,
    PRIMARY KEY(room_id)
);

/* create amenities table */
CREATE TABLE amenities
(
    amenities_id    INT             NOT NULL        AUTO_INCREMENT,
    amenities_name  VARCHAR(50)     NOT NULL,
    cost            FLOAT           NOT NULL,
    PRIMARY KEY(amenities_id)
);

/* create reservation table */
CREATE TABLE reservations
(
    reservation_id   INT             NOT NULL       AUTO_INCREMENT,
    check_in         DATE            NOT NULL,
    check_out        DATE            NOT NULL,
    guest_name       VARCHAR(50)     NOT NULL,
    location_name    VARCHAR(50)     NOT NULL,
    number_of_guests INT             NOT NULL,
    loyalty_points   INT             NOT NULL,
    user_id          INT             NOT NULL,
    room_id     INT             	 NOT NULL,
    PRIMARY KEY(reservation_id),
    CONSTRAINT       fk_user        FOREIGN KEY(user_id)       	REFERENCES users(user_id),
    CONSTRAINT       fk_room    	FOREIGN KEY(room_id)  		REFERENCES room(room_id)
);

/* create reservation_amenities table */
CREATE TABLE reservation_amenities
(
    reservation_id  INT             NOT NULL,
    amenities_id    INT             NOT NULL,
    CONSTRAINT fk_reservations      FOREIGN KEY(reservation_id)    REFERENCES reservations(reservation_id),
    CONSTRAINT fk_amenities         FOREIGN KEY(amenities_id)      REFERENCES amenities(amenities_id)
);


/* insert user data */
INSERT INTO users(first_name, last_name, email_address, phone_number, password, password_salt)
  VALUES("Olivia", "Doe", "Olivia.Doe@email.com", 5551234, "JE3VDHquyd9LRlLcWJTXUDY8TSSB0h7sJvol8qFHaB0=", "DMeugPY69PNgs8mJPtaj");
INSERT INTO users(first_name, last_name, email_address, phone_number, password, password_salt)
  VALUES("Thomas", "Johnson", "Thomas.Johnson@email.com", 5551111, "aZhFTDy/7X1Iq0HNuZlPLOJ2d6MFTnQaPAbpLaaoI+U=", "ELqbGocpsEKHv2qZKWF6");
INSERT INTO users(first_name, last_name, email_address, phone_number, password, password_salt)
  VALUES("Peter", "Kirilenko", "Peter.Kirilenko@email.com", 5553333, "zX1Eog6sweg/suHH6FQCO5Ut1NrinHu8GSQiMLmxGqA=", "wAKDdjBrM3vNLgRt0z/8");

/* insert room data */
INSERT INTO room (size, cost)
VALUES('double','110');
INSERT INTO room (size, cost)
VALUES('queen','125');
INSERT INTO room (size, cost)
VALUES('double_queen','150');
INSERT INTO room (size, cost)
VALUES('king','165');

/* insert amenities data */
INSERT INTO amenities(amenities_name, cost) 
  VALUES('WI_FI','12.99');
INSERT INTO amenities(amenities_name, cost) 
  VALUES('Breakfast','8.99');
INSERT INTO amenities(amenities_name, cost) 
  VALUES('Parking','19.99');

/* insert reservations data */
INSERT INTO reservations(check_in, check_out, guest_name, location_name, number_of_guests, loyalty_points, user_id, room_id)
  VALUES('2022-09-01', '2022-09-03', 'Olivia', 'Chicago', 3, 450, 1, 1);
INSERT INTO reservations(check_in, check_out, guest_name, location_name, number_of_guests, loyalty_points, user_id, room_id)
  VALUES('2022-10-30', '2022-11-01', 'Thomas', 'Orlando', 2, 300, 2, 2);
INSERT INTO reservations(check_in, check_out, guest_name, location_name, number_of_guests, loyalty_points, user_id, room_id)
  VALUES('2022-12-23', '2022-12-27', 'Peter', 'Minneapolis', 2, 600, 3, 3);


/* insert reservation_amenities data */
INSERT INTO reservation_amenities(reservation_id, amenities_id) 
  VALUES(1, 1);
INSERT INTO reservation_amenities(reservation_id, amenities_id) 
  VALUES(1, 2);
INSERT INTO reservation_amenities(reservation_id, amenities_id) 
  VALUES(1, 3);
INSERT INTO reservation_amenities(reservation_id, amenities_id) 
  VALUES(2, 1);
INSERT INTO reservation_amenities(reservation_id, amenities_id) 
  VALUES(2, 2);


