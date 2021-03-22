clear screen;

DROP TABLE car_brand cascade constraints;
DROP TABLE car_revenue cascade constraints;
DROP TABLE users cascade constraints;
DROP TABLE car_model2 cascade constraints;

CREATE TABLE car_brand (
	b_id number, 
	b_name varchar2(15),  
        PRIMARY KEY(b_id)); 
		
CREATE TABLE car_revenue (
	r_id number, 
	r_name varchar2(15), 
	r_year number, 
	r_revenue number);

--CREATE TABLE car_model (
	--m_id number,
	--m_name varchar2(15),
	--m_hp number,
	--m_price number);	

CREATE TABLE users (
	u_id number,
	u_name varchar2(10),
	password varchar2(10),        
	PRIMARY KEY(u_id));

CREATE TABLE car_model2 (
	m_id number,
	m_name varchar2(15),
	m_hp number,
	m_price number);		
	
insert into car_brand values (1, 'toyota'); 
insert into car_brand values (2, 'audi'); 
insert into car_brand values (3, 'bmw'); 

insert into car_revenue values( 1, 'toyota', 2016, 67962 );
insert into car_revenue values( 1, 'toyota', 2017, 70635 );
insert into car_revenue values( 1, 'toyota', 2018, 73162 );
insert into car_revenue values( 1, 'toyota', 2019, 78505 );


insert into car_revenue values( 2, 'audi', 2016, 51074 );
insert into car_revenue values( 2, 'audi', 2017, 50611 );
insert into car_revenue values( 2, 'audi', 2018, 47982 );
insert into car_revenue values( 2, 'audi', 2019, 43565 );


insert into car_revenue values( 3, 'bmw', 2016, 55992 );
insert into car_revenue values( 3, 'bmw', 2017, 56073 );
insert into car_revenue values( 3, 'bmw', 2018, 56089 );
insert into car_revenue values( 3, 'bmw', 2019, 57435 );

insert into car_model2 values(1, 'Corolla', 255, 22019);
insert into car_model2 values(2, 'Allion', 305, 32144);
insert into car_model2 values(3, 'Premio', 340, 55393);



insert into users values (1, 'toyota', '123');
insert into users values (2, 'audi', '456');
insert into users values (3, 'bmw', '789');

commit;

