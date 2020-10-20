--A median is defined as a number separating the higher half of a data set from the lower half. Query the median of the Northern Latitudes (LAT_N) 
--from STATION and round your answer to  decimal places.

SELECT CAST (( (SELECT MAX(LAT_N)
          FROM   (SELECT TOP 50 PERCENT LAT_N
                  FROM   Station
                 ORDER BY Lat_N) AS BOTTOMHALF) 
         + (SELECT MIN(Lat_N)
            FROM   (SELECT TOP 50 PERCENT Lat_N
                    FROM   Station
                   ORDER BY Lat_N DESC) AS TOPHALF) ) / 2 AS DECIMAL(10,4)) AS MEDIAN