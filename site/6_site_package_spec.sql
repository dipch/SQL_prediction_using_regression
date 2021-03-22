create or replace package site_package as
	procedure insert_car_model(id in number, name in varchar2, hp in number, price in number);
	
	function site_del_func(tablenum in number, idnum in number)
		return varchar2;
	function site_search_model_func(name in varchar2)
		return varchar2;
	function site_search_revenue_func(name in varchar2)
		return varchar2;

	
end site_package;
/
