set serveroutput on;
set verify off;
	
begin
	dbms_output.put_line(chr(10)||'---SELECT TABLE TO DELETE FROM---');
	dbms_output.put_line(chr(10)||'1. Brand');
	dbms_output.put_line(chr(10)||'2. Revenue');
	dbms_output.put_line(chr(10)||'3. Users');
end; 
/

set serveroutput on;
set verify off;

declare	
	id number;
	n number;
begin
	n := &Table;
	--id := &ID;
	if n = 1 then
		delete from car_brand where b_id = id;
		--delete from car_brand where b_id = 4;
	elsif n = 2 then
		delete from car_revenue where r_id = id;	
	elsif n = 3 then
		delete from users where u_id = 4;
	else
		dbms_output.put_line(chr(10)||'No such table exists.'); 
	end if;
commit;
end;
/