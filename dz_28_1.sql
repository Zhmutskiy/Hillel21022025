SELECT * FROM user_profiles WHERE name LIKE '%am%';

select max(totalcost) from expenses where carid in (select id from cars where carbrandid in (select id from car_brands where title = 'audi'));

select carbrandid as car_id, count(id) as count_models from car_models where carbrandid in (select id from car_brands where title in ('audi', 'bmw')) group by carbrandid;

select car_models.title as car_model, car_brands.title as car_brand, count(distinct cars.userid) as user_count from cars join car_models on cars.carmodelid = car_models.id join car_brands on cars.carbrandid = car_brands.id group by car_models.title, car_brands.title;

select distinct name from user_profiles where userid in (select userid from cars) order by name asc;
