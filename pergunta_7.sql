/*Quais pilotos possuem mais vitorias no treino de classificação*/

SELECT
	"F1_pilotos"."piloto_id", concat("F1_pilotos"."nome", ' ',"F1_pilotos"."sobrenome") as nomePiloto, 
COUNT("F1_qualificatória"."posição") AS vitoria
FROM
    "F1_pilotos"
INNER JOIN 
	"F1_qualificatória" ON "F1_qualificatória"."piloto_id" = "F1_pilotos"."piloto_id"
    WHERE "F1_qualificatória"."posição" = 1
		GROUP BY "F1_pilotos"."piloto_id"
		ORDER BY vitoria DESC limit 5