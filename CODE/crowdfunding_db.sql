CREATE TABLE contacts (
    contact_id int NOT NULL,
    first_name varchar (225)  NOT NULL,
    last_name varchar (225)  NOT NULL,
    email varchar (225)  NOT NULL,
	primary key (contact_id)
);
CREATE TABLE category (
    category_id varchar (225)   NOT NULL,
    category varchar (225)  NOT NULL,
	primary key (category_id)
);
CREATE TABLE subcategory (
    subcategory_id varchar (225)  NOT NULL,
    subcategory varchar (225)  NOT NULL,
	primary key (subcategory_id)
);

CREATE TABLE campaign (
	cf_id int  NOT NULL,
	contact_id int   NOT NULL,
	company_name varchar(100)   NOT NULL,
	description text   NOT NULL,
    goal numeric(10,2)   NOT NULL,
    pledged numeric(10,2)   NOT NULL,
    outcome varchar(50)   NOT NULL,
    backers_count int   NOT NULL,
    country varchar(10)   NOT NULL,
    currency varchar(10)   NOT NULL,
    launched_date date   NOT NULL,
    end_date date   NOT NULL,
    category_id varchar(10)   NOT NULL,
    subcategory_id varchar(10)   NOT NULL,
    primary key (cf_id), 
	foreign key (contact_id) references contacts(contact_id),
	foreign key (category_id) references category(category_id),
	foreign key (subcategory_id) references subcategory(subcategory_id));
	
Select* from contacts 
Select* from category	
select* from subcategory
select* from campaign 