/* Q A median is defined as a number separating the higher half of a data set from the lower half. Query the median of the Northern Latitudes (LAT_N) from STATION and round your answer to  decimal places.


ans Mysql */

select round(LAT_N,4) from (SELECT    *,
          @curRank := @curRank + 1 AS rank
FROM      station s, (SELECT @curRank := 0) r
ORDER BY  LAT_N) x
where rank = (select CEIL(count(LAT_N)/2) from station)

