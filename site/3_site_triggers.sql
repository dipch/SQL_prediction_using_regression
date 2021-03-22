set serveroutput on;

create or replace trigger model_inserted
after insert
on car_model
for each row

begin
	dbms_output.put_line(chr(10)||'Data inserted in table Model');
end;
/

create or replace trigger model_inserted2
after update or delete
on car_revenue2
for each row

begin
	dbms_output.put_line(chr(10)||'Data updated or deleted in table Model');
end;
/

create or replace trigger revenue_inserted
after insert
on car_model
for each row

begin
	dbms_output.put_line(chr(10)||'Data inserted in table Revenue');
end;
/

create or replace trigger revenue_inserted2
after update or delete
on car_revenue2
for each row

begin
	dbms_output.put_line(chr(10)||'Data updated or deleted in table Revenue');
end;
/

commit;
/