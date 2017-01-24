#INIT SCHEMA
DROP SCHEMA IF EXISTS XF;
CREATE SCHEMA XF;
USE XF;

#############Country table#############
CREATE TABLE Country (
  CountryID INT         NOT NULL AUTO_INCREMENT PRIMARY KEY,
  Name      VARCHAR(60) NOT NULL UNIQUE
);
INSERT INTO Country (Name) VALUE ('BigCountry1');
INSERT INTO Country (Name) VALUE ('BigCountry2');
INSERT INTO Country (Name) VALUE ('SmallCountry1');
INSERT INTO Country (Name) VALUE ('SmallCountry2');
INSERT INTO Country (Name) VALUE ('CountryWithNoBuildings');
INSERT INTO Country (Name) VALUE ('CountryWithNoCities');
#############Country table end#############

#############City table#############
CREATE TABLE City (
  CityID     INT         NOT NULL AUTO_INCREMENT PRIMARY KEY,
  CountryID  INT         NOT NULL,
  Name       VARCHAR(60) NOT NULL,
  Population INT         NOT NULL,
  FOREIGN KEY (CountryID)
  REFERENCES Country (CountryID)
    ON DELETE CASCADE
    ON UPDATE CASCADE
);
#############For BigCountry1#############
INSERT INTO City (CountryID, Name, Population) VALUES (
  (SELECT CountryID
   FROM Country
   WHERE Name = 'BigCountry1'),
  'City1',
  300
);
INSERT INTO City (CountryID, Name, Population) VALUES (
  (SELECT CountryID
   FROM Country
   WHERE Name = 'BigCountry1'),
  'City2',
  100
);
INSERT INTO City (CountryID, Name, Population) VALUES (
  (SELECT CountryID
   FROM Country
   WHERE Name = 'BigCountry1'),
  'City3',
  600
);
#############For BigCountry2#############
INSERT INTO City (CountryID, Name, Population) VALUES (
  (SELECT CountryID
   FROM Country
   WHERE Name = 'BigCountry2'),
  'City4',
  200
);
INSERT INTO City (CountryID, Name, Population) VALUES (
  (SELECT CountryID
   FROM Country
   WHERE Name = 'BigCountry2'),
  'City5',
  100
);
INSERT INTO City (CountryID, Name, Population) VALUES (
  (SELECT CountryID
   FROM Country
   WHERE Name = 'BigCountry2'),
  'City6',
  600
);
INSERT INTO City (CountryID, Name, Population) VALUES (
  (SELECT CountryID
   FROM Country
   WHERE Name = 'BigCountry2'),
  'City7',
  800
);
#############For SmallCountry1#############
INSERT INTO City (CountryID, Name, Population) VALUES (
  (SELECT CountryID
   FROM Country
   WHERE Name = 'SmallCountry1'),
  'City8',
  50
);
INSERT INTO City (CountryID, Name, Population) VALUES (
  (SELECT CountryID
   FROM Country
   WHERE Name = 'SmallCountry1'),
  'City9',
  200
);
#############For SmallCountry2#############
INSERT INTO City (CountryID, Name, Population) VALUES (
  (SELECT CountryID
   FROM Country
   WHERE Name = 'SmallCountry2'),
  'City10',
  300
);
#############For CountryWithNoBuildings#############
INSERT INTO City (CountryID, Name, Population) VALUES (
  (SELECT CountryID
   FROM Country
   WHERE Name = 'CountryWithNoBuildings'),
  'City11',
  200
);
INSERT INTO City (CountryID, Name, Population) VALUES (
  (SELECT CountryID
   FROM Country
   WHERE Name = 'CountryWithNoBuildings'),
  'City12',
  200
);
#############City table end#############

#############Building table#############
CREATE TABLE Building (
  BuildingID INT          NOT NULL AUTO_INCREMENT PRIMARY KEY,
  CityID     INT          NOT NULL,
  Name       VARCHAR(100) NOT NULL,
  Floors     INT          NOT NULL,
  FOREIGN KEY (CityID)
  REFERENCES City (CityID)
    ON DELETE CASCADE
    ON UPDATE CASCADE
);
#############For City1#############
INSERT INTO Building (CityID, Name, Floors) VALUES (
  (SELECT CityID
   FROM City
   WHERE Name = 'City1'),
  'Building1',
  4
);
INSERT INTO Building (CityID, Name, Floors) VALUES (
  (SELECT CityID
   FROM City
   WHERE Name = 'City1'),
  'Building2',
  2
);
#############For City2#############
INSERT INTO Building (CityID, Name, Floors) VALUES (
  (SELECT CityID
   FROM City
   WHERE Name = 'City2'),
  'Building3',
  2
);
INSERT INTO Building (CityID, Name, Floors) VALUES (
  (SELECT CityID
   FROM City
   WHERE Name = 'City2'),
  'Building4',
  2
);
#############For City3#############
INSERT INTO Building (CityID, Name, Floors) VALUES (
  (SELECT CityID
   FROM City
   WHERE Name = 'City3'),
  'Building5',
  2
);
INSERT INTO Building (CityID, Name, Floors) VALUES (
  (SELECT CityID
   FROM City
   WHERE Name = 'City3'),
  'Building6',
  2
);
INSERT INTO Building (CityID, Name, Floors) VALUES (
  (SELECT CityID
   FROM City
   WHERE Name = 'City3'),
  'Building7',
  2
);
#############For City4#############
INSERT INTO Building (CityID, Name, Floors) VALUES (
  (SELECT CityID
   FROM City
   WHERE Name = 'City4'),
  'Building8',
  2
);
INSERT INTO Building (CityID, Name, Floors) VALUES (
  (SELECT CityID
   FROM City
   WHERE Name = 'City4'),
  'Building9',
  2
);
#############For City5#############
INSERT INTO Building (CityID, Name, Floors) VALUES (
  (SELECT CityID
   FROM City
   WHERE Name = 'City5'),
  'Building10',
  2
);
INSERT INTO Building (CityID, Name, Floors) VALUES (
  (SELECT CityID
   FROM City
   WHERE Name = 'City5'),
  'Building11',
  2
);
INSERT INTO Building (CityID, Name, Floors) VALUES (
  (SELECT CityID
   FROM City
   WHERE Name = 'City5'),
  'Building12',
  2
);
INSERT INTO Building (CityID, Name, Floors) VALUES (
  (SELECT CityID
   FROM City
   WHERE Name = 'City5'),
  'Building13',
  2
);
INSERT INTO Building (CityID, Name, Floors) VALUES (
  (SELECT CityID
   FROM City
   WHERE Name = 'City5'),
  'Building14',
  3
);
#############For City6#############
INSERT INTO Building (CityID, Name, Floors) VALUES (
  (SELECT CityID
   FROM City
   WHERE Name = 'City6'),
  'Building15',
  2
);
INSERT INTO Building (CityID, Name, Floors) VALUES (
  (SELECT CityID
   FROM City
   WHERE Name = 'City6'),
  'Building16',
  1
);
#############For City7#############
INSERT INTO Building (CityID, Name, Floors) VALUES (
  (SELECT CityID
   FROM City
   WHERE Name = 'City7'),
  'Building17',
  3
);
#############For City8#############
INSERT INTO Building (CityID, Name, Floors) VALUES (
  (SELECT CityID
   FROM City
   WHERE Name = 'City8'),
  'Building18',
  1
);
#############For City9#############
INSERT INTO Building (CityID, Name, Floors) VALUES (
  (SELECT CityID
   FROM City
   WHERE Name = 'City9'),
  'Building19',
  1
);
#############For City10#############
INSERT INTO Building (CityID, Name, Floors) VALUES (
  (SELECT CityID
   FROM City
   WHERE Name = 'City10'),
  'Building20',
  2
);
#############Building table end#############