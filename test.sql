
--OPPGAVE 1

SELECT country.name 
FROM country
WHERE code NOT IN (SELECT countrycode FROM city)
ORDER BY country.name ASC;


--OPPGAVE 2


SELECT * 
FROM city
WHERE name IN (SELECT name FROM city
GROUP BY name
HAVING COUNT(*) > 1)
ORDER BY name ASC;


--OPPGAVE 3


SELECT country.name, (country.population / (SELECT ROUND(SUM(country.population)) FROM country))
* 100 AS WorldPopPercentage, country.surfacearea
FROM country 
ORDER BY WorldPopPercentage DESC;