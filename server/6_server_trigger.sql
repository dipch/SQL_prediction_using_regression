set serveroutput on;

create or replace trigger brand_inserted
after insert
on car_brand
for each row

begin
	dbms_output.put_line(chr(10)||'Data inserted in table Brand');
end;
/


create or replace trigger revenue_inserted
after insert
on car_revenue
for each row

begin
	dbms_output.put_line(chr(10)||'Data inserted in table Revenue');
end;
/


create or replace trigger user_inserted
after insert
on users
for each row

begin
	dbms_output.put_line(chr(10)||'Data inserted in table Users');
end;
/

create or replace trigger brand_inserted2
after update or delete
on car_brand
for each row

begin
	dbms_output.put_line(chr(10)||'Data updated or deleted in table Brand');
end;
/

create or replace trigger user_updel
after update or delete
on users
for each row

begin
	dbms_output.put_line(chr(10)||'User updated or deleted by server');
end;
/

commit;
/