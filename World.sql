###SQLZOO###
###SELECT from WORLD Tutorial###

/* Q1 */
SELECT name, continent, population FROM world

 /* Q2 */
SELECT name FROM world
WHERE population>200000000

 /* Q3 */
SELECT name, gdp/population FROM world
  WHERE population > 200000000

 /* Q4 */
SELECT name, population/1000000 FROM world
  WHERE continent='South America'

 /* Q5 */
SELECT name, population FROM world
  WHERE name IN ('France','Germany','Italy')

 /* Q6 */
SELECT name FROM world
  WHERE name LIKE '%United%'

 /* Q7 */
select name,population,area
from world
where area>3000000
or population>250000000

 /* Q8 */
select name, population,area
from world
where
(population>250000000 or area>3000000)
and not(population>250000000 and area>3000000)

 /* Q9 */
SELECT name, ROUND(population/1000000,2),
             ROUND(gdp/1000000000,2)
  FROM world
 WHERE continent='South America'

 /* Q10 */
select name, ROUND(gdp/population,-3)
from world
where
gdp>1000000000000

 /* Q11 */
SELECT name, capital
  FROM world
 WHERE LENGTH(name)=LENGTH(capital)

 /* Q12 */
SELECT name,capital
FROM world
WHERE LEFT(name,1)=LEFT(capital,1)
AND name<>capital

 /* Q13 */
SELECT name
  FROM world
WHERE name LIKE '%a%'
AND name LIKE '%e%'
AND name LIKE '%i%'
AND name LIKE '%o%'
AND name LIKE '%u%'
AND name NOT LIKE '% %'