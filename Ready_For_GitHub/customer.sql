/*
Description:  A retail company maintains the data of its customers in the CUSTOMER table. 
Write a query to print the IDs and the NAMEs of the customers, sorted by CUSTOMER.NAME in descending order. 
If two or more customers have the same CUSTOMER.NAME, then sort these by CUSTOMER.ID in ascending order.
*/

CREATE TABLE Customers (
    ID int NOT NULL AUTO_INCREMENT,
    Name varchar(255) NOT NULL,
	Country varchar(255) NOT NULL,
    Credits int,
    PRIMARY KEY (ID)
);


insert into Customers(Name, Country, Credits) values('Frances White', 'USA', 200350);
insert into Customers(Name, Country, Credits) values('Carolyn Bradley', 'UK', 15354);
insert into Customers(Name, Country, Credits) values('Annie Fernandez', 'France', 359200);
insert into Customers(Name, Country, Credits) values('Ruth Hanson', 'Albania', 1060);
insert into Customers(Name, Country, Credits) values('Paula Fuller', 'USA', 14789);
insert into Customers(Name, Country, Credits) values('Bonnie Johnston', 'China', 100243);
insert into Customers(Name, Country, Credits) values('Ruth Gutierrez', 'USA', 998999);
insert into Customers(Name, Country, Credits) values('Ernest Thomas', 'Canada', 500500);
insert into Customers(Name, Country, Credits) values('Joe Garza', 'UK', 18782);
insert into Customers(Name, Country, Credits) values('Anne Harris', 'USA', 158367);

-- ==============================================================
--Query Section
-- ==============================================================
Set @NameCount = (select count(*) from Customers GROUP BY Name HAVING count(Name) > 1);

SELECT ID, Name
FROM Customers
ORDER BY
	CASE
		WHEN @NameCount > 1 THEN ID 
	END ASC,
	CASE
		WHEN @NameCount =1 THEN Name
	END DESC