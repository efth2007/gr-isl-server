CREATE TYPE coordinates AS (
    latitude double precision,
    longitude double precision
);

CREATE TYPE units AS ENUM ('Attica', 'Central Greece', 'Central Macedonia', 'Crete', 'Eastern Macedonia and Thrace','Epirus','North Aegean', 'Ionian Islands', 'Peloponnese', 'South Aegean', 'Thessaly', 'Western Greece', 'Western Macedonia', 'Monastic community of Mount Athos');

CREATE TYPE clusters AS ENUM ('Cretan', 'Euboean', 'North Aegean Islands', 'Cyclades', 'Dodecanese','Sporades','Argo-Saronic', 'Ionian Islands', 'none');


CREATE TABLE islands (
    id VARCHAR(255) PRIMARY KEY,
    name VARCHAR(255),
    name_gr VARCHAR(255),
	unit units,
	cluster clusters,
    area INT,
    population INT,
	location jsonb
);

INSERT INTO islands(id, name, name_gr, unit, cluster, area, population,  location) 
VALUES
('4c224078-6896-4ed2-a965-09a74c2d3b5b', 'Crete', 'Κρήτη', 'Crete', 'Cretan', 8336, 624408, '{"latitude": 35.21, "longitude": 24.91 }'::jsonb),
('dcd499f5-dc9f-4ee8-bbbb-34cba2580e09', 'Evia', 'Εύβοια', 'Central Greece', 'Euboean', 3684, 191206, '{"latitude": 38.30, "longitude": 24.00 }'::jsonb),
('42494c0b-d826-42bd-bc16-3d5c541e566a', 'Lesbos', 'Λέσβος', 'North Aegean', 'North Aegean Islands', 1633, 83068, '{"latitude": 39.21, "longitude": 26.28 }'::jsonb),
('24b164c5-2532-4db3-99d7-6c8adef4ca3a', 'Rhodes', 'Ρόδος', 'South Aegean', 'Dodecanese', 1401, 125113, '{"latitude": 36.17, "longitude": 27.92}'::jsonb);
