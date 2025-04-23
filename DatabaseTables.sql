/*Table Setup for Database*/
/*Site Table*/
CREATE TABLE Site (
    Site_ID INT PRIMARY KEY,
    Site_Name VARCHAR(255),
    Latitude FLOAT,
    Longitude FLOAT,
    Elevation FLOAT,
    Site_Type VARCHAR(100)
);
/*Measurement Table*/
CREATE TABLE Measurement (
    Measurement_ID INT PRIMARY KEY,
    Site_ID INT,
    Timestamp DATETIME,
    FOREIGN KEY (Site_ID) REFERENCES Site(Site_ID)
);
/*Weather Measurment Table*/
CREATE TABLE WeatherMeasurement (
    Measurement_ID INT PRIMARY KEY,
    Temperature FLOAT,
    Humidity FLOAT,
    Wind_Speed FLOAT,
    Wind_Direction FLOAT,
    FOREIGN KEY (Measurement_ID) REFERENCES Measurement(Measurement_ID)
);
/*Air Quality Measurements Table*/
CREATE TABLE AirQualityMeasurement (
    Measurement_ID INT PRIMARY KEY,
    Pollutant_ID INT,
    Pollutant_Concentration FLOAT,
    FOREIGN KEY (Measurement_ID) REFERENCES Measurement(Measurement_ID),
    FOREIGN KEY (Pollutant_ID) REFERENCES Metadata(Metadata_ID)
);
/*Water Quality Measurments*/
CREATE TABLE WaterQualityMeasurement (
    Measurement_ID INT PRIMARY KEY,
    Contaminant_ID INT,
    Contaminant_Concentration FLOAT,
    FOREIGN KEY (Measurement_ID) REFERENCES Measurement(Measurement_ID),
    FOREIGN KEY (Contaminant_ID) REFERENCES Metadata(Metadata_ID)
);
/*Meta Data Table*/
CREATE TABLE Metadata (
    Metadata_ID INT PRIMARY KEY,
    Category VARCHAR(100),
    Parameter VARCHAR(100),
    Symbol VARCHAR(50),
    Unit VARCHAR(50),
    Unit_Description TEXT,
    Safe_Level FLOAT,
    Measurement_Frequency VARCHAR(100),
    Sensor VARCHAR(100),
    Reference_URL TEXT
);
