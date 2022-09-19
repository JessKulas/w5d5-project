INSERT INTO mechanic (first_name, last_name)
VALUES
	('Jimmy', 'Hulk'), 
	('Greg', 'Smith'), 
	('Sarah', 'Logan');

INSERT INTO inventory (make, model, "year", color, amount, serial_number)
VALUES
	('Chevy', 'Camero', '2016', 'red', '25000', 'ACB123D789'),
	('Toyota', 'RAV4', '2022', 'white', '37000', 'AA11111111'),
	('Honda', 'CR-V', '2012', 'blue', '17000', 'BBBBB33333');



INSERT INTO salesperson  (first_name, last_name, inventory_id)
VALUES
	('William', 'Clark', 1),
	('Zac', 'Brown', 2);
	
INSERT INTO customer (first_name, last_name, phone_number, email, address)
VALUES
	('Jill', 'Geller', '5555555555', 'go@gmail.com', '111 S main st'), 
	('David', 'Glenn', '1111111111', 'away@gmail.com', '671 Broadway'), 
	('Ken', 'Adams', '123456789', 'evillaugh@gmail.com', '123 grave passing way');
	
INSERT INTO payment (total, salesperson_id, customer_id, inventory)
VALUES
	('25000', 1, 1, 1);

INSERT INTO service (servicepayment_id, mechanic_id, service_type, amount, customer_id)
VALUES
	(1, 2, 'oil change', '35', 2);


INSERT INTO servicepayment (serivetotal, mechanic_id, customer_id, service_id)
VALUES
	('35', 2, 2, 1);
	



CREATE OR REPLACE PROCEDURE addcustomer (
	_first_name varchar(255),
	_last_name varchar(255),
	_phone_number varchar(255),
	_email varchar(255), 
	_address varchar(255)
	
)
LANGUAGE plpgsql AS $$
BEGIN
	INSERT INTO customer 
		(first_name, last_name, phone_number, email, address)
	VALUES
		(_first_name, _last_name, _phone_number, _email, _address);
END;
$$

CALL addcustomer ('Jean', 'Thomas', '51510110101', 'hi@aol.com', '1 main dr');

CREATE OR REPLACE PROCEDURE addMechanic (
	_first_name varchar(255),
	_last_name varchar(255)	
)

LANGUAGE plpgsql AS $$
BEGIN
	INSERT INTO mechanic  
		(first_name, last_name)
	VALUES
		(_first_name, _last_name);
END;
$$

CALL addMechanic ('Dave', 'Hudgins');


CREATE OR REPLACE PROCEDURE addInventory (
	_make varchar(255), 
	_model varchar (255),
	"_year" varchar(255), 
	_color varchar(255), 
	_amount float8, 
	_serial_number varchar(255)
)

LANGUAGE plpgsql AS $$
BEGIN
	INSERT INTO inventory  
		(make, model, "year", color, amount, serial_number)
	VALUES
		(_make, _model, "_year", _color, _amount, _serial_number);
END;
$$

CALL addInventory ('Audi', 'R8', '2019', 'charcoal', '180000', '123456789');



