Q Query the list of CITY names from STATION that do not start with vowels and do not end with vowels. Your result cannot contain duplicates.
Ans (MS SQL)
select distinct CITY
From STATION
where CITY NOT LIKE '[aeiou]%' AND CITY NOT LIKE '%[aeiou]';
