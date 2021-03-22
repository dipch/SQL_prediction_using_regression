set serveroutput on;
set verify off;
SET SQLBLANKLINES ON;
create or replace package body site_package as

	procedure insert_car_model(id in number, name in varchar2, hp in number, price in number)
	IS
	
	v_mid car_model.m_id%TYPE;
	v_mname car_model.m_name%TYPE;
	v_mhp car_model.m_hp%TYPE;
	v_mprice car_model.m_price%TYPE;
	cursor cur is
		select * from car_model where m_id = id;
begin
	open cur;
	fetch cur into v_mid, v_mname, v_mhp, v_mprice;
	insert into car_model values (id, name, hp, price);
	close cur;
end insert_car_model;


	function site_del_func(tablenum in number, idnum in number)
	return varchar2
	is

	output_msg varchar2(50);
begin

	if tablenum = 1 then
		delete from car_model where m_id = idnum;
		output_msg := 'Model ID ' || idnum || ' deleted from Car Model.';
	elsif tablenum = 2 then
		delete from car_revenue@server1 where r_id = idnum;
		output_msg := 'Revenue ID ' || idnum || ' deleted from Car Revenue.';
	else
		output_msg := 'No such table or id exists.';
	end if;

return output_msg;

end site_del_func;



function site_search_model_func(name in varchar2)
	return varchar2
	IS
	output_msg varchar2(1000);

	v_mid number;
	v_mname varchar2(15);
	v_mhp number;
	v_mprice number;
	cursor cur is
		select * from car_model where m_name like name;
begin
	
	open cur;
	fetch cur into v_mid, v_mname, v_mhp, v_mprice;
	
	if cur%notfound then
		output_msg:= 'Not Found';
	else		
		output_msg:= 'Found: ' ||v_mid || '  ' || v_mname || '  ' || v_mhp || '  ' ||v_mprice;
	end if;
	close cur;
	return output_msg;
end site_search_model_func;


function site_search_revenue_func(name in varchar2)
	return varchar2
	IS
	output_msg varchar2(1000);

	v_rid number;
	v_rname varchar2(15);
	v_ryear number;
	v_rrevenue number;
	cursor cur is
		select * from car_revenue@server1 where v_rname like name;
begin
	
	open cur;
	fetch cur into v_rid, v_rname, v_ryear, v_rrevenue;
	
	if cur%notfound then
		output_msg:= 'Not Found';
	else		
		output_msg:= 'Found: ' ||v_rid || '  ' || v_rname || '  ' || v_ryear || '  ' ||v_rrevenue;
	end if;
	close cur;
	return output_msg;
end site_search_revenue_func;




end site_package;
/
