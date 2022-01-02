/* Feature 1 */
CREATE TABLE Hauptkategorien (
  ID INTEGER NOT NULL AUTO_INCREMENT PRIMARY KEY,  
  Name VARCHAR(255)
);

/* Feature 2 */
CREATE TABLE Produkte (
  ID INTEGER NOT NULL AUTO_INCREMENT PRIMARY KEY, 
  Produktname VARCHAR(512),
  Preis INTEGER(10),
  Link VARCHAR(1024),
  HauptkategorieID INTEGER,
  Farbe VARCHAR(255),
  Erscheinungsdatum VARCHAR(255)
);

/* Feature 3 */
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
  Lieferadresse VARCHAR(255), 
  Wohnort VARCHAR(255),
  Emailadresse VARCHAR(255)
  );
  
  /* Feature 5 */
CREATE TABLE Lieferanten (
  ID INTEGER NOT NULL AUTO_INCREMENT PRIMARY KEY, 
  Name VARCHAR(255), 
  Versandkosten VARCHAR(255)
  );
  
CREATE TABLE Bestellungen (
  ID INTEGER NOT NULL AUTO_INCREMENT PRIMARY KEY, 
  Bestellungen VARCHAR(255),
  Erstellungsdatum VARCHAR(255)
  );
  
-- n:m Beziehung "Kategorien beschreiben Produkte"
CREATE TABLE Produkte_Kategorien (
  ID INTEGER NOT NULL AUTO_INCREMENT PRIMARY KEY,
  ProduktID INTEGER, 
  KategorieID INTEGER
);

-- Hauptkategorien 

INSERT INTO Hauptkategorien (Name) VALUES ("Headphone");
INSERT INTO Hauptkategorien (Name) VALUES ("Microphone");
INSERT INTO Hauptkategorien (Name) VALUES ("Speaker");

-- Kategorien 

INSERT INTO Kategorien (Name, Wert) VALUES ("Farbe", "Black");
INSERT INTO Kategorien (Name, Wert) VALUES ("Farbe", "Blue");
INSERT INTO Kategorien (Name, Wert) VALUES ("Farbe", "Dark blue");
INSERT INTO Kategorien (Name, Wert) VALUES ("Farbe", "Grey");
INSERT INTO Kategorien (Name, Wert) VALUES ("Farbe", "Red");
INSERT INTO Kategorien (Name, Wert) VALUES ("Farbe", "Silver");
INSERT INTO Kategorien (Name, Wert) VALUES ("Farbe", "White");
INSERT INTO Kategorien (Name, Wert) VALUES ("Erscheinungsdatum", "03.06.21");
INSERT INTO Kategorien (Name, Wert) VALUES ("Erscheinungsdatum", "06.02.21");
INSERT INTO Kategorien (Name, Wert) VALUES ("Erscheinungsdatum", "09.06.19");
INSERT INTO Kategorien (Name, Wert) VALUES ("Erscheinungsdatum", "10.05.21");
INSERT INTO Kategorien (Name, Wert) VALUES ("Erscheinungsdatum", "12.12.19");
INSERT INTO Kategorien (Name, Wert) VALUES ("Erscheinungsdatum", "13.03.20");
INSERT INTO Kategorien (Name, Wert) VALUES ("Erscheinungsdatum", "15.02.19");
INSERT INTO Kategorien (Name, Wert) VALUES ("Erscheinungsdatum", "16/20/2021");
INSERT INTO Kategorien (Name, Wert) VALUES ("Erscheinungsdatum", "18.11.19");
INSERT INTO Kategorien (Name, Wert) VALUES ("Erscheinungsdatum", "19.02.21");
INSERT INTO Kategorien (Name, Wert) VALUES ("Erscheinungsdatum", "19.05.20");
INSERT INTO Kategorien (Name, Wert) VALUES ("Erscheinungsdatum", "21.05.20");
INSERT INTO Kategorien (Name, Wert) VALUES ("Erscheinungsdatum", "25.02.20");
INSERT INTO Kategorien (Name, Wert) VALUES ("Erscheinungsdatum", "25.02.21");
INSERT INTO Kategorien (Name, Wert) VALUES ("Erscheinungsdatum", "26.01.20");
INSERT INTO Kategorien (Name, Wert) VALUES ("Erscheinungsdatum", "26.02.21");
INSERT INTO Kategorien (Name, Wert) VALUES ("Erscheinungsdatum", "27.03.21");
INSERT INTO Kategorien (Name, Wert) VALUES ("Erscheinungsdatum", "29.03.19");
INSERT INTO Kategorien (Name, Wert) VALUES ("Erscheinungsdatum", "30.08.18");
INSERT INTO Kategorien (Name, Wert) VALUES ("Erscheinungsdatum", "30.08.20");
INSERT INTO Kategorien (Name, Wert) VALUES ("Unterkategorie", "In ear");
INSERT INTO Kategorien (Name, Wert) VALUES ("Unterkategorie", "Over ear");
INSERT INTO Kategorien (Name, Wert) VALUES ("Unterkategorie", "Stereo");
INSERT INTO Kategorien (Name, Wert) VALUES ("Unterkategorie", "lavalier");
INSERT INTO Kategorien (Name, Wert) VALUES ("Unterkategorie", "mobile speaker");
INSERT INTO Kategorien (Name, Wert) VALUES ("Unterkategorie", "studio");
INSERT INTO Kategorien (Name, Wert) VALUES ("Unterkategorie", "videographie");

-- Produkte 

INSERT INTO Produkte (Produktname, Preis, Link, HauptkategorieID) VALUES ("Sennheiser MOMENTUM True Wireless 2", "250", "https://www.digitec.ch/de/s1/product/sennheiser-momentum-true-wireless-2-anc-kopfhoerer-12959010", 1);
INSERT INTO Produkte (Produktname, Preis, Link, HauptkategorieID) VALUES ("Sennheiser MOMENTUM True Wireless 2 Pro", "350", "", 1);
INSERT INTO Produkte (Produktname, Preis, Link, HauptkategorieID) VALUES ("Sennheiser MOMENTUM True Wireless 2 Mini", "175", "", 1);
INSERT INTO Produkte (Produktname, Preis, Link, HauptkategorieID) VALUES ("Sennheiser MOMENTUM True Wireless 2", "250", "https://www.digitec.ch/de/s1/product/sennheiser-momentum-true-wireless-2-anc-kopfhoerer-12959010", 1);
INSERT INTO Produkte (Produktname, Preis, Link, HauptkategorieID) VALUES ("Sennheiser MOMENTUM True Wireless 2 Pro", "350", "", 1);
INSERT INTO Produkte (Produktname, Preis, Link, HauptkategorieID) VALUES ("Sennheiser MOMENTUM True Wireless 2 Mini", "175", "", 1);
INSERT INTO Produkte (Produktname, Preis, Link, HauptkategorieID) VALUES ("Sennheiser MOMENTUM 3 Wireless", "350", "https://www.digitec.ch/de/s1/product/sennheiser-momentum-3-wireless-anc-kopfhoerer-11851390", 1);
INSERT INTO Produkte (Produktname, Preis, Link, HauptkategorieID) VALUES ("Sennheiser MOMENTUM 3", "200", "", 1);
INSERT INTO Produkte (Produktname, Preis, Link, HauptkategorieID) VALUES ("Sennheiser MOMENTUM 3 Lite", "250", "", 1);
INSERT INTO Produkte (Produktname, Preis, Link, HauptkategorieID) VALUES ("Sennheiser MOMENTUM 3 Wireless", "350", "https://www.digitec.ch/de/s1/product/sennheiser-momentum-3-wireless-anc-kopfhoerer-11851537", 1);
INSERT INTO Produkte (Produktname, Preis, Link, HauptkategorieID) VALUES ("Sennheiser MOMENTUM 3", "200", "", 1);
INSERT INTO Produkte (Produktname, Preis, Link, HauptkategorieID) VALUES ("Sennheiser MOMENTUM 3 Lite", "250", "", 1);
INSERT INTO Produkte (Produktname, Preis, Link, HauptkategorieID) VALUES ("Bose Headphones 700", "400", "https://www.digitec.ch/de/s1/product/bose-headphones-700-anc-kopfhoerer-11026081?ip=headphones+", 1);
INSERT INTO Produkte (Produktname, Preis, Link, HauptkategorieID) VALUES ("Bose Headphones 730 X", "515", "", 1);
INSERT INTO Produkte (Produktname, Preis, Link, HauptkategorieID) VALUES ("Bose Headphones 700 Lite", "275", "", 1);
INSERT INTO Produkte (Produktname, Preis, Link, HauptkategorieID) VALUES ("Bose Headphones 700", "400", "https://www.digitec.ch/de/s1/product/bose-headphones-700-anc-kopfhoerer-11026083", 1);
INSERT INTO Produkte (Produktname, Preis, Link, HauptkategorieID) VALUES ("Bose Headphones 730 X", "515", "", 1);
INSERT INTO Produkte (Produktname, Preis, Link, HauptkategorieID) VALUES ("Bose Headphones 700 Lite", "275", "", 1);
INSERT INTO Produkte (Produktname, Preis, Link, HauptkategorieID) VALUES ("UE Hyperboom 24h", "400", "https://www.digitec.ch/de/s1/product/ue-hyperboom-24-h-bluetooth-lautsprecher-12811566", 3);
INSERT INTO Produkte (Produktname, Preis, Link, HauptkategorieID) VALUES ("UE Hyperboom Gen. 2", "450", "", 3);
INSERT INTO Produkte (Produktname, Preis, Link, HauptkategorieID) VALUES ("UE Hyperboom mini", "250", "", 3);
INSERT INTO Produkte (Produktname, Preis, Link, HauptkategorieID) VALUES ("UE Megaboom 3", "150", "https://www.digitec.ch/de/s1/product/ue-megaboom-3-20-h-bluetooth-lautsprecher-9500420", 3);
INSERT INTO Produkte (Produktname, Preis, Link, HauptkategorieID) VALUES ("UE Megaboom 4", "175", "", 3);
INSERT INTO Produkte (Produktname, Preis, Link, HauptkategorieID) VALUES ("UE Boom 5", "80", "", 3);
INSERT INTO Produkte (Produktname, Preis, Link, HauptkategorieID) VALUES ("UE Megaboom 3", "150", "https://www.digitec.ch/de/s1/product/ue-megaboom-3-20-h-bluetooth-lautsprecher-9500422", 3);
INSERT INTO Produkte (Produktname, Preis, Link, HauptkategorieID) VALUES ("UE Megaboom 4", "175", "", 3);
INSERT INTO Produkte (Produktname, Preis, Link, HauptkategorieID) VALUES ("UE Boom 5", "80", "", 3);
INSERT INTO Produkte (Produktname, Preis, Link, HauptkategorieID) VALUES ("UE Megaboom 3", "150", "https://www.digitec.ch/de/s1/product/ue-megaboom-3-20-h-bluetooth-lautsprecher-9500424", 3);
INSERT INTO Produkte (Produktname, Preis, Link, HauptkategorieID) VALUES ("UE Megaboom 4", "175", "", 3);
INSERT INTO Produkte (Produktname, Preis, Link, HauptkategorieID) VALUES ("UE Boom 5", "80", "", 3);
INSERT INTO Produkte (Produktname, Preis, Link, HauptkategorieID) VALUES ("Teufel Stereo L", "1500", "https://www.digitec.ch/de/s1/product/teufel-stereo-l-wlan-bluetooth-chromecast-aac-multiroom-system-7005252", 3);
INSERT INTO Produkte (Produktname, Preis, Link, HauptkategorieID) VALUES ("Teufel Stereo M", "1200", "", 3);
INSERT INTO Produkte (Produktname, Preis, Link, HauptkategorieID) VALUES ("Teufel Stereo S", "900", "", 3);
INSERT INTO Produkte (Produktname, Preis, Link, HauptkategorieID) VALUES ("Philips TAM3505/12", "120", "https://www.digitec.ch/de/s1/product/philips-tam350512-2-x-9-w-bluetooth-cd-player-stereoanlage-14108574", 3);
INSERT INTO Produkte (Produktname, Preis, Link, HauptkategorieID) VALUES ("Philips TAM3506/15", "140", "", 3);
INSERT INTO Produkte (Produktname, Preis, Link, HauptkategorieID) VALUES ("Philips TAM3512/25", "180", "", 3);
INSERT INTO Produkte (Produktname, Preis, Link, HauptkategorieID) VALUES ("Olympus ME-31 Gun Microphone", "200", "https://www.digitec.ch/de/s1/product/olympus-me-31-gun-microphone-diktiergeraet-zubehoer-10161857?supplier=3247310", 2);
INSERT INTO Produkte (Produktname, Preis, Link, HauptkategorieID) VALUES ("Olympus ME-30 Gun Microphone", "180", "", 2);
INSERT INTO Produkte (Produktname, Preis, Link, HauptkategorieID) VALUES ("Olympus ME-35 Gun Microphone", "250", "", 2);
INSERT INTO Produkte (Produktname, Preis, Link, HauptkategorieID) VALUES ("LD Systems WS 100 ML Lavalier Mikrofon", "50", "https://www.digitec.ch/de/s1/product/ld-systems-ws-100-ml-lavalier-mikrofon-mikrofon-17497486?supplier=6253165", 2);
INSERT INTO Produkte (Produktname, Preis, Link, HauptkategorieID) VALUES ("LD Systems WS 120 ML Lavalier Mikrofon Set", "75", "", 2);
INSERT INTO Produkte (Produktname, Preis, Link, HauptkategorieID) VALUES ("LD Systems WS 250 ML Lavalier Mikrofon Pro", "120", "", 2);
INSERT INTO Produkte (Produktname, Preis, Link, HauptkategorieID) VALUES ("RØDE VideoMic Pro R", "175", "https://www.digitec.ch/de/s1/product/rde-videomic-pro-r-videografie-mikrofon-5340011", 2);
INSERT INTO Produkte (Produktname, Preis, Link, HauptkategorieID) VALUES ("RØDE VideoMic Pro S", "275", "", 2);
INSERT INTO Produkte (Produktname, Preis, Link, HauptkategorieID) VALUES ("RØDE VideoMic L", "125", "", 2);

-- Produktkategorien 

INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (1, 4);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (1, 13);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (1, 28);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (2, 4);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (2, 11);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (2, 28);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (3, 4);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (3, 8);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (3, 28);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (4, 7);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (4, 13);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (4, 28);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (5, 7);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (5, 11);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (5, 28);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (6, 7);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (6, 8);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (6, 28);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (7, 1);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (7, 10);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (7, 29);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (8, 1);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (8, 10);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (8, 29);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (9, 1);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (9, 12);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (9, 29);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (10, 7);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (10, 10);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (10, 29);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (11, 7);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (11, 10);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (11, 29);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (12, 7);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (12, 12);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (12, 29);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (13, 3);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (13, 25);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (13, 29);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (14, 3);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (14, 25);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (14, 29);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (15, 3);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (15, 19);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (15, 29);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (16, 7);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (16, 25);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (16, 29);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (17, 7);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (17, 25);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (17, 29);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (18, 7);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (18, 19);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (18, 29);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (19, 1);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (19, 20);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (19, 32);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (20, 1);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (20, 21);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (20, 32);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (21, 1);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (21, 24);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (21, 32);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (22, 1);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (22, 26);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (22, 32);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (23, 1);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (23, 27);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (23, 32);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (24, 1);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (24, 15);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (24, 32);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (25, 2);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (25, 26);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (25, 32);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (26, 2);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (26, 27);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (26, 32);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (27, 2);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (27, 15);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (27, 32);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (28, 5);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (28, 26);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (28, 32);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (29, 5);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (29, 27);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (29, 32);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (30, 5);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (30, 15);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (30, 32);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (31, 1);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (31, 14);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (31, 30);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (32, 1);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (32, 14);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (32, 30);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (33, 1);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (33, 14);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (33, 30);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (34, 1);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (34, 17);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (34, 30);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (35, 1);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (35, 23);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (35, 30);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (36, 1);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (36, 9);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (36, 30);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (37, 6);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (37, 22);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (37, 33);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (38, 6);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (38, 22);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (38, 33);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (39, 6);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (39, 22);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (39, 33);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (40, 1);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (40, 16);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (40, 31);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (41, 1);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (41, 16);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (41, 31);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (42, 1);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (42, 16);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (42, 31);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (43, 1);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (43, 18);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (43, 34);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (44, 1);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (44, 18);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (44, 34);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (45, 1);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (45, 18);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (45, 34);

  




SELECT * FROM Hauptkategorien;	
SELECT * FROM Kategorien;	
SELECT * FROM Produkte;	
SELECT * FROM Produkte_Kategorien;
SELECT * FROM Kunden;
SELECT * FROM Lieferanten;
SELECT * FROM Bestellungen;	

/* Test: Hauptkategorien (Feature 2)*/
SELECT Produkte.Produktname, Produkte.Preis , Hauptkategorien.Name
FROM Produkte, Hauptkategorien
WHERE Produkte.HauptkategorieID = Hauptkategorien.ID;


/*  Test: Kategorien (Feature 3)*/
SELECT Produkte.Produktname, Produkte.Preis, Kategorien.Name, Kategorien.Wert
FROM Produkte, Produkte_Kategorien, Kategorien
WHERE Produkte_Kategorien.ProduktID = Produkte.ID
AND Produkte_Kategorien.KategorieID = Kategorien.ID
AND Produkte.ID = 10;

