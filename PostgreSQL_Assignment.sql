-- create rangers table and insert data
CREATE TABLE rangers (
  ranger_id SERIAL PRIMARY KEY,
  name VARCHAR(100) NOT NULL,
  region VARCHAR(100) NOT NULL
);
INSERT INTO rangers(ranger_id,name,region)
VALUES
(1,'Alice Green','Northern Hills'),
(2,'Bob White','River Delta'),
(3,'Carol King','Mountain Range');

-- create species table and insert data 
CREATE Table species(
    species_id SERIAL PRIMARY KEY NOT NULL,
    common_name VARCHAR(50),
    scientific_name VARCHAR(50),
    discovery_date DATE NOT NULL,
    conservation_status BOOLEAN NOT NULL
);
INSERT INTO species(species_id,common_name,scientific_name,discovery_date,conservation_status)
VALUES
(1,'Snow Leopard','Panthera uncia','1775-01-01','Endangered'),
(2,'Bengal Tiger','Panthera tigris tigris','1758-01-01','Endangered'),
(3,'Red Panda ','Ailurus fulgens','1825-01-01','Vulnerable'),
(4,'Asiatic Elephant ',' Elephas maximus indicus',' 1758-01-01','Endangered');

-- create sightings table and insert data
CREATE Table sightings(
    sighting_id SERIAL PRIMARY KEY ,
    ranger_id INT REFERENCES rangers(ranger_id),
    species_id INT REFERENCES species(species_id),
    sighting_time DATE NOT NULL,
    location VARCHAR(50),
    notes VARCHAR(100) DEFAULT NULL
);
INSERT INTO sightings(sighting_id,ranger_id,species_id,sighting_time,location,notes)
VALUES 
(1,1,1,' 2024-05-10 07:45:00','Peak Ridge',' Camera trap image captured'),
(2,2,2,'  2024-05-12 16:20:00','Bankwood Area  ',' Juvenile seen'),
(3,3,3,' 2024-05-15 09:10:00',' Bamboo Grove East',' Feeding observed'),
(4,2,1,' 2024-05-18 18:30:00',' Snowfall Pass ',NULL);
              


