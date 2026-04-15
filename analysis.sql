-- Fasilitas dalam wilayah
EXPLAIN ANALYZE
SELECT w.nama, COUNT(f.id)
FROM wilayah w
LEFT JOIN fasilitas_publik f 
ON ST_Intersects(f.geom, w.geom)
GROUP BY w.nama;

-- Jalan dalam wilayah
EXPLAIN ANALYZE
SELECT j.nama, w.nama
FROM jalan j
JOIN wilayah w 
ON ST_Intersects(j.geom, w.geom);
