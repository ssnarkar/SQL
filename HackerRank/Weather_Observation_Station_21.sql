Q Query the smallest Northern Latitude (LAT_N) from STATION that is greater than . Round your answer to  decimal places.

Ans mysql

select round(min(lat_n),4) from station
where lat_n > 38.7780

