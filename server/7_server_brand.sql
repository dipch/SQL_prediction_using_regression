set serveroutput on;
set verify off;


select * from car_brand;

declare	
	id number;
	name varchar2(30);
begin
	id := &ID;
	name := '&Name';
	server_package.insert_car_brand(id, name);
EXCEPTION
	WHEN NO_DATA_FOUND THEN
		DBMS_OUTPUT.PUT_LINE('Data not found');

	WHEN OTHERS THEN
		DBMS_OUTPUT.PUT_LINE('Other errors');
end;
/