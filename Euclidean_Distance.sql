--Consider  and  to be two points on a 2D plane where  are the respective minimum and maximum values of Northern Latitude (LAT_N) and  are the respective minimum and maximum values of Western Longitude (LONG_W) in STATION.

--Query the Euclidean Distance between points  and  and format your answer to display  decimal digits.

SELECT 
    CAST(SQRT
        ((POWER(MAX(lat_n) - MIN(lat_n),2)) + 
        ((POWER(MAX(long_w) - MIN(long_w),2))))AS NUMERIC(10,4))
FROM Station