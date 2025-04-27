Use notesdb;

/* INSERT INTO Metadata Table*/
-- Air Quality 
INSERT INTO Metadata (Metadata_ID, Category, Quantity, Symbol, Unit, Unit_Description, Safe_Level, Measurement_Frequency, Sensor, Reference_URL)
VALUES (1, 'Air quality', 'Nitrogen dioxide', 'NO2', 'ug/m3', 'microgrammes per cubic metre', 200.0, 'Hourly', 'Airly', 'https://uk-air.defra.gov.uk/air-pollution/daqi?view=more-info&pollutant=no2#pollutant');

INSERT INTO Metadata (Metadata_ID, Category, Quantity, Symbol, Unit, Unit_Description, Safe_Level, Measurement_Frequency, Sensor, Reference_URL)
VALUES (2, 'Air quality', 'Sulphur dioxide', 'SO2', 'ug/m3', 'microgrammes per cubic metre', 266.0, 'Hourly', 'Airly', 'https://uk-air.defra.gov.uk/air-pollution/daqi?view=more-info&pollutant=so2#pollutant');

INSERT INTO Metadata (Metadata_ID, Category, Quantity, Symbol, Unit, Unit_Description, Safe_Level, Measurement_Frequency, Sensor, Reference_URL)
VALUES (3, 'Air quality', 'Particulate matter <= 2.5 microns in diameter', 'PM2.5', 'ug/m3', 'microgrammes per cubic metre', 35.0, 'Hourly', 'Airly', 'https://www.gov.uk/government/statistics/air-quality-statistics/concentrations-of-particulate-matter-pm10-and-pm25');

INSERT INTO Metadata (Metadata_ID, Category, Quantity, Symbol, Unit, Unit_Description, Safe_Level, Measurement_Frequency, Sensor, Reference_URL)
VALUES (4, 'Air quality', 'Particulate matter <= 10 microns in diameter', 'PM10', 'ug/m3', 'microgrammes per cubic metre', 50.0, 'Hourly', 'Airly', 'https://www.gov.uk/government/statistics/air-quality-statistics/concentrations-of-particulate-matter-pm10-and-pm25');

-- Water Quality
INSERT INTO Metadata (Metadata_ID, Category, Quantity, Symbol, Unit, Unit_Description, Safe_Level, Measurement_Frequency, Sensor, Reference_URL)
VALUES (5, 'Water quality', 'Nitrite', '-NO3', 'mg/l', 'milligrammes per litre', 3.0, 'Hourly', 'ClearWater', 'https://cdn.who.int/media/docs/default-source/wash-documents/water-safety-and-quality/chemical-fact-sheets-2022/nitrate-and-nitrite-fact-sheet-2022.pdf?sfvrsn=a65406e9_2&download=true');

INSERT INTO Metadata (Metadata_ID, Category, Quantity, Symbol, Unit, Unit_Description, Safe_Level, Measurement_Frequency, Sensor, Reference_URL)
VALUES (6, 'Water quality', 'Nitrate', '-NO2', 'mg/l', 'milligrammes per litre', 50.0, 'Hourly', 'ClearWater', 'https://cdn.who.int/media/docs/default-source/wash-documents/water-safety-and-quality/chemical-fact-sheets-2022/nitrate-and-nitrite-fact-sheet-2022.pdf?sfvrsn=a65406e9_2&download=true');

INSERT INTO Metadata (Metadata_ID, Category, Quantity, Symbol, Unit, Unit_Description, Safe_Level, Measurement_Frequency, Sensor, Reference_URL)
VALUES (7, 'Water quality', 'Phosphate', '-PO4', 'mg/l', 'milligrammes per litre', 0.1, 'Hourly', 'ClearWater', 'https://assets.publishing.service.gov.uk/media/5a7b1f23ed915d3ed90624fc/defra-stats-observatory-indicators-da3-120224.pdf');

INSERT INTO Metadata (Metadata_ID, Category, Quantity, Symbol, Unit, Unit_Description, Safe_Level, Measurement_Frequency, Sensor, Reference_URL)
VALUES (8, 'Water quality', 'Escherichia coli', 'EC', 'cfu/100ml', 'Colony forming units (cfu) per 100ml', 500.0, 'Daily', 'ALERT', 'https://environment.data.gov.uk/bwq/profiles/help-understanding-data.html');

INSERT INTO Metadata (Metadata_ID, Category, Quantity, Symbol, Unit, Unit_Description, Safe_Level, Measurement_Frequency, Sensor, Reference_URL)
VALUES (9, 'Water quality', 'Intestinal enterococci', 'IE', 'cfu/100ml', 'Colony forming units (cfu) per 100ml', 185.0, 'Daily', 'ALERT', 'https://environment.data.gov.uk/bwq/profiles/help-understanding-data.html');

-- Weather and 
INSERT INTO Metadata (Metadata_ID, Category, Quantity, Symbol, Unit, Unit_Description, Safe_Level, Measurement_Frequency, Sensor, Reference_URL)
VALUES (10, 'Weather', 'Air temperature', 'T', 'C', 'Degrees Celsius', 0.0, 'Hourly', 'Netvox R712', 'https://www.alliot.co.uk/product/netvox-outdoor-temperature-and-humidity-sensor/');

INSERT INTO Metadata (Metadata_ID, Category, Quantity, Symbol, Unit, Unit_Description, Safe_Level, Measurement_Frequency, Sensor, Reference_URL)
VALUES (11, 'Weather', 'Humidity', 'H', '%', 'Percentage', 0.0, 'Hourly', 'Netvox R712', 'https://www.alliot.co.uk/product/netvox-outdoor-temperature-and-humidity-sensor/');

INSERT INTO Metadata (Metadata_ID, Category, Quantity, Symbol, Unit, Unit_Description, Safe_Level, Measurement_Frequency, Sensor, Reference_URL)
VALUES (12, 'Weather', 'Wind speed', 'WS', 'm/s', 'Metres per second', 0.0, 'Hourly', 'Vaisala WM80', 'https://www.vaisala.com/en/products/ultrasonic-wind-sensor-wm80');

INSERT INTO Metadata (Metadata_ID, Category, Quantity, Symbol, Unit, Unit_Description, Safe_Level, Measurement_Frequency, Sensor, Reference_URL)
VALUES (13, 'Weather', 'Wind direction', 'WD', 'degree', 'Degrees from north', 0.0, 'Hourly', 'Vaisala WM80', 'https://www.vaisala.com/en/products/ultrasonic-wind-sensor-wm80');

/*INSERT INTO Site */
-- 1 Edinburgh Nicolson Street 
-- Air Quality
INSERT INTO Site (Site_ID, Site_Name, Latitude, Longitude, Elevation, Site_Type)
VALUES (1, 'Edinburgh Nicolson Street', 55.94476, -3.183991, NULL, 'Urban Traffic');

-- 2. Glencorse B
-- Water Quality
INSERT INTO Site (Site_ID, Site_Name, Latitude, Longitude, Elevation, Site_Type)
VALUES (2, 'Glencorse B', 55.861111, -3.253889, NULL, NULL);

-- 3. Weather Station
-- Weather Station
INSERT INTO Site (Site_ID, Site_Name, Latitude, Longitude, Elevation, Site_Type)
VALUES (3, 'Weather Station', 55.008785, -3.5856323, 8, NULL);

/*INSERT INTO Measurment Table*/
-- Air Quality time stamps
INSERT INTO Measurement (Measurement_ID, Site_ID, Timestamp)
VALUES (1, 1, '2025-02-01 01:00:00'),
(2, 1, '2025-02-01 02:00:00'),
(3, 1, '2025-02-01 03:00:00'),
(4, 1, '2025-02-01 04:00:00'),
(5, 1, '2025-02-01 05:00:00'),
(6, 1, '2025-02-01 06:00:00'),
(7, 1, '2025-02-01 07:00:00'),
(8, 1, '2025-02-01 08:00:00'),
(9, 1, '2025-02-01 09:00:00'),
(10, 1, '2025-02-01 10:00:00'),
(11, 1, '2025-02-01 11:00:00'),
(12, 1, '2025-02-01 12:00:00'),
(13, 1, '2025-02-01 13:00:00'),
(14, 1, '2025-02-01 14:00:00'),
(15, 1, '2025-02-01 15:00:00'),
(16, 1, '2025-02-01 16:00:00'),
(17, 1, '2025-02-01 17:00:00'),
(18, 1, '2025-02-01 18:00:00'),
(19, 1, '2025-02-01 19:00:00'),
(20, 1, '2025-02-01 20:00:00'),
(21, 1, '2025-02-01 21:00:00'),
(22, 1, '2025-02-01 22:00:00'),
(23, 1, '2025-02-01 23:00:00'),
(24, 1, '2025-02-02 00:00:00');

-- Water Quality Time Stamps
INSERT INTO Measurement (Measurement_ID, Site_ID, Timestamp)
VALUES (25, 2, '2025-02-01 01:00:00'),
(26, 2, '2025-02-01 02:00:00'),
(27, 2, '2025-02-01 03:00:00'),
(28, 2, '2025-02-01 04:00:00'),
(29, 2, '2025-02-01 05:00:00'),
(30, 2, '2025-02-01 06:00:00'),
(31, 2, '2025-02-01 07:00:00'),
(32, 2, '2025-02-01 08:00:00'),
(33, 2, '2025-02-01 09:00:00'),
(34,2, '2025-02-01 10:00:00'),
(35, 2, '2025-02-01 11:00:00'),
(36, 2, '2025-02-01 12:00:00'),
(37, 2, '2025-02-01 13:00:00'),
(38, 2, '2025-02-01 14:00:00'),
(39, 2, '2025-02-01 15:00:00'),
(40, 2, '2025-02-01 16:00:00'),
(41, 2, '2025-02-01 17:00:00'),
(42, 2, '2025-02-01 18:00:00'),
(43, 2, '2025-02-01 19:00:00'),
(44, 2, '2025-02-01 20:00:00'),
(45, 2, '2025-02-01 21:00:00'),
(46, 2, '2025-02-01 22:00:00'),
(47, 2, '2025-02-01 23:00:00'),
(48, 2, '2025-02-02 00:00:00');

-- Weather Quality Time Stamps
INSERT INTO Measurement (Measurement_ID, Site_ID, Timestamp)
VALUES (49, 3, '2025-02-01 01:00:00'),
(50, 3, '2025-02-01 02:00:00'),
(51, 3, '2025-02-01 03:00:00'),
(52, 3, '2025-02-01 04:00:00'),
(53, 3, '2025-02-01 05:00:00'),
(54, 3, '2025-02-01 06:00:00'),
(55, 3, '2025-02-01 07:00:00'),
(56, 3, '2025-02-01 08:00:00'),
(57, 3, '2025-02-01 09:00:00'),
(58,3, '2025-02-01 10:00:00'),
(59, 3, '2025-02-01 11:00:00'),
(60, 3, '2025-02-01 12:00:00'),
(61, 3, '2025-02-01 13:00:00'),
(62, 3, '2025-02-01 14:00:00'),
(63, 3, '2025-02-01 15:00:00'),
(64, 3, '2025-02-01 16:00:00'),
(65, 3, '2025-02-01 17:00:00'),
(66, 3, '2025-02-01 18:00:00'),
(67, 3, '2025-02-01 19:00:00'),
(68, 3, '2025-02-01 20:00:00'),
(69, 3, '2025-02-01 21:00:00'),
(70, 3, '2025-02-01 22:00:00'),
(71, 3, '2025-02-01 23:00:00'),
(72, 3, '2025-02-02 00:00:00');

/* Insert into Air Qualit Measurement Table */
-- Pollutant_ID: 1 = NO2 (Nitrogen dioxide) , 2 = SO2 (Sulphur dioxide) , 
-- 3 = PM2.5 (PM2.5 particulate matter) , 4 = PM10 (PM10 particulate matter)
INSERT INTO AirQualityMeasurement VALUES (1, 1, 26.3925);
INSERT INTO AirQualityMeasurement VALUES (1, 2, 1.59654);
INSERT INTO AirQualityMeasurement VALUES (1, 3, 5.094);
INSERT INTO AirQualityMeasurement VALUES (1, 4, 8.3);
INSERT INTO AirQualityMeasurement VALUES (2, 1, 22.5675);
INSERT INTO AirQualityMeasurement VALUES (2, 2, 1.33045);
INSERT INTO AirQualityMeasurement VALUES (2, 3, 5.094);
INSERT INTO AirQualityMeasurement VALUES (2, 4, 7.9);
INSERT INTO AirQualityMeasurement VALUES (3, 1, 14.535);
INSERT INTO AirQualityMeasurement VALUES (3, 2, 1.4635);
INSERT INTO AirQualityMeasurement VALUES (3, 3, 5.755);
INSERT INTO AirQualityMeasurement VALUES (3, 4, 8.5);
INSERT INTO AirQualityMeasurement VALUES (4, 1, 17.9775);
INSERT INTO AirQualityMeasurement VALUES (4, 2, 1.33045);
INSERT INTO AirQualityMeasurement VALUES (4, 3, 5.943);
INSERT INTO AirQualityMeasurement VALUES (4, 4, 9.9);
INSERT INTO AirQualityMeasurement VALUES (5, 1, 12.24);
INSERT INTO AirQualityMeasurement VALUES (5, 2, 1.33045);
INSERT INTO AirQualityMeasurement VALUES (5, 3, 6.132);
INSERT INTO AirQualityMeasurement VALUES (5, 4, 10.7);
INSERT INTO AirQualityMeasurement VALUES (6, 1, 23.90625);
INSERT INTO AirQualityMeasurement VALUES (6, 2, 1.4635);
INSERT INTO AirQualityMeasurement VALUES (6, 3, 6.415);
INSERT INTO AirQualityMeasurement VALUES (6, 4, 9.5);
INSERT INTO AirQualityMeasurement VALUES (7, 1, 22.95);
INSERT INTO AirQualityMeasurement VALUES (7, 2, 1.13088);
INSERT INTO AirQualityMeasurement VALUES (7, 3, 5.755);
INSERT INTO AirQualityMeasurement VALUES (7, 4, 9.4);
INSERT INTO AirQualityMeasurement VALUES (8, 1, 51.44625);
INSERT INTO AirQualityMeasurement VALUES (8, 2, 1.19741);
INSERT INTO AirQualityMeasurement VALUES (8, 3, 5.472);
INSERT INTO AirQualityMeasurement VALUES (8, 4, 9.2);
INSERT INTO AirQualityMeasurement VALUES (9, 1, 67.89375);
INSERT INTO AirQualityMeasurement VALUES (9, 2, 1.72959);
INSERT INTO AirQualityMeasurement VALUES (9, 3, 6.604);
INSERT INTO AirQualityMeasurement VALUES (9, 4, 11.3);
INSERT INTO AirQualityMeasurement VALUES (10, 1, 51.6375);
INSERT INTO AirQualityMeasurement VALUES (10, 2, 1.53002);
INSERT INTO AirQualityMeasurement VALUES (10, 3, 5.755);
INSERT INTO AirQualityMeasurement VALUES (10, 4, 9.2);
INSERT INTO AirQualityMeasurement VALUES (11, 1, 36.3375);
INSERT INTO AirQualityMeasurement VALUES (11, 2, 1.33045);
INSERT INTO AirQualityMeasurement VALUES (11, 3, 4.717);
INSERT INTO AirQualityMeasurement VALUES (11, 4, 8.5);
INSERT INTO AirQualityMeasurement VALUES (12, 1, 41.11875);
INSERT INTO AirQualityMeasurement VALUES (12, 2, 1.79611);
INSERT INTO AirQualityMeasurement VALUES (12, 3, 5.943);
INSERT INTO AirQualityMeasurement VALUES (12, 4, 9.8);
INSERT INTO AirQualityMeasurement VALUES (13, 1, 42.64875);
INSERT INTO AirQualityMeasurement VALUES (13, 2, 1.66306);
INSERT INTO AirQualityMeasurement VALUES (13, 3, 6.509);
INSERT INTO AirQualityMeasurement VALUES (13, 4, 10.2);
INSERT INTO AirQualityMeasurement VALUES (14, 1, 22.5675);
INSERT INTO AirQualityMeasurement VALUES (14, 2, 1.66306);
INSERT INTO AirQualityMeasurement VALUES (14, 3, 5.66);
INSERT INTO AirQualityMeasurement VALUES (14, 4, 9.4);
INSERT INTO AirQualityMeasurement VALUES (15, 1, 39.97125);
INSERT INTO AirQualityMeasurement VALUES (15, 2, 1.86263);
INSERT INTO AirQualityMeasurement VALUES (15, 3, 6.792);
INSERT INTO AirQualityMeasurement VALUES (15, 4, 10.7);
INSERT INTO AirQualityMeasurement VALUES (16, 1, 28.305);
INSERT INTO AirQualityMeasurement VALUES (16, 2, 1.86263);
INSERT INTO AirQualityMeasurement VALUES (16, 3, 7.547);
INSERT INTO AirQualityMeasurement VALUES (16, 4, 11.5);
INSERT INTO AirQualityMeasurement VALUES (17, 1, 26.775);
INSERT INTO AirQualityMeasurement VALUES (17, 2, 1.13088);
INSERT INTO AirQualityMeasurement VALUES (17, 3, 6.698);
INSERT INTO AirQualityMeasurement VALUES (17, 4, 11.1);
INSERT INTO AirQualityMeasurement VALUES (18, 1, 33.08625);
INSERT INTO AirQualityMeasurement VALUES (18, 2, 1.59654);
INSERT INTO AirQualityMeasurement VALUES (18, 3, 7.17);
INSERT INTO AirQualityMeasurement VALUES (18, 4, 10.9);
INSERT INTO AirQualityMeasurement VALUES (19, 1, 33.66);
INSERT INTO AirQualityMeasurement VALUES (19, 2, 1.99568);
INSERT INTO AirQualityMeasurement VALUES (19, 3, 7.076);
INSERT INTO AirQualityMeasurement VALUES (19, 4, 10.2);
INSERT INTO AirQualityMeasurement VALUES (20, 1, 50.29875);
INSERT INTO AirQualityMeasurement VALUES (20, 2, 2.26177);
INSERT INTO AirQualityMeasurement VALUES (20, 3, 8.774);
INSERT INTO AirQualityMeasurement VALUES (20, 4, 12.1);
INSERT INTO AirQualityMeasurement VALUES (21, 1, 38.05875);
INSERT INTO AirQualityMeasurement VALUES (21, 2, 2.19524);
INSERT INTO AirQualityMeasurement VALUES (21, 3, 7.925);
INSERT INTO AirQualityMeasurement VALUES (21, 4, 10.5);
INSERT INTO AirQualityMeasurement VALUES (22, 1, 44.94375);
INSERT INTO AirQualityMeasurement VALUES (22, 2, 2.26177);
INSERT INTO AirQualityMeasurement VALUES (22, 3, 8.396);
INSERT INTO AirQualityMeasurement VALUES (22, 4, 11.3);
INSERT INTO AirQualityMeasurement VALUES (23, 1, 28.6875);
INSERT INTO AirQualityMeasurement VALUES (23, 2, 1.99568);
INSERT INTO AirQualityMeasurement VALUES (23, 3, 7.83);
INSERT INTO AirQualityMeasurement VALUES (23, 4, 10);
INSERT INTO AirQualityMeasurement VALUES (24, 1, 30.2175);
INSERT INTO AirQualityMeasurement VALUES (24, 2, 1.79611);
INSERT INTO AirQualityMeasurement VALUES (24, 3, 6.981);
INSERT INTO AirQualityMeasurement VALUES (24, 4, 9.4);

/* INSERT INTO Water Measurement Table */
-- Contaminant_ID: 5 = Nitrate (mg l-1), 6 = Nitrite <mg l-1), 7 = Phosphate (mg l-1), 8 = EC (cfu/100ml)
INSERT INTO WaterQualityMeasurement (Measurement_ID, Contaminant_ID, Contaminant_Concentration) VALUES (25, 6, 26.33);
INSERT INTO WaterQualityMeasurement (Measurement_ID, Contaminant_ID, Contaminant_Concentration) VALUES (25, 5, 1.33);
INSERT INTO WaterQualityMeasurement (Measurement_ID, Contaminant_ID, Contaminant_Concentration) VALUES (25, 7, 0.07);
INSERT INTO WaterQualityMeasurement (Measurement_ID, Contaminant_ID, Contaminant_Concentration) VALUES (26, 6, 23.4);
INSERT INTO WaterQualityMeasurement (Measurement_ID, Contaminant_ID, Contaminant_Concentration) VALUES (26, 5, 1.52);
INSERT INTO WaterQualityMeasurement (Measurement_ID, Contaminant_ID, Contaminant_Concentration) VALUES (26, 7, 0.06);
INSERT INTO WaterQualityMeasurement (Measurement_ID, Contaminant_ID, Contaminant_Concentration) VALUES (27, 6, 28.9);
INSERT INTO WaterQualityMeasurement (Measurement_ID, Contaminant_ID, Contaminant_Concentration) VALUES (27, 5, 1.32);
INSERT INTO WaterQualityMeasurement (Measurement_ID, Contaminant_ID, Contaminant_Concentration) VALUES (27, 7, 0.05);
INSERT INTO WaterQualityMeasurement (Measurement_ID, Contaminant_ID, Contaminant_Concentration) VALUES (28, 6, 22.54);
INSERT INTO WaterQualityMeasurement (Measurement_ID, Contaminant_ID, Contaminant_Concentration) VALUES (28, 5, 1.41);
INSERT INTO WaterQualityMeasurement (Measurement_ID, Contaminant_ID, Contaminant_Concentration) VALUES (29, 6, 29.36);
INSERT INTO WaterQualityMeasurement (Measurement_ID, Contaminant_ID, Contaminant_Concentration) VALUES (29, 5, 1.61);
INSERT INTO WaterQualityMeasurement (Measurement_ID, Contaminant_ID, Contaminant_Concentration) VALUES (29, 7, 0.02);
INSERT INTO WaterQualityMeasurement (Measurement_ID, Contaminant_ID, Contaminant_Concentration) VALUES (30, 6, 25.19);
INSERT INTO WaterQualityMeasurement (Measurement_ID, Contaminant_ID, Contaminant_Concentration) VALUES (30, 5, 1.42);
INSERT INTO WaterQualityMeasurement (Measurement_ID, Contaminant_ID, Contaminant_Concentration) VALUES (30, 7, 0.02);
INSERT INTO WaterQualityMeasurement (Measurement_ID, Contaminant_ID, Contaminant_Concentration) VALUES (31, 6, 25.39);
INSERT INTO WaterQualityMeasurement (Measurement_ID, Contaminant_ID, Contaminant_Concentration) VALUES (31, 5, 1.26);
INSERT INTO WaterQualityMeasurement (Measurement_ID, Contaminant_ID, Contaminant_Concentration) VALUES (31, 7, 0.03);
INSERT INTO WaterQualityMeasurement (Measurement_ID, Contaminant_ID, Contaminant_Concentration) VALUES (32, 6, 23.18);
INSERT INTO WaterQualityMeasurement (Measurement_ID, Contaminant_ID, Contaminant_Concentration) VALUES (32, 5, 1.623);
INSERT INTO WaterQualityMeasurement (Measurement_ID, Contaminant_ID, Contaminant_Concentration) VALUES (32, 7, 0.03);
INSERT INTO WaterQualityMeasurement (Measurement_ID, Contaminant_ID, Contaminant_Concentration) VALUES (33, 6, 27.25);
INSERT INTO WaterQualityMeasurement (Measurement_ID, Contaminant_ID, Contaminant_Concentration) VALUES (33, 5, 1.26);
INSERT INTO WaterQualityMeasurement (Measurement_ID, Contaminant_ID, Contaminant_Concentration) VALUES (33, 7, 0.06);
INSERT INTO WaterQualityMeasurement (Measurement_ID, Contaminant_ID, Contaminant_Concentration) VALUES (34, 6, 29.07);
INSERT INTO WaterQualityMeasurement (Measurement_ID, Contaminant_ID, Contaminant_Concentration) VALUES (34, 5, 1.4);
INSERT INTO WaterQualityMeasurement (Measurement_ID, Contaminant_ID, Contaminant_Concentration) VALUES (34, 7, 0.07);
INSERT INTO WaterQualityMeasurement (Measurement_ID, Contaminant_ID, Contaminant_Concentration) VALUES (35, 6, 25.7);
INSERT INTO WaterQualityMeasurement (Measurement_ID, Contaminant_ID, Contaminant_Concentration) VALUES (35, 5, 1.52);
INSERT INTO WaterQualityMeasurement (Measurement_ID, Contaminant_ID, Contaminant_Concentration) VALUES (35, 7, 0.04);
INSERT INTO WaterQualityMeasurement (Measurement_ID, Contaminant_ID, Contaminant_Concentration) VALUES (36, 6, 27.19);
INSERT INTO WaterQualityMeasurement (Measurement_ID, Contaminant_ID, Contaminant_Concentration) VALUES (36, 5, 1.26);
INSERT INTO WaterQualityMeasurement (Measurement_ID, Contaminant_ID, Contaminant_Concentration) VALUES (36, 7, 0.05);
INSERT INTO WaterQualityMeasurement (Measurement_ID, Contaminant_ID, Contaminant_Concentration) VALUES (37, 6, 23.65);
INSERT INTO WaterQualityMeasurement (Measurement_ID, Contaminant_ID, Contaminant_Concentration) VALUES (37, 5, 1.33);
INSERT INTO WaterQualityMeasurement (Measurement_ID, Contaminant_ID, Contaminant_Concentration) VALUES (37, 7, 0.05);
INSERT INTO WaterQualityMeasurement (Measurement_ID, Contaminant_ID, Contaminant_Concentration) VALUES (38, 6, 21.96);
INSERT INTO WaterQualityMeasurement (Measurement_ID, Contaminant_ID, Contaminant_Concentration) VALUES (38, 5, 1.42);
INSERT INTO WaterQualityMeasurement (Measurement_ID, Contaminant_ID, Contaminant_Concentration) VALUES (38, 7, 0.07);
INSERT INTO WaterQualityMeasurement (Measurement_ID, Contaminant_ID, Contaminant_Concentration) VALUES (39, 6, 28.31);
INSERT INTO WaterQualityMeasurement (Measurement_ID, Contaminant_ID, Contaminant_Concentration) VALUES (39, 5, 1.28);
INSERT INTO WaterQualityMeasurement (Measurement_ID, Contaminant_ID, Contaminant_Concentration) VALUES (39, 7, 0.06);
INSERT INTO WaterQualityMeasurement (Measurement_ID, Contaminant_ID, Contaminant_Concentration) VALUES (40, 6, 26.75);
INSERT INTO WaterQualityMeasurement (Measurement_ID, Contaminant_ID, Contaminant_Concentration) VALUES (40, 5, 1.21);
INSERT INTO WaterQualityMeasurement (Measurement_ID, Contaminant_ID, Contaminant_Concentration) VALUES (40, 7, 0.05);
INSERT INTO WaterQualityMeasurement (Measurement_ID, Contaminant_ID, Contaminant_Concentration) VALUES (41, 6, 26.75);
INSERT INTO WaterQualityMeasurement (Measurement_ID, Contaminant_ID, Contaminant_Concentration) VALUES (41, 5, 1.64);
INSERT INTO WaterQualityMeasurement (Measurement_ID, Contaminant_ID, Contaminant_Concentration) VALUES (41, 7, 0.03);
INSERT INTO WaterQualityMeasurement (Measurement_ID, Contaminant_ID, Contaminant_Concentration) VALUES (42, 6, 25.65);
INSERT INTO WaterQualityMeasurement (Measurement_ID, Contaminant_ID, Contaminant_Concentration) VALUES (42, 5, 1.42);
INSERT INTO WaterQualityMeasurement (Measurement_ID, Contaminant_ID, Contaminant_Concentration) VALUES (42, 7, 0.01);
INSERT INTO WaterQualityMeasurement (Measurement_ID, Contaminant_ID, Contaminant_Concentration) VALUES (43, 6, 25.2);
INSERT INTO WaterQualityMeasurement (Measurement_ID, Contaminant_ID, Contaminant_Concentration) VALUES (43, 5, 1.65);
INSERT INTO WaterQualityMeasurement (Measurement_ID, Contaminant_ID, Contaminant_Concentration) VALUES (43, 7, 0.05);
INSERT INTO WaterQualityMeasurement (Measurement_ID, Contaminant_ID, Contaminant_Concentration) VALUES (44, 6, 27);
INSERT INTO WaterQualityMeasurement (Measurement_ID, Contaminant_ID, Contaminant_Concentration) VALUES (44, 5, 1.46);
INSERT INTO WaterQualityMeasurement (Measurement_ID, Contaminant_ID, Contaminant_Concentration) VALUES (44, 7, 0.02);
INSERT INTO WaterQualityMeasurement (Measurement_ID, Contaminant_ID, Contaminant_Concentration) VALUES (45, 6, 26.54);
INSERT INTO WaterQualityMeasurement (Measurement_ID, Contaminant_ID, Contaminant_Concentration) VALUES (45, 5, 1.35);
INSERT INTO WaterQualityMeasurement (Measurement_ID, Contaminant_ID, Contaminant_Concentration) VALUES (45, 7, 0.05);
INSERT INTO WaterQualityMeasurement (Measurement_ID, Contaminant_ID, Contaminant_Concentration) VALUES (46, 6, 24.15);
INSERT INTO WaterQualityMeasurement (Measurement_ID, Contaminant_ID, Contaminant_Concentration) VALUES (46, 5, 1.36);
INSERT INTO WaterQualityMeasurement (Measurement_ID, Contaminant_ID, Contaminant_Concentration) VALUES (46, 7, 0.05);
INSERT INTO WaterQualityMeasurement (Measurement_ID, Contaminant_ID, Contaminant_Concentration) VALUES (47, 6, 23.72);
INSERT INTO WaterQualityMeasurement (Measurement_ID, Contaminant_ID, Contaminant_Concentration) VALUES (47, 5, 1.52);
INSERT INTO WaterQualityMeasurement (Measurement_ID, Contaminant_ID, Contaminant_Concentration) VALUES (47, 7, 0.02);
INSERT INTO WaterQualityMeasurement (Measurement_ID, Contaminant_ID, Contaminant_Concentration) VALUES (48, 6, 20.89);
INSERT INTO WaterQualityMeasurement (Measurement_ID, Contaminant_ID, Contaminant_Concentration) VALUES (48, 5, 1.33);
INSERT INTO WaterQualityMeasurement (Measurement_ID, Contaminant_ID, Contaminant_Concentration) VALUES (48, 7, 0.05);

/*INSERT INTO Weather Measurment Table*/
INSERT INTO WeatherMeasurement (Measurement_ID, Temperature, Humidity, Wind_Speed, Wind_Direction) 
VALUES
(49, 0.6, 98, 1.18, 78),
(50, 2.4, 96, 0.93, 106),
(51, 2.5, 97, 1.08, 103),
(52, 2.4, 97, 1.53, 142),
(53, 1.9, 96, 2.15, 179),
(54, 3.1, 93, 3.35, 179),
(55, 3.5, 93, 3.65, 178),
(56, 3.5, 94, 3.46, 169),
(57, 3.3, 93, 3.38, 161),
(58, 3.0, 95, 3.36, 152),
(59, 4.0, 93, 3.61, 158),
(60, 5.5, 85, 4.29, 165),
(61, 5.9, 82, 4.63, 174),
(62, 6.5, 80, 5.5, 182),
(63, 6.5, 80, 5.4, 182),
(64, 6.2, 80, 4.96, 183),
(65, 5.7, 82, 5.1, 179),
(66, 5.5, 82, 4.94, 172),
(67, 5.7, 79, 4.88, 169),
(68, 5.6, 78, 4.83, 170),
(69, 5.5, 79, 4.78, 174),
(70, 5.5, 80, 5.36, 171),
(71, 5.5, 79, 5.66, 171),
(72, 5.4, 80, 5.27, 171);


