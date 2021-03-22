clear screen;

DROP TABLE car_model cascade constraints;
DROP TABLE car_revenue2 cascade constraints;

CREATE TABLE car_model (
	m_id number,
	m_name varchar2(15),
	m_hp number,
	m_price number);	
	
CREATE TABLE car_revenue2 (
	r_id number, 
	r_name varchar2(15), 
	r_year number, 
	r_revenue number);
commit;

