SELECT way, 4.5 AS height
FROM planet_osm_polygon
WHERE (height IS NULL AND "building:levels" IS NULL)
ORDER BY ST_YMax(ST_Envelope(way))