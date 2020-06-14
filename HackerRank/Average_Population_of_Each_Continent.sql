/* Q Given the CITY and COUNTRY tables, query the names of all the continents (COUNTRY.Continent) and their respective average city populations (CITY.Population) rounded down to the nearest integer.

Note: CITY.CountryCode and COUNTRY.Code are matching key columns. */


select country.continent, floor(avg(CITY.Population)) from city
join country on CITY.CountryCode = COUNTRY.Code
group by country.continent
