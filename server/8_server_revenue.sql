set serveroutput on;
set verify off;


select * from car_revenue;

declare	

begin
	server_package.insert_car_revenue(4, 'ford', 2016, 19876);
	server_package.insert_car_revenue(4, 'ford', 2017, 23003);
	server_package.insert_car_revenue(4, 'ford', 2018, 25998);
	server_package.insert_car_revenue(4, 'ford', 2019, 29392);
	--server_package.insert_car_revenue(4, 'ford', 2020, 32746);
end;
/
select * from car_revenue;