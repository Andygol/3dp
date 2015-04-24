SELECT way, height, "building:levels"
FROM planet_osm_polygon
WHERE ((height IS NOT NULL) AND ("building:levels" IS NOT NULL)) /*дома у которых есть высота и этажность*/

ORDER BY ST_YMax(ST_Envelope(way))