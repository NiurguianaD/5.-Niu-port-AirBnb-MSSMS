select * from [dbo].[Listings];
-- Count the total number of records 
select count(*) as Total_records
from [dbo].[Listings];

-- Calculate average price
select round(avg(price),1) as Avg_price
from [dbo].[Listings];

-- Cities with highest and lowest listings
select city, count(host_location) as Total_city_listing
from [dbo].[Listings]
group by city
order by Total_city_listing desc;

-- Max, Min, Average Price by cities
select city, round(avg(price),1) as Avg_Price, max(price) as Max_Price, min(price) as Min_Price
from [dbo].[Listings]
group by city
order by Avg_Price desc;

-- The most popular neighbourhood by cities
select city, neighbourhood, count(*) as number_of_listing
from [dbo].[Listings]
group by city, neighbourhood
order by number_of_listing desc;

-- The most listing host
select city, host_id, count(*) as number_of_listing
from [dbo].[Listings]
group by city, host_id
order by number_of_listing desc;

-- Average price in Rome
select round(avg(price),1) as Avg_price
from [dbo].[Listings]
where city = 'Rome';

-- The most popular district in Rome and average prices in each neighbourhood
select city, neighbourhood, count(*) as number_of_listing, round(avg(price),1) as Avg_price
from [dbo].[Listings]
where city = 'Rome'
group by city, neighbourhood
order by number_of_listing desc;

-- The most listing host in Rome
select city, host_id, count(*) as number_of_listing
from [dbo].[Listings]
where city = 'Rome'
group by city, host_id
order by number_of_listing desc;

