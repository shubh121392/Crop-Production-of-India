-- Data Analysis- Introduction to the data set --

select * from crop_production;

select count(*) from crop_production;

select avg(production) from crop_production;

select sum(production) from crop_production;

select min(production) from crop_production;

select max(production) from crop_production;

select stdev(production) from crop_production ;

select production, Crop_Year, state_name from crop_production order by production desc limit 3;

select production, crop_year, state_name, district_name from crop_production order by production desc limit 15;

select season, production, crop_year from crop_production order by production desc;

select sum(production),state_name from crop_production group by state_name order by  sum(production) desc;

select * from crop_production where production > 1000000000;

select * from crop_production where production > 1000000 and crop = 'coconut';

-- Crop Production based on All seasons--

select sum(production) from crop_production where season='whole year';
 
select sum(production) from crop_production where season='kharif';
 
select sum(production) from crop_production where season='Autumn';

select sum(production) from crop_production where season='Winter';

select sum(production) from crop_production where season='rabi';
