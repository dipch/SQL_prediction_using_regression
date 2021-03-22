create or replace package server_package as
	procedure insert_car_brand(id in number, name in varchar2);
	procedure insert_car_revenue(id in number, name in varchar2, year in number, revenue in number);
	procedure insert_user_update(id in number, name in varchar2, pass in varchar2);

	
end server_package;
/
