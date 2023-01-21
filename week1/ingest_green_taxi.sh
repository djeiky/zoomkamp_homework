#!/bin/bash
docker run --network zoomkamp_homework_ny-taxi mypython:pandas \
	--user=root \
   	--password=123 \
    	--host=pgdatabase \
    	--port=5432 \
    	--db=ny_taxi \
    	--table_name=green_tripdata \
    	--url=https://github.com/DataTalksClub/nyc-tlc-data/releases/download/green/green_tripdata_2019-01.csv.gz
    	
