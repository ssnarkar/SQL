Query the list of CITY names from STATION that either do not start with vowels or do not end with vowels. Your result cannot contain duplicates.

ANS MS SQL

select distinct CITY
From STATION
where CITY NOT LIKE '[aeiou]%' OR CITY NOT LIKE '%[aeiou]';
