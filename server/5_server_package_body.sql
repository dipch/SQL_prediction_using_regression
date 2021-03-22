set serveroutput on;
set verify off;
SET SQLBLANKLINES ON;
create or replace package body server_package as
	procedure insert_car_brand(id in number, name in varchar2)
	IS
	v_bid car_brand.b_id%TYPE;
	v_bname car_brand.b_name%TYPE;
	cursor cur is
		select * from car_brand where b_id = id;
begin
	open cur;
	fetch cur into v_bid, v_bname;
	if cur%notfound then
		insert into car_brand values (id, name);
	else
		update car_brand
		set b_name = name
		where b_id = id;
	end if;
	close cur;
	
EXCEPTION
	WHEN TOO_MANY_ROWS THEN
		DBMS_OUTPUT.PUT_LINE('Many rows detected');
	WHEN NO_DATA_FOUND THEN
		DBMS_OUTPUT.PUT_LINE('Data not found');
	WHEN ZERO_DIVIDE THEN
		DBMS_OUTPUT.PUT_LINE('cannot divide by zero');
	WHEN OTHERS THEN
		DBMS_OUTPUT.PUT_LINE('Other errors');
end insert_car_brand;


	procedure insert_car_revenue(id in number, name in varchar2, year in number, revenue in number)
	IS
	
	v_rid car_revenue.r_id%TYPE;
	v_rname car_revenue.r_name%TYPE;
	v_ryear car_revenue.r_year%TYPE;
	v_rrevenue car_revenue.r_revenue%TYPE;
	cursor cur is
		select * from car_revenue where r_id = id;
begin
	open cur;
	fetch cur into v_rid, v_rname, v_ryear, v_rrevenue;
	insert into car_revenue values (id, name, year, revenue);
	close cur;
EXCEPTION
	WHEN TOO_MANY_ROWS THEN
		DBMS_OUTPUT.PUT_LINE('Many rows detected');
	WHEN NO_DATA_FOUND THEN
		DBMS_OUTPUT.PUT_LINE('Data not found');
	WHEN ZERO_DIVIDE THEN
		DBMS_OUTPUT.PUT_LINE('cannot divide by zero');
	WHEN OTHERS THEN
		DBMS_OUTPUT.PUT_LINE('Other errors');
end insert_car_revenue;




	procedure insert_user_update(id in number, name in varchar2, pass in varchar2)
	IS
	
	v_uid users.u_id%TYPE;
	v_uname users.u_name%TYPE;
	v_upass users.password%TYPE;
	cursor cur is
		select * from users where u_id = id;
begin
	open cur;
	fetch cur into v_uid, v_uname, v_upass;
	
	if cur%notfound then
		insert into users values (id, name, pass);
	else
		update users
		set u_name = name, password = pass
		where u_id = id;
	end if;
	close cur;
EXCEPTION
	WHEN TOO_MANY_ROWS THEN
		DBMS_OUTPUT.PUT_LINE('Many rows detected');
	WHEN NO_DATA_FOUND THEN
		DBMS_OUTPUT.PUT_LINE('Data not found');
	WHEN ZERO_DIVIDE THEN
		DBMS_OUTPUT.PUT_LINE('cannot divide by zero');
	WHEN OTHERS THEN
		DBMS_OUTPUT.PUT_LINE('Other errors');
end insert_user_update;


end server_package;
/
