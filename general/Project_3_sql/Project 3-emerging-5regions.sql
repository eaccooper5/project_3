SQL
-- Step 1: Create a table
CREATE  TABLE weo_data_emerging_5regions (
"country group" VARCHAR(100),
"ISO" VARCHAR(10),
"indicator Code" VARCHAR(100),
"Country" VARCHAR(100),
"Subject Descriptor" VARCHAR(200),
"Units" VARCHAR(50),
"Scale" VARCHAR(25),
"notes" VARCHAR(2000),
"2019" TEXT,
"2020" TEXT,
"2021" TEXT,
"2022" TEXT,
"Estimates Start After" INTEGER
);
-- Step 2: Import CSV into  table
COPY weo_data_emerging_5regions FROM 'D:\WEO_Data_emerging_5 regions combined1.csv' WITH CSV HEADER DELIMITER ',' QUOTE '""';


--step 3 Update the  table
UPDATE  weo_data_emerging_5regions
SET
"2019" = REPLACE(""2019"", ',', ''),
"2020" = REPLACE(""2020"", ',', ''),
"2021" = REPLACE(""2021"", ',', ''),
"2022" = REPLACE(""2022"", ',', '');

-- Additional Step: Handle 'n/a' values
ALTER TABLE weo_data_emerging_5regions
ALTER COLUMN ""2019"" SET DEFAULT 0;

ALTER TABLE  weo_data_emerging_5regions
ALTER COLUMN ""2020"" SET DEFAULT 0;

ALTER TABLE weo_data_emerging_5regions
ALTER COLUMN ""2021"" SET DEFAULT 0;

ALTER TABLE  weo_data_emerging_5regions
ALTER COLUMN ""2022"" SET DEFAULT 0;

UPDATE  weo_data_emerging_5regions
SET
"2019" = COALESCE(NULLIF(""2019"", 'n/a')::NUMERIC, 0),
"2020" = COALESCE(NULLIF(""2020"", 'n/a')::NUMERIC, 0),
"2021" = COALESCE(NULLIF(""2021"", 'n/a')::NUMERIC, 0),
"2022" = COALESCE(NULLIF(""2022"", 'n/a')::NUMERIC, 0);

-- Alter the column type for "2019" to NUMERIC

ALTER TABLE  weo_data_emerging_5regions
"ALTER COLUMN ""2019"" TYPE NUMERIC USING ""2019""::NUMERIC;"
ALTER TABLE weo_data_emerging_5regions
"ALTER COLUMN ""2020"" TYPE NUMERIC USING ""2020""::NUMERIC;"
ALTER TABLE weo_data_emerging_5regions
"ALTER COLUMN ""2021"" TYPE NUMERIC USING ""2021""::NUMERIC;"
ALTER TABLE weo_data_emerging_5regions
"ALTER COLUMN ""2022"" TYPE NUMERIC USING ""2022""::NUMERIC;"


SELECT * FROM  weo_data_emerging_5regions;
