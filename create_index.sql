-- Index utama 
CREATE INDEX IF NOT EXISTS idx_wilayah_geom
ON wilayah USING GIST (geom);

CREATE INDEX IF NOT EXISTS idx_jalan_geom
ON jalan USING GIST (geom);

CREATE INDEX IF NOT EXISTS idx_fasilitas_geom
ON fasilitas_publik USING GIST (geom);

-- Tambahan index 1 (geography)
CREATE INDEX IF NOT EXISTS idx_fasilitas_geog
ON fasilitas_publik USING GIST ((geom::geography));

-- Tambahan index 2 (wilayah geography)
CREATE INDEX IF NOT EXISTS idx_wilayah_geog
ON wilayah USING GIST ((geom::geography));
