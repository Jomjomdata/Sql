CREATE DATABASE  JOMJOM;

CREATE TABLE VEHICLES(
VEHICLEID INT,
BRAND VARCHAR(30),
MODEL VARCHAR(30),
OWNER VARCHAR (30),
MILEAGE INT,
FUELCAPACITY INT
);

INSERT INTO VEHICLES(VEHICLEID,BRAND,MODEL,OWNER,MILEAGE,FUELCAPACITY)
VALUES
(1,'TOYOTA','AVENSIS','ROLAND',14000,20),
(2,'HONDA','ACCORD','SAM',300,20),
(3,'LINCOLN','NAVIGATOR','JOMILJU',1000,30),
(4,'PORSHE','CAYENNE','AYO',2000,15),
(5,'BUGATTI','VEYRON','RAYMOND',1000,19),
(6,'LAMBORGHINI','AVENTADOR','TAIWO',200,14),
(7,'AUDI','R8','AKEEM',100,20) ;

SELECT * FROM VEHICLES;

SELECT BRAND, MODEL, OWNER
FROM VEHICLES;

SELECT CONCAT(BRAND,' ',MODEL)AS CAR_MODEL
FROM VEHICLES;

SELECT UPPER(MODEL), LOWER(BRAND)
FROM VEHICLES;

SELECT *
FROM VEHICLES
WHERE MILEAGE >= 300 and MILEAGE <=3000;

  aggregate functions - max, min, count, avg, sum
  select  max(mileage) from vehicles;

  select AVG(mileage) from VEHICLES;

  select SUM(mileage) from VEHICLES;

  select COUNT(vehicleid) from VEHICLES;

     arithmetic operators (- + * /  ** %)
	 select (mileage + fuelcapacity), (mileage *fuelcapacity), (MILEAGE - FUELCAPACITY)
	 from VEHICLES

	   logical operators - and, or, not
	   select * from VEHICLES
	   where mileage > 2000 or FUELCAPACITY > 20;

	      comparison operators >, >=, !>, !>=, =, !=, <, <=, !<, !<=

		  predicates( like, between and in)
		  select *
		  from VEHICLES
		  where MILEAGE >= 300 and MILEAGE <= 3000;

		  select *
		  from VEHICLES
		  where MILEAGE between 300 and 3000

		  select *
		  from VEHICLES
		  where MILEAGE = 100 or MILEAGE = 1000 or MILEAGE = 14000;

		  select *
		  from VEHICLES
		  where MILEAGE in (100, 1000, 14000);


		  select *
		  from VEHICLES
		  where brand like '%i%'