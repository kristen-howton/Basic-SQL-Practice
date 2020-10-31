--Given the CITY and COUNTRY tables, query the names of all the continents (COUNTRY.Continent) and their respective average city populations (CITY.Population) rounded down to the nearest integer.

--Note: CITY.CountryCode and COUNTRY.Code are matching key columns.

SELECT co.continent, FLOOR(AVG(c.population))
FROM city c
INNER JOIN country co ON co.code = c.countrycode
GROUP BY co.continent;
