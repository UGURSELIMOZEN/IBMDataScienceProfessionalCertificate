-- 0. Drop table INSTRUCTOR in case it already exists
drop table INSTRUCTOR
;



--1. Create table INSTRUCTOR

CREATE TABLE INSTRUCTOR
  (ins_id INTEGER PRIMARY KEY NOT NULL, 
   lastname VARCHAR(15) NOT NULL, 
   firstname VARCHAR(15) NOT NULL, 
   city VARCHAR(15), 
   country CHAR(2)
  )
;



--2A. Insert single row for Rav Ahuja

INSERT INTO INSTRUCTOR
  (ins_id, lastname, firstname, city, country)
  
VALUES 
  (1, 'Ahuja', 'Rav', 'Toronto', 'CA')
;



--2B. Insert the two rows for Raul and Hima

INSERT INTO INSTRUCTOR
  
VALUES
  (2, 'Chong', 'Raul', 'Toronto', 'CA'),
  
(3, 'Vasudevan', 'Hima', 'Chicago', 'US')
;



--3. Select all rows in the table

SELECT * FROM INSTRUCTOR
;



--3b. Select firstname, lastname and country where city is Toronto

SELECT firstname, lastname, country from INSTRUCTOR where city='Toronto';



--4. Change the city for Rav to Markham

UPDATE INSTRUCTOR SET city='Markham' where ins_id=1
;



--5. Delete the row for Raul Chong

DELETE FROM INSTRUCTOR where ins_id=2
;



--5b. Retrieve all rows from the table

SELECT * FROM INSTRUCTOR 
;











-----------  MY SOLUTION SQL SCRIPT -------------------------------------------------------------------



create table INSTRUCTOR (
		ins_id integer  PRIMARY KEY NOT NULL,
		lastname  varchar(24) NOT NULL ,
		firstname varchar(24) NOT NULL ,
		city varchar(24),
		country char(2) 
) ;


INSERT INTO INSTRUCTOR
	(ins_id , lastname , firstname , city , country)
VALUES(1 , 'Ahuja' , 'Rav' , 'Toronto' , 'CA') ;

INSERT INTO INSTRUCTOR
	(ins_id , lastname , firstname , city , country)
VALUES(2 , 'Chong' , 'Raul' , 'Toronto' , 'CA')  ,
				(3 , 'Vasudevan' , 'Hima' , 'Chicago' , 'US') ;


SELECT * from INSTRUCTOR ;


SELECT firstname , lastname , country FROM INSTRUCTOR WHERE city = 'Toronto'  ;

UPDATE INSTRUCTOR SET  city = 'Markham'  WHERE ins_id = 1 ;

DELETE FROM INSTRUCTOR WHERE  ins_id = 2 ;

SELECT * from INSTRUCTOR ;