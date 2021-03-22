SET SERVEROUTPUT ON;
--SET TERMOUT OFF;
SET VERIFY OFF;
SET SQLBLANKLINES ON;
--SET HEAD OFF /* This turns of the headers in result */
--SET FEEDBACK OFF /* Turns off the result feedback */
select
    car_model.m_id,
	car_model.m_name,
	--car_brand.b_name,
    max(car_model.m_hp) +30 Horse_Power,
    regr_slope(car_model.m_price, car_model.m_hp)
        * (max(car_model.m_hp) + 30)
        + regr_intercept(car_model.m_price, car_model.m_hp) Predicted_price,
	car_model2.m_price Actual_price
	--(Actual_revenue-Predicted_revenue)/Actual_revenue Accuracy

from car_model@site1 inner join car_model2
on car_model.m_id=car_model2.m_id
group by car_model.m_id , car_model2.m_price, car_model.m_name;


select * from car_model@site1
UNION
select * from car_model2;

--Select AVG(ABS((regr_slope(car_model@site1.m_price, car_model@site1.m_hp)* (max(car_model@site1.m_hp) + 30)+ regr_intercept(car_model@site1.m_price, car_model@site1.m_hp)) - (car_model2.m_price))) from dual;
