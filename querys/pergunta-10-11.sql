/*Quais corridas tem trechos de rua em seu percurso? */

USE formula1;
SELECT name FROM circuits
GROUP BY name
HAVING name LIKE '%Street%';

/*Quais foram os pitstops abaixo de 15 segundos? */

USE formula1;
SELECT duration, time, milliseconds FROM pitstops
GROUP BY time
HAVING duration < 15.000;