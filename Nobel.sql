###SQLZOO###
###SELECT from Nobel Tutorial###

/* Q1 */
SELECT yr, subject, winner
  FROM nobel
 WHERE yr = 1950

 /* Q2 */
SELECT winner
  FROM nobel
 WHERE yr = 1962
   AND subject = 'Literature'

 /* Q3 */
SELECT yr, subject
  FROM nobel
 WHERE winner = 'Albert Einstein'

 /* Q4 */
SELECT winner
  FROM nobel
 WHERE yr >= 2000
   AND subject = 'Peace'

 /* Q5 */
SELECT yr, subject, winner
  FROM nobel
 WHERE yr BETWEEN 1980 AND 1989
   AND subject = 'Literature'

 /* Q6 */
SELECT * FROM nobel
 WHERE  winner IN ('Theodore Roosevelt',
  'Woodrow Wilson',
  'Jimmy Carter',
  'Barack Obama')

 /* Q7 */
SELECT winner FROM nobel
  WHERE winner LIKE 'John %'

 /* Q8 */
SELECT *
FROM nobel
WHERE (subject='physics' AND yr=1980) OR
      (subject='chemistry' AND yr=1984)

 /* Q9 */
SELECT *
FROM nobel
WHERE yr=1980 AND
  subject NOT IN ('Chemistry','Medicine')

 /* Q10 */
SELECT *
FROM nobel 
WHERE (subject='Medicine' and yr <1910) OR
      (subject='Literature' AND yr>=2004)

 /* Q11 */
SELECT *
FROM nobel 
WHERE winner in ('Peter Grünberg')

 /* Q12 */
SELECT *
FROM nobel 
WHERE winner in ('Eugene O''Neill')

 /* Q13 */
SELECT winner, yr, subject
FROM nobel 
WHERE winner LIKE 'Sir%'
ORDER BY yr DESC, winner

 /* Q14 */
SELECT winner, subject
  FROM nobel
 WHERE yr=1984
 ORDER BY
CASE WHEN subject IN ('Physics','Chemistry') THEN 1 ELSE 0 END, subject,winner