
/*
--Starting with Data Combining of all the years since 2018 to 2020

with Hotels as(

select * from R2018
union
select * from R2019
union
select * from R2020

)
select *
from Hotels


--Measuring Total Revenue over stays
select arrival_date_year,hotel, round(sum((stays_in_week_nights + stays_in_weekend_nights) * adr), 2) as revenue
from Hotels
group by arrival_date_year, hotel
*/

--Joining Market Segment Discounts Table
with Hotels as(

select * from R2018
union
select * from R2019
union
select * from R2020

)
select *
from Hotels as h
right join market_segment as m on h.market_segment = m.market_segment
right join meal_cost as c on c.meal = h.meal