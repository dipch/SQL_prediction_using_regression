declare	
	--id number;
	--name varchar(20);
	--pass varchar(20);
begin
	--id := &User_id;
	--name := '&Username';
	--pass := '&Password';
	--server_package.insert_user_update(id, name, pass);

	--auto insert
	server_package.insert_user_update(5, 'mazda', 'abc');
EXCEPTION

	WHEN NO_DATA_FOUND THEN
		DBMS_OUTPUT.PUT_LINE('Data not found');
	WHEN OTHERS THEN
		DBMS_OUTPUT.PUT_LINE('Other errors');
	
end;
/