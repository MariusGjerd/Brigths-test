
--OPAGEV 1

SELECT name, population
FROM city
WHERE name LIKE 'O%o'
ORDER BY name


--OPPGAVE 2

SELECT country.name, city.name, city.population 
FROM city
JOIN country ON city.countrycode = country.code
WHERE city.name LIKE 'O%o'
ORDER BY city.name, country.name


--OPPGAVE 3

SELECT country.name, city.name, country.continent
FROM country
JOIN city ON country.code = city.countrycode
ORDER BY country.continent, country.name