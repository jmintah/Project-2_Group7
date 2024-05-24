create table category(
	category_id varchar(30) not null primary key,
	category varchar(100)	
)
 select * from category
 
 create table subcategory(
	subcategory_id varchar(30) not null primary key,
	subcategory varchar(100)	
)
 select * from subcategory
 
 create table contacts(
	contact_id integer not null primary key,
	first_name varchar(30),
	 last_name varchar(30),
	 email varchar (255)
)
 select * from contacts
 
 drop table compaign
 
 create table compaign (
 	cf_id integer primary key, 
	contact_id integer,
	company_name varchar (255),
	description varchar (255),
	goal float,
	pledged float,
	outcome varchar(30),
	backers_count integer,
	country varchar(2),
	currency varchar(3),
	launch_date date,
	end_date date,
	category_id varchar (30),
	subcategory_id varchar(30),
	FOREIGN KEY(category_id) REFERENCES category(category_id),
	FOREIGN KEY(subcategory_id) REFERENCES subcategory(subcategory_id),
	FOREIGN KEY(contact_id) REFERENCES contacts(contact_id)	
 )
 select * from compaign