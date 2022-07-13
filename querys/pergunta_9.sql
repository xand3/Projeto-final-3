/*Quais os brasileiros participam da Formula 1*/

SELECT 
concat("F1_pilotos".nome, ' ',"F1_pilotos".sobrenome ) as nomePiloto,
"F1_pilotos".nascimento,"F1_pilotos".nacionalidade
FROM "F1_pilotos"
WHERE "F1_pilotos".nacionalidade in ('Brazilian');