SELECT "F1_results"."driverId", concat("F1_drivers"."forename", ' ', "F1_drivers"."surname") AS "nomePiloto", "fastestLapTime" FROM "F1_results"
  INNER JOIN "F1_drivers" ON "F1_drivers"."driverId" = "F1_results"."driverId"
  ORDER BY "fastestLapTime" LIMIT 5;