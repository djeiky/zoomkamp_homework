#How many taxi trips were totally made on January 15?
select 
  count(*)
from green_tripdata 
  where cast(lpep_pickup_datetime as date) = '2019-01-15'
and
  cast(lpep_pickup_datetime as date) = '2019-01-15';
 
#Which was the day with the largest trip distance?
select
	cast(lpep_pickup_datetime as date) as begin_trip,
	max(trip_distance) as trip_dist
from green_tripdata group by begin_trip order by trip_dist desc;

#In 2019-01-01 how many trips had 2 and 3 passengers?
select
	cast(lpep_pickup_datetime as date) as begin_trip,
	count(1)
from green_tripdata
where cast(lpep_pickup_datetime as date) = '2019-01-01'
and passenger_count = 3
group by begin_trip;

#For the passengers picked up in the Astoria Zone which was the drop up zone that had the largest tip?
select 
	t."PULocationID",
	pz."Zone" as "pick up zone",
	t."DOLocationID",
	dz."Zone" as "drop off zone",
	t.tip_amount,
	t.lpep_pickup_datetime
	
from green_tripdata t 
	left join zone pz on t."PULocationID" = pz."LocationID" 
	left join zone dz on t."DOLocationID" = dz."LocationID"
where pz."Zone" = 'Astoria'
order by t.tip_amount desc;


