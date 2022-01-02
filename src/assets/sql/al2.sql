CREATE TABLE Hauptkategorien (
  ID INTEGER NOT NULL AUTO_INCREMENT PRIMARY KEY, 
  Name VARCHAR(255)
);
CREATE TABLE Produkte (
  ID INTEGER NOT NULL AUTO_INCREMENT PRIMARY KEY, 
  Produktname VARCHAR(512), 
  Preis INTEGER(10), 
  Link VARCHAR(1024), 
  HauptkategorieID INTEGER
);
CREATE TABLE Kategorien (
  ID INTEGER NOT NULL AUTO_INCREMENT PRIMARY KEY, 
  Name VARCHAR(255), 
  Wert VARCHAR(255)
);
/* Feature 4 */
CREATE TABLE Kunden (
  ID INTEGER NOT NULL AUTO_INCREMENT PRIMARY KEY, 
  Name VARCHAR(255), 
  Vorname VARCHAR(255), 
  Adresse VARCHAR(255), 
  Wohnort VARCHAR(255)
  );
CREATE TABLE Bestellungen (
  ID INTEGER NOT NULL AUTO_INCREMENT PRIMARY KEY, 
  Bestellungen VARCHAR(255),
  Bestelldatum VARCHAR(255)
);
-- n:m Beziehung "Kategorien beschreiben Produkte"
CREATE TABLE Produkte_Kategorien (
  ID INTEGER NOT NULL AUTO_INCREMENT PRIMARY KEY, 
  ProduktID INTEGER, KategorieID INTEGER
);
-- Hauptkategorien 
INSERT INTO Hauptkategorien (Name) 
VALUES 
  ("Actioncam");
INSERT INTO Hauptkategorien (Name) 
VALUES 
  ("Sofortbildkamera");
INSERT INTO Hauptkategorien (Name) 
VALUES 
  ("Spiegelreflex");
INSERT INTO Hauptkategorien (Name) 
VALUES 
  ("Systemkamera");
INSERT INTO Hauptkategorien (Name) 
VALUES 
  ("Videokamera");
-- Kategorien 
INSERT INTO Kategorien (Name, Wert) 
VALUES 
  ("Marke", "Blackmagic");
INSERT INTO Kategorien (Name, Wert) 
VALUES 
  ("Marke", "Canon");
INSERT INTO Kategorien (Name, Wert) 
VALUES 
  ("Marke", "DJI");
INSERT INTO Kategorien (Name, Wert) 
VALUES 
  ("Marke", "Fujifilm");
INSERT INTO Kategorien (Name, Wert) 
VALUES 
  ("Marke", "GoPro");
INSERT INTO Kategorien (Name, Wert) 
VALUES 
  ("Marke", "Nikon");
INSERT INTO Kategorien (Name, Wert) 
VALUES 
  ("Marke", "Polaroid");
INSERT INTO Kategorien (Name, Wert) 
VALUES 
  ("Marke", "Sony");
INSERT INTO Kategorien (Name, Wert) 
VALUES 
  ("Aufloesung", "0.7 Mpx");
INSERT INTO Kategorien (Name, Wert) 
VALUES 
  ("Aufloesung", "10.2 Mpx");
INSERT INTO Kategorien (Name, Wert) 
VALUES 
  ("Aufloesung", "12 Mpx");
INSERT INTO Kategorien (Name, Wert) 
VALUES 
  ("Aufloesung", "20 Mpx");
INSERT INTO Kategorien (Name, Wert) 
VALUES 
  ("Aufloesung", "20.1 Mpx");
INSERT INTO Kategorien (Name, Wert) 
VALUES 
  ("Aufloesung", "21.2 Mpx");
INSERT INTO Kategorien (Name, Wert) 
VALUES 
  ("Aufloesung", "23 Mpx");
INSERT INTO Kategorien (Name, Wert) 
VALUES 
  ("Aufloesung", "24 Mpx");
INSERT INTO Kategorien (Name, Wert) 
VALUES 
  ("Aufloesung", "24.2 px");
INSERT INTO Kategorien (Name, Wert) 
VALUES 
  ("Aufloesung", "26.1 Mpx");
INSERT INTO Kategorien (Name, Wert) 
VALUES 
  ("Aufloesung", "32.5 Mpx");
INSERT INTO Kategorien (Name, Wert) 
VALUES 
  ("Aufloesung", "45.7 Mpx");
INSERT INTO Kategorien (Name, Wert) 
VALUES 
  ("Aufloesung", "60 Mpx");
INSERT INTO Kategorien (Name, Wert) 
VALUES 
  ("FPS", "-");
INSERT INTO Kategorien (Name, Wert) 
VALUES 
  ("FPS", "120p");
INSERT INTO Kategorien (Name, Wert) 
VALUES 
  ("FPS", "180p");
INSERT INTO Kategorien (Name, Wert) 
VALUES 
  ("FPS", "240p");
INSERT INTO Kategorien (Name, Wert) 
VALUES 
  ("FPS", "30p");
INSERT INTO Kategorien (Name, Wert) 
VALUES 
  ("FPS", "480p");
INSERT INTO Kategorien (Name, Wert) 
VALUES 
  ("FPS", "60p");
INSERT INTO Kategorien (Name, Wert) 
VALUES 
  ("FPS", "720p");
INSERT INTO Kategorien (Name, Wert) 
VALUES 
  ("Sensorgroesse", "1/2.3");
INSERT INTO Kategorien (Name, Wert) 
VALUES 
  ("Sensorgroesse", "APS-C");
INSERT INTO Kategorien (Name, Wert) 
VALUES 
  ("Sensorgroesse", "Super 35");
INSERT INTO Kategorien (Name, Wert) 
VALUES 
  ("Sensorgroesse", "Vollformat");
-- Produkte 
INSERT INTO Produkte (
  Produktname, Preis, Link, HauptkategorieID
) 
VALUES 
  (
    "Sony A7 III - Original", "1949", 
    "https://www.galaxus.ch/de/s1/product/sony-alpha-7-iii-body-24-mpx-vollformat-kamera-7950795", 
    4
  );
INSERT INTO Produkte (
  Produktname, Preis, Link, HauptkategorieID
) 
VALUES 
  (
    "Sony A7 III - Basic", "1100", "", 
    4
  );
INSERT INTO Produkte (
  Produktname, Preis, Link, HauptkategorieID
) 
VALUES 
  (
    "Sony A7 III - Professional", "2470", 
    "", 4
  );
INSERT INTO Produkte (
  Produktname, Preis, Link, HauptkategorieID
) 
VALUES 
  (
    "CanonÿEOS R6 - Original", "2339", 
    "https://www.galaxus.ch/de/s1/product/canon-eos-r6-body-2010-mpx-vollformat-kamera-13410231", 
    4
  );
INSERT INTO Produkte (
  Produktname, Preis, Link, HauptkategorieID
) 
VALUES 
  (
    "CanonÿEOS R6  - Basic", "1700", 
    "", 4
  );
INSERT INTO Produkte (
  Produktname, Preis, Link, HauptkategorieID
) 
VALUES 
  (
    "CanonÿEOS R6 - Professional", 
    "2999", "", 4
  );
INSERT INTO Produkte (
  Produktname, Preis, Link, HauptkategorieID
) 
VALUES 
  (
    "FujifilmÿX-T4 - Original", "1695", 
    "https://www.galaxus.ch/de/s1/product/fujifilm-x-t4-body-2610-mpx-aps-c-dx-kamera-12797756", 
    4
  );
INSERT INTO Produkte (
  Produktname, Preis, Link, HauptkategorieID
) 
VALUES 
  (
    "FujifilmÿX-T4 - Basic", "1045", 
    "", 4
  );
INSERT INTO Produkte (
  Produktname, Preis, Link, HauptkategorieID
) 
VALUES 
  (
    "FujifilmÿX-T4 - Professional", 
    "2100", "", 4
  );
INSERT INTO Produkte (
  Produktname, Preis, Link, HauptkategorieID
) 
VALUES 
  (
    "DjiÿOsmo Action - Original", "251", 
    "https://www.galaxus.ch/de/s1/product/dji-osmo-action-60p-4k-actioncam-11128106", 
    1
  );
INSERT INTO Produkte (
  Produktname, Preis, Link, HauptkategorieID
) 
VALUES 
  (
    "DjiÿOsmo Action - Basic", "199", 
    "", 1
  );
INSERT INTO Produkte (
  Produktname, Preis, Link, HauptkategorieID
) 
VALUES 
  (
    "DjiÿOsmo Action - Professional", 
    "350", "", 1
  );
INSERT INTO Produkte (
  Produktname, Preis, Link, HauptkategorieID
) 
VALUES 
  (
    "GoProÿHERO 10 - Original", "460", 
    "https://www.galaxus.ch/de/s1/product/gopro-hero-10-60p-53k-actioncam-16483107", 
    1
  );
INSERT INTO Produkte (
  Produktname, Preis, Link, HauptkategorieID
) 
VALUES 
  (
    "GoProÿHERO 10 - Basic", "390", 
    "", 1
  );
INSERT INTO Produkte (
  Produktname, Preis, Link, HauptkategorieID
) 
VALUES 
  (
    "GoProÿHERO 10 - Professional", 
    "649", "", 1
  );
INSERT INTO Produkte (
  Produktname, Preis, Link, HauptkategorieID
) 
VALUES 
  (
    "CanonÿEOS 90D - Original", "1077", 
    "https://www.galaxus.ch/de/s1/product/canon-eos-90d-body-3250-mpx-aps-c-dx-kamera-11799756", 
    3
  );
INSERT INTO Produkte (
  Produktname, Preis, Link, HauptkategorieID
) 
VALUES 
  (
    "CanonÿEOS 90D - Basic", "799", 
    "", 3
  );
INSERT INTO Produkte (
  Produktname, Preis, Link, HauptkategorieID
) 
VALUES 
  (
    "CanonÿEOS 90D - Professional", 
    "1399", "", 3
  );
INSERT INTO Produkte (
  Produktname, Preis, Link, HauptkategorieID
) 
VALUES 
  (
    "NikonÿD850 - Original", "2400", 
    "https://www.galaxus.ch/de/s1/product/nikon-d850-body-4570-mpx-vollformat-kamera-6492863", 
    3
  );
INSERT INTO Produkte (
  Produktname, Preis, Link, HauptkategorieID
) 
VALUES 
  (
    "NikonÿD850 - Basic", "1890", "", 
    3
  );
INSERT INTO Produkte (
  Produktname, Preis, Link, HauptkategorieID
) 
VALUES 
  (
    "NikonÿD850 - Professional", "2800", 
    "", 3
  );
INSERT INTO Produkte (
  Produktname, Preis, Link, HauptkategorieID
) 
VALUES 
  (
    "PolaroidÿNow - Original", "119", 
    "https://www.galaxus.ch/de/s1/product/polaroid-now-sofortbildkamera-13015756", 
    2
  );
INSERT INTO Produkte (
  Produktname, Preis, Link, HauptkategorieID
) 
VALUES 
  (
    "PolaroidÿNow - Basic", "79", "", 
    2
  );
INSERT INTO Produkte (
  Produktname, Preis, Link, HauptkategorieID
) 
VALUES 
  (
    "PolaroidÿNow - Professional", 
    "240", "", 2
  );
INSERT INTO Produkte (
  Produktname, Preis, Link, HauptkategorieID
) 
VALUES 
  (
    "BMPCC 6K - Original", "1737", "https://www.galaxus.ch/de/s1/product/blackmagic-pocket-cinema-camera-6k-2120-mpx-50p-videokamera-11600161", 
    5
  );
INSERT INTO Produkte (
  Produktname, Preis, Link, HauptkategorieID
) 
VALUES 
  ("BMPCC 6K - Basic", "1320", "", 5);
INSERT INTO Produkte (
  Produktname, Preis, Link, HauptkategorieID
) 
VALUES 
  (
    "BMPCC 6K - Professional", "2200", 
    "", 5
  );
INSERT INTO Produkte (
  Produktname, Preis, Link, HauptkategorieID
) 
VALUES 
  (
    "SonyÿCinema Line FX6 - Original", 
    "6428", "https://www.galaxus.ch/de/s1/product/sony-cinema-line-fx6-1020-mpx-60p-videokamera-14527222", 
    5
  );
INSERT INTO Produkte (
  Produktname, Preis, Link, HauptkategorieID
) 
VALUES 
  (
    "SonyÿCinema Line FX6 - Basic", 
    "5400", "", 5
  );
INSERT INTO Produkte (
  Produktname, Preis, Link, HauptkategorieID
) 
VALUES 
  (
    "SonyÿCinema Line FX6 - Professional", 
    "8700", "", 5
  );
INSERT INTO Produkte (
  Produktname, Preis, Link, HauptkategorieID
) 
VALUES 
  (
    "SonyÿAlpha 6600 - Original", "1334", 
    "https://www.galaxus.ch/de/s1/product/sony-alpha-6600-body-2420-mpx-aps-c-dx-kamera-11807606", 
    4
  );
INSERT INTO Produkte (
  Produktname, Preis, Link, HauptkategorieID
) 
VALUES 
  (
    "SonyÿAlpha 6600 - Basic", "1334", 
    "", 4
  );
INSERT INTO Produkte (
  Produktname, Preis, Link, HauptkategorieID
) 
VALUES 
  (
    "SonyÿAlpha 6600 - Professional", 
    "1334", "", 4
  );
-- Produktkategorien 
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) 
VALUES 
  (1, 8);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) 
VALUES 
  (1, 16);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) 
VALUES 
  (1, 23);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) 
VALUES 
  (1, 33);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) 
VALUES 
  (2, 8);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) 
VALUES 
  (2, 16);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) 
VALUES 
  (2, 23);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) 
VALUES 
  (2, 33);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) 
VALUES 
  (3, 8);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) 
VALUES 
  (3, 12);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) 
VALUES 
  (3, 25);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) 
VALUES 
  (3, 33);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) 
VALUES 
  (4, 2);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) 
VALUES 
  (4, 13);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) 
VALUES 
  (4, 23);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) 
VALUES 
  (4, 33);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) 
VALUES 
  (5, 2);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) 
VALUES 
  (5, 13);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) 
VALUES 
  (5, 28);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) 
VALUES 
  (5, 33);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) 
VALUES 
  (6, 2);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) 
VALUES 
  (6, 13);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) 
VALUES 
  (6, 24);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) 
VALUES 
  (6, 33);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) 
VALUES 
  (7, 4);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) 
VALUES 
  (7, 18);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) 
VALUES 
  (7, 28);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) 
VALUES 
  (7, 31);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) 
VALUES 
  (8, 4);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) 
VALUES 
  (8, 11);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) 
VALUES 
  (8, 28);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) 
VALUES 
  (8, 31);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) 
VALUES 
  (9, 4);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) 
VALUES 
  (9, 18);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) 
VALUES 
  (9, 23);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) 
VALUES 
  (9, 31);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) 
VALUES 
  (10, 3);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) 
VALUES 
  (10, 11);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) 
VALUES 
  (10, 25);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) 
VALUES 
  (10, 30);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) 
VALUES 
  (11, 3);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) 
VALUES 
  (11, 11);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) 
VALUES 
  (11, 25);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) 
VALUES 
  (11, 30);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) 
VALUES 
  (12, 3);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) 
VALUES 
  (12, 11);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) 
VALUES 
  (12, 27);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) 
VALUES 
  (12, 30);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) 
VALUES 
  (13, 5);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) 
VALUES 
  (13, 15);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) 
VALUES 
  (13, 25);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) 
VALUES 
  (13, 30);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) 
VALUES 
  (14, 5);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) 
VALUES 
  (14, 15);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) 
VALUES 
  (14, 23);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) 
VALUES 
  (14, 30);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) 
VALUES 
  (15, 5);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) 
VALUES 
  (15, 15);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) 
VALUES 
  (15, 25);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) 
VALUES 
  (15, 30);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) 
VALUES 
  (16, 2);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) 
VALUES 
  (16, 19);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) 
VALUES 
  (16, 26);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) 
VALUES 
  (16, 31);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) 
VALUES 
  (17, 2);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) 
VALUES 
  (17, 19);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) 
VALUES 
  (17, 26);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) 
VALUES 
  (17, 31);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) 
VALUES 
  (18, 2);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) 
VALUES 
  (18, 19);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) 
VALUES 
  (18, 28);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) 
VALUES 
  (18, 31);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) 
VALUES 
  (19, 6);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) 
VALUES 
  (19, 20);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) 
VALUES 
  (19, 26);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) 
VALUES 
  (19, 33);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) 
VALUES 
  (20, 6);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) 
VALUES 
  (20, 16);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) 
VALUES 
  (20, 26);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) 
VALUES 
  (20, 33);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) 
VALUES 
  (21, 6);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) 
VALUES 
  (21, 20);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) 
VALUES 
  (21, 23);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) 
VALUES 
  (21, 33);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) 
VALUES 
  (22, 7);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) 
VALUES 
  (22, 9);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) 
VALUES 
  (22, 22);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) 
VALUES 
  (22, 32);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) 
VALUES 
  (23, 7);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) 
VALUES 
  (23, 9);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) 
VALUES 
  (23, 22);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) 
VALUES 
  (23, 32);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) 
VALUES 
  (24, 7);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) 
VALUES 
  (24, 9);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) 
VALUES 
  (24, 22);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) 
VALUES 
  (24, 32);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) 
VALUES 
  (25, 1);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) 
VALUES 
  (25, 14);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) 
VALUES 
  (25, 23);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) 
VALUES 
  (25, 32);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) 
VALUES 
  (26, 1);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) 
VALUES 
  (26, 11);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) 
VALUES 
  (26, 28);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) 
VALUES 
  (26, 32);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) 
VALUES 
  (27, 1);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) 
VALUES 
  (27, 14);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) 
VALUES 
  (27, 25);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) 
VALUES 
  (27, 32);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) 
VALUES 
  (28, 8);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) 
VALUES 
  (28, 10);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) 
VALUES 
  (28, 28);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) 
VALUES 
  (28, 32);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) 
VALUES 
  (29, 8);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) 
VALUES 
  (29, 10);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) 
VALUES 
  (29, 28);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) 
VALUES 
  (29, 32);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) 
VALUES 
  (30, 8);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) 
VALUES 
  (30, 21);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) 
VALUES 
  (30, 29);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) 
VALUES 
  (30, 32);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) 
VALUES 
  (31, 8);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) 
VALUES 
  (31, 17);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) 
VALUES 
  (31, 26);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) 
VALUES 
  (31, 31);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) 
VALUES 
  (32, 8);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) 
VALUES 
  (32, 17);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) 
VALUES 
  (32, 26);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) 
VALUES 
  (32, 31);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) 
VALUES 
  (33, 8);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) 
VALUES 
  (33, 17);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) 
VALUES 
  (33, 26);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) 
VALUES 
  (33, 31);


SELECT * FROM Hauptkategorien;	
SELECT * FROM Kategorien;	
SELECT * FROM Produkte;	
SELECT * FROM Produkte_Kategorien;	
SELECT * FROM Kunden;	
SELECT * FROM Bestellungen;	


/* Hauptkategorien (Feature 2)*/
SELECT 
  Produkte.Produktname, 
  Produkte.Preis, 
  Hauptkategorien.Name 
FROM 
  Produkte, 
  Hauptkategorien 
WHERE 
  Produkte.HauptkategorieID = Hauptkategorien.ID IS NOT NULL;


/* Kategorien (Feature 3)*/
SELECT 
  Produkte.Produktname, 
  Produkte.Preis, 
  Kategorien.Name, 
  Kategorien.Wert 
FROM 
  Produkte, 
  Produkte_Kategorien, 
  Kategorien 
WHERE 
  Produkte_Kategorien.ProduktID = Produkte.ID 
  AND Produkte_Kategorien.KategorieID = Kategorien.ID 
  AND Produkte.ID = 10 IS NOT NULL;
