SET SERVEROUTPUT ON;
--SET TERMOUT OFF;
SET VERIFY OFF;
SET SQLBLANKLINES ON;
--SET HEAD OFF /* This turns of the headers in result */
--SET FEEDBACK OFF /* Turns off the result feedback */
select
    car_revenue.r_id,
	--car_brand.b_name,
    max(car_revenue.r_year) +1 Next_year,
    -- y = mx+b
    regr_slope(car_revenue.r_revenue, car_revenue.r_year)
        * (max(car_revenue.r_year) + 1)
        + regr_intercept(car_revenue.r_revenue, car_revenue.r_year) Predicted_revenue
from car_revenue
group by car_revenue.r_id ;