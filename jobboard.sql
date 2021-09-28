USE jobboard;

CREATE TABLE advertisements(
	id int primary key,
    title varchar(255),
    content text,
    short_description varchar(255),
    company_id int,
    address varchar(255),
    wages int,
    publish_date datetime,
    contract_id int,
    foreign key (contact_id) references contracts(id),
    foreign key (company_id) references companies(id)
);

CREATE TABLE contracts(
	id int primary key,
    title varchar(255)
);

CREATE TABLE companies(
	id int primary key,
    title varchar(255),
    address varchar(255),
    advertisements_id int,
    foreign key (advertisements_id) references advertisements(id)
);

CREATE TABLE people(
	id int primary key,
    username varchar(255),
    user_password varchar(255),
    email varchar(255),
    phone int
);