set serveroutput on;
set verify off;

declare
			
begin
	
	dbms_output.put_line(chr(10)||'--SELECT TABLE TO SEARCH FROM--');
	dbms_output.put_line(chr(10)||'1. Car Model');
	dbms_output.put_line(chr(10)||'2. Car Revenue');
end;
/

set serveroutput on;
set verify off;

declare	
	tableNo  number;
	name varchar2(20);
	msg varchar2(1000);
begin	
	tableNo:= &table;
	name:= '%&name%';
	if tableNo = 1 then
		msg := site_package.site_search_model_func(name);
	elsif tableNo = 2 then
		msg := site_package.site_search_revenue_func(name);
	else
		msg := 'No such table exists!';
	end if;
	dbms_output.put_line(msg);
end;
/	