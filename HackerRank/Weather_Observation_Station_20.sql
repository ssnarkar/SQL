Q Query the Western Longitude (LONG_W) for the largest Northern Latitude (LAT_N) in STATION that is less than . Round your answer to  decimal places.

Ans Mysql

select round(LONG_W,4) from station 
where LAT_N < 137.2345
order by LAT_N desc
limit 1
