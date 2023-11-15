DROP TABLE IF EXISTS campaign;
DROP TABLE IF EXISTS subcategory;
DROP TABLE IF EXISTS category;
DROP TABLE IF EXISTS contacts;

CREATE TABLE contacts (
	contact_id int NOT NULL PRIMARY KEY,
	first_name varchar (25),
	last_name varchar (25),
	email varchar (55)
);

CREATE TABLE category (
	category_id varchar (25) NOT NULL PRIMARY KEY,
	category varchar (25)
);

CREATE TABLE subcategory (
	subcategory_id varchar (25) NOT NULL PRIMARY KEY,
	subcategory varchar (25)
);

CREATE TABLE campaign (
	cf_id int NOT NULL PRIMARY KEY,
	contact_id int REFERENCES contacts(contact_id),
	company_name varchar (55),
	description varchar (55),
	goal numeric(10,2),
	pledged numeric(10,2),
	outcome varchar(55),
	backers_count int,
	country varchar (25),
	currency varchar (25),
	launched_date date,
	end_date date,
	category_id varchar (25) REFERENCES category(category_id),
	subcategory_id varchar (25) REFERENCES subcategory(subcategory_id)
);

Select * From campaign;
Select * From subcategory;
Select * From category;
Select * From contacts;



