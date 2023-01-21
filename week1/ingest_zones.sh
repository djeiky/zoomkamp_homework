#!/bin/bash
docker run --network zoomkamp_homework_ny-taxi mypython:pandas \
	--user=root \
   	--password=123 \
    	--host=pgdatabase \
    	--port=5432 \
    	--db=ny_taxi \
    	--table_name=zone \
    	--url=https://s3.amazonaws.com/nyc-tlc/misc/taxi+_zone_lookup.csv
    	
