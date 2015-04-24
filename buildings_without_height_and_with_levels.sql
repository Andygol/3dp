SELECT way, (CAST ("building:levels" AS int) * 3 + 3) as height
FROM planet_osm_polygon
WHERE ((height IS NULL) AND ("building:levels" IS NOT NULL)) 
/*дома у которых нет высоты но есть этажность*/

ORDER BY ST_YMax(ST_Envelope(way))