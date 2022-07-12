SELECT "F1_races"."name", concat("F1_drivers"."forename", ' ', "F1_drivers"."surname") AS "nomePiloto", "F1_pitStops"."time" FROM "F1_pitStops"
	INNER JOIN "F1_drivers" ON "F1_pitStops"."driverId" = "F1_drivers"."driverId" 
	INNER JOIN "F1_races" ON "F1_pitStops"."raceId" = "F1_races"."raceId"
	ORDER BY "time" DESC LIMIT 3;