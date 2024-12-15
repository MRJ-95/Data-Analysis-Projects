-- 1. Carbon and Forest Data Table
CREATE TABLE Carbon_Forest (
    record_id INT AUTO_INCREMENT PRIMARY KEY,
    year INT NOT NULL,
    country VARCHAR(100),
    carbon_emissions FLOAT, -- in million metric tons
    forest_cover FLOAT      -- in percentage
);

-- Update Country Name from 'USA' to 'United States'
UPDATE Carbon_Forest
SET country = 'United States'
WHERE country = 'USA';

-- 2. GCB Emissions Data Table
CREATE TABLE GCB_Emissions (
    record_id INT AUTO_INCREMENT PRIMARY KEY,
    year INT NOT NULL,
    sector VARCHAR(100),
    emissions FLOAT -- in million metric tons
);

-- 3. Climate-Related Disaster Frequency Table
CREATE TABLE Disaster_Frequency (
    record_id INT AUTO_INCREMENT PRIMARY KEY,
    year INT NOT NULL,
    disaster_type VARCHAR(100),
    frequency INT
);

-- 4. Temperature Change Table
CREATE TABLE Temperature_Change (
    record_id INT AUTO_INCREMENT PRIMARY KEY,
    year INT NOT NULL,
    region VARCHAR(100),
    temperature_anomaly FLOAT -- in degrees Celsius
);

-- 5. Exposure to UV Table
CREATE TABLE UV_Exposure (
    record_id INT AUTO_INCREMENT PRIMARY KEY,
    year INT NOT NULL,
    country VARCHAR(100),
    uv_index FLOAT
);

-- 6. Extreme Precipitation Table
CREATE TABLE Extreme_Precipitation (
    record_id INT AUTO_INCREMENT PRIMARY KEY,
    year INT NOT NULL,
    region VARCHAR(100),
    extreme_precip_days INT -- days with extreme precipitation
);

-- 7. Heat-Related Illness Mortality Rate Table
CREATE TABLE Heat_Illness_Mortality (
    record_id INT AUTO_INCREMENT PRIMARY KEY,
    year INT NOT NULL,
    country VARCHAR(100),
    mortality_rate FLOAT -- deaths per 100,000 people
);

-- 8. Melanoma Cases Table
CREATE TABLE Melanoma_Cases (
    record_id INT AUTO_INCREMENT PRIMARY KEY,
    year INT NOT NULL,
    country VARCHAR(100),
    cases_per_100k FLOAT
);

-- Query to Check All Tables
SHOW TABLES;