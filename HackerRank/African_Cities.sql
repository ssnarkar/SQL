/* Q Given the CITY and COUNTRY tables, query the names of all cities where the CONTINENT is 'Africa'.
Note: CITY.CountryCode and COUNTRY.Code are matching key columns.*/


select city.name from city
left join country on CITY.CountryCode = COUNTRY.Code
where continent = 'Africa';
