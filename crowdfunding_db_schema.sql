CREATE TABLE contact(
	contact_id int NOT NULL,
	first_name VARCHAR(100) NOT NULL,
	last_name VARCHAR(100)  NOT NULL,
	email VARCHAR(200) NOT NULL,
  PRIMARY KEY (contact_id)
);

SELECT * FROM contact

CREATE TABLE category(
	category_id VARCHAR(100) NOT NULL,
	category VARCHAR (100) NOT NULL,
  PRIMARY KEY (category_id)
);

SELECT * FROM category


CREATE TABLE subcategory(
	subcategory_id VARCHAR (100) NOT NULL,
	subcategory VARCHAR (100)  NOT NULL,
  PRIMARY KEY (subcategory_id)
);

SELECT * FROM subcategory
 


CREATE TABLE campaign (
	cf_id int NOT NULL,
	contact_id int NOT NULL,
	company_name  varchar(200) NOT NULL,
	description   text NOT NULL,
	goal   decimal(10,2) NOT NULL,
	pledged  decimal(10,2) NOT NULL,
	outcome   varchar(255) NOT NULL,
	backers_count int NOT NULL,
	country  varchar(50) NOT NULL,
	currency varchar(10) NOT NULL,
	launched_date date NOT NULL,
	end_date date NOT NULL,
	category_id  VARCHAR (100) NOT NULL,
	subcategory_id  VARCHAR(100)  NOT NULL,
 PRIMARY KEY (cf_id),
 FOREIGN KEY (category_id) REFERENCES category(category_id),
 FOREIGN KEY  (subcategory_id) REFERENCES subcategory(subcategory_id),	
 FOREIGN KEY (contact_id) REFERENCES contact(contact_id)
);
ALTER TABLE campaign ALTER COLUMN company_name TYPE varchar(200);

SELECT * FROM campaign
