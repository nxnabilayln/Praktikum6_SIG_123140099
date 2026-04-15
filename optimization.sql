-- Query Lambat --
EXPLAIN ANALYZE
SELECT *
FROM fasilitas_publik
WHERE ST_Distance(
    ST_Transform(geom, 32748),
    ST_Transform(ST_SetSRID(ST_MakePoint(105.26,-5.42),4326),32748)
) < 1000;

-- Query Optimasi --
EXPLAIN ANALYZE
SELECT *
FROM fasilitas_publik
WHERE ST_DWithin(
    geom::geography,
    ST_SetSRID(ST_MakePoint(105.26,-5.42),4326)::geography,
    1000
);
