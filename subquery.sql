--Query the Western Longitude (LONG_W) for the largest Northern Latitude (LAT_N) in STATION that is less than . Round your answer to  decimal places.

--Input Format

--The STATION table is described as follows:

--Station.jpg

--where LAT_N is the northern latitude and LONG_W is the western longitude.

SELECT CAST((long_w) AS decimal(10,4))
FROM station
WHERE lat_n =
    (SELECT MAX(lat_n)
     FROM station
     WHERE lat_n < 137.2345);