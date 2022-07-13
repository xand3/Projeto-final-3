/*Quantos pilotos tem a nacionalidade Brasileira*/

SELECT COUNT("F1_pilotos".nacionalidade ) AS "qntdBrasileiros" FROM "F1_pilotos"
where "F1_pilotos".nacionalidade in ('Brazilian')

