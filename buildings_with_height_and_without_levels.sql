SELECT way, height, "building:levels"
FROM planet_osm_polygon
WHERE ((height IS NOT NULL) AND ("building:levels" IS NULL)) /*дома у которых есть высоты но нет этажности*/

ORDER BY ST_YMax(ST_Envelope(way))