--Given the CITY and COUNTRY tables, query the names of all cities where the CONTINENT is 'Africa'.

--Note: CITY.CountryCode and COUNTRY.Code are matching key columns.

SELECT c.name
FROM city c
INNER JOIN country co ON co.code = c.countrycode
WHERE continent = 'Africa';
