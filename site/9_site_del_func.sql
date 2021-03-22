select * from car_model;

set serveroutput on;
set verify off;

declare	
	
begin
	dbms_output.put_line(chr(10)||'---SELECT TABLE TO DELETE FROM---');
	dbms_output.put_line(chr(10)||'1. Car Model');
	dbms_output.put_line(chr(10)||'2. Car Revenue');
end; 
/

declare	
	id number;
	n number;
begin
	n := &Table;
	id := &ID;
	if n = 1 then
		delete from car_model where m_id = id;
	elsif n = 2 then
		delete from car_revenue@server1 where r_id = id;	
	else
		dbms_output.put_line(chr(10)||'No such table exists.'); 
	end if;
commit;
end;
/