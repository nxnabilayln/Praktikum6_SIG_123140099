EXPLAIN ANALYZE
SELECT f.nama, w.nama
FROM fasilitas_publik f
JOIN wilayah w ON ST_Intersects(f.geom, w.geom);
