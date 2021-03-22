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
    max(car_model.m_hp) +30 Next_Model_hp,
    -- y = mx+c
    regr_slope(car_model.m_price, car_model.m_hp)
        * (max(car_model.m_hp) +30)
        + regr_intercept(car_model.m_price, car_model.m_hp) Predicted_Price
from car_model
group by car_model.m_id ;