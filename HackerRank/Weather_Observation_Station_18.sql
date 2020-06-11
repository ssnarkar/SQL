Q Query the sum of Northern Latitudes (LAT_N) from STATION having values greater than  and less than . Truncate your answer to  decimal places.

Ans Mysql

select round(sum(LAT_N),4) from Station
where LAT_N between 38.7880 and 137.2345
