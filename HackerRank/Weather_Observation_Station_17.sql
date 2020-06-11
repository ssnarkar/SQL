Q Query the following two values from the STATION table:
1. The sum of all values in LAT_N rounded to a scale of  decimal places.
2. The sum of all values in LONG_W rounded to a scale of  decimal places.

Ans Mysql

select round(sum(LAT_N),2) , round(sum(LONG_W),2) from Station
