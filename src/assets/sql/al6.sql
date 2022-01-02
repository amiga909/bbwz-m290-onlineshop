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

-- n:m Beziehung "Kategorien beschreiben Produkte"
CREATE TABLE Produkte_Kategorien (
  ID INTEGER NOT NULL AUTO_INCREMENT PRIMARY KEY,
  ProduktID INTEGER, 
  KategorieID INTEGER
);

CREATE TABLE Kunden (
  ID INTEGER NOT NULL AUTO_INCREMENT PRIMARY KEY,  
  Nachname VARCHAR(255),
  Vorname VARCHAR(255),
  Mailadresse VARCHAR(255),
  Lieferadresse VARCHAR(255)
);

CREATE TABLE Bestellungen (
  ID INTEGER NOT NULL AUTO_INCREMENT PRIMARY KEY,  
  Erstellungsdatum VARCHAR (255),
  KundenID INTEGER
);

-- 1:n Beziehung "Kunden bestellen Bestellungen"
CREATE TABLE Kunden_Bestellungen (
  ID INTEGER NOT NULL AUTO_INCREMENT PRIMARY KEY,
  KundenID INTEGER, 
  BestellungenID INTEGER
);

-- n:m Beziehung "Bestellungen bestehen aus Produkte"
CREATE TABLE Bestellungen_Produkte (
  ID INTEGER NOT NULL AUTO_INCREMENT PRIMARY KEY,
  BestellungenID INTEGER, 
  ProduktID INTEGER
);

CREATE TABLE Ähnliche_Produkte (
  ID INTEGER NOT NULL AUTO_INCREMENT PRIMARY KEY, 
  ProduktID VARCHAR(512)
);



-- Hauptkategorien 

INSERT INTO Hauptkategorien (Name) VALUES ("Computer");
INSERT INTO Hauptkategorien (Name) VALUES ("Kamera");
INSERT INTO Hauptkategorien (Name) VALUES ("Kopfhörer");
INSERT INTO Hauptkategorien (Name) VALUES ("Smartphone");
INSERT INTO Hauptkategorien (Name) VALUES ("Smartwatch");
INSERT INTO Hauptkategorien (Name) VALUES ("TV");

-- Kategorien 

INSERT INTO Kategorien (Name, Wert) VALUES ("Marke", "Apple");
INSERT INTO Kategorien (Name, Wert) VALUES ("Marke", "Fujifilm");
INSERT INTO Kategorien (Name, Wert) VALUES ("Marke", "Huawei");
INSERT INTO Kategorien (Name, Wert) VALUES ("Marke", "Marshall");
INSERT INTO Kategorien (Name, Wert) VALUES ("Marke", "OnePlus");
INSERT INTO Kategorien (Name, Wert) VALUES ("Marke", "Samsung");
INSERT INTO Kategorien (Name, Wert) VALUES ("Farbe", "Black");
INSERT INTO Kategorien (Name, Wert) VALUES ("Farbe", "Blue");
INSERT INTO Kategorien (Name, Wert) VALUES ("Farbe", "Blush Gold");
INSERT INTO Kategorien (Name, Wert) VALUES ("Farbe", "Brown");
INSERT INTO Kategorien (Name, Wert) VALUES ("Farbe", "Crush Green");
INSERT INTO Kategorien (Name, Wert) VALUES ("Farbe", "Yellow");
INSERT INTO Kategorien (Name, Wert) VALUES ("Farbe", "Gold");
INSERT INTO Kategorien (Name, Wert) VALUES ("Farbe", "Green");
INSERT INTO Kategorien (Name, Wert) VALUES ("Farbe", "Green");
INSERT INTO Kategorien (Name, Wert) VALUES ("Farbe", "Black");
INSERT INTO Kategorien (Name, Wert) VALUES ("Farbe", "Purple");
INSERT INTO Kategorien (Name, Wert) VALUES ("Farbe", "Silver");
INSERT INTO Kategorien (Name, Wert) VALUES ("Farbe", "Silver");
INSERT INTO Kategorien (Name, Wert) VALUES ("Farbe", "Space Grey");
INSERT INTO Kategorien (Name, Wert) VALUES ("Farbe", "Violett");
INSERT INTO Kategorien (Name, Wert) VALUES ("Farbe", "White");
INSERT INTO Kategorien (Name, Wert) VALUES ("Farbe", "Black");
INSERT INTO Kategorien (Name, Wert) VALUES ("Farbe", "Silver");
INSERT INTO Kategorien (Name, Wert) VALUES ("Grösse", "13.30");
INSERT INTO Kategorien (Name, Wert) VALUES ("Grösse", "24");
INSERT INTO Kategorien (Name, Wert) VALUES ("Grösse", "40 mm");
INSERT INTO Kategorien (Name, Wert) VALUES ("Grösse", "44 mm");
INSERT INTO Kategorien (Name, Wert) VALUES ("Grösse", "50");
INSERT INTO Kategorien (Name, Wert) VALUES ("Grösse", "6.1");
INSERT INTO Kategorien (Name, Wert) VALUES ("Grösse", "6.67");
INSERT INTO Kategorien (Name, Wert) VALUES ("Grösse", "65");
INSERT INTO Kategorien (Name, Wert) VALUES ("Grösse", "75");
INSERT INTO Kategorien (Name, Wert) VALUES ("Speicherkapazität", "1000");
INSERT INTO Kategorien (Name, Wert) VALUES ("Speicherkapazität", "128 GB");
INSERT INTO Kategorien (Name, Wert) VALUES ("Speicherkapazität", "2000 GB");
INSERT INTO Kategorien (Name, Wert) VALUES ("Speicherkapazität", "256 GB");
INSERT INTO Kategorien (Name, Wert) VALUES ("Speicherkapazität", "512 GB");
INSERT INTO Kategorien (Name, Wert) VALUES ("Speicherkapazität", "64 GB");

-- Produkte 

INSERT INTO Produkte (Produktname, Preis, Link, HauptkategorieID) VALUES ("Apple iMac", "1564", "https://www.digitec.ch/de/s1/product/apple-imac-24-m1-16-gb-512-gb-ssd-pc-15737602", 1);
INSERT INTO Produkte (Produktname, Preis, Link, HauptkategorieID) VALUES ("Apple iMac", "1769", "https://www.digitec.ch/de/s1/product/fujifilm-instax-mini-11-sofortbildkamera-12815922", 1);
INSERT INTO Produkte (Produktname, Preis, Link, HauptkategorieID) VALUES ("Apple iMac", "2603", "https://www.digitec.ch/de/s1/product/apple-imac-24-m1-16-gb-2000-gb-ssd-pc-15737804", 1);
INSERT INTO Produkte (Produktname, Preis, Link, HauptkategorieID) VALUES ("MacBook Pro", "1799", "https://www.digitec.ch/de/s1/product/apple-macbook-pro-late-2020-1330-m1-16-gb-1000-gb-notebook-14183881", 1);
INSERT INTO Produkte (Produktname, Preis, Link, HauptkategorieID) VALUES ("MacBook Pro", "2199", "https://www.digitec.ch/de/s1/product/apple-macbook-pro-late-2020-1330-m1-16-gb-256-gb-notebook-14183877", 1);
INSERT INTO Produkte (Produktname, Preis, Link, HauptkategorieID) VALUES ("MacBook Pro", "2240", "https://www.digitec.ch/de/s1/product/apple-macbook-pro-late-2020-1330-m1-16-gb-2000-gb-notebook-14183874", 1);
INSERT INTO Produkte (Produktname, Preis, Link, HauptkategorieID) VALUES ("Fujifilm Instax Mini 11", "70", "https://www.digitec.ch/de/s1/product/fujifilm-instax-mini-11-sofortbildkamera-12815924", 2);
INSERT INTO Produkte (Produktname, Preis, Link, HauptkategorieID) VALUES ("Fujifilm Instax Mini 11", "70", "https://www.digitec.ch/de/s1/product/fujifilm-instax-mini-11-sofortbildkamera-12815922", 2);
INSERT INTO Produkte (Produktname, Preis, Link, HauptkategorieID) VALUES ("Fujifilm Instax Mini 11", "89.9", "https://www.digitec.ch/de/s1/product/fujifilm-instax-mini-11-sofortbildkamera-12815926?supplier=2933118", 2);
INSERT INTO Produkte (Produktname, Preis, Link, HauptkategorieID) VALUES ("Marshall Headphones Major III", "129.9", "https://www.interdiscount.ch/de/tv-audio/kopfhörer/kopfhörer-headset--c163000/marshall-major-iv-over-ear-black--p0002648264", 3);
INSERT INTO Produkte (Produktname, Preis, Link, HauptkategorieID) VALUES ("Marshall Headphones Major III", "129.9", "https://www.digitec.ch/de/s1/product/marshall-headphones-major-iii-bluetooth-kopfhoerer-8059756", 3);
INSERT INTO Produkte (Produktname, Preis, Link, HauptkategorieID) VALUES ("Marshall Headphones Major III", "129.9", "https://www.digitec.ch/de/s1/product/marshall-headphones-major-iii-bluetooth-kopfhoerer-8059756", 3);
INSERT INTO Produkte (Produktname, Preis, Link, HauptkategorieID) VALUES ("OnePlus Buds", "109", "https://www.digitec.ch/de/s1/product/oneplus-buds-kopfhoerer-13575637", 3);
INSERT INTO Produkte (Produktname, Preis, Link, HauptkategorieID) VALUES ("OnePlus Buds", "109", "https://www.digitec.ch/de/s1/product/oneplus-buds-kopfhoerer-13575635", 3);
INSERT INTO Produkte (Produktname, Preis, Link, HauptkategorieID) VALUES ("OnePlus Buds", "109", "https://www.digitec.ch/de/s1/product/oneplus-buds-kopfhoerer-13575634", 3);
INSERT INTO Produkte (Produktname, Preis, Link, HauptkategorieID) VALUES ("Huawei P smart", "205", "https://www.digitec.ch/de/s1/product/huawei-p-smart-2021-128-gb-midnight-black-667-dual-sim-48-mpx-4g-smartphone-14009957", 4);
INSERT INTO Produkte (Produktname, Preis, Link, HauptkategorieID) VALUES ("Huawei P smart", "205", "https://www.digitec.ch/de/s1/product/huawei-p-smart-2021-128-gb-midnight-black-667-dual-sim-48-mpx-4g-smartphone-14009957", 4);
INSERT INTO Produkte (Produktname, Preis, Link, HauptkategorieID) VALUES ("Huawei P smart", "205", "https://www.digitec.ch/de/s1/product/huawei-p-smart-2021-128-gb-crush-green-667-dual-sim-48-mpx-4g-smartphone-14009959", 4);
INSERT INTO Produkte (Produktname, Preis, Link, HauptkategorieID) VALUES ("Iphone 11", "628", "https://www.digitec.ch/de/s1/product/apple-iphone-11-128-gb-white-610-sim-esim-12-mpx-4g-smartphone-11872416", 4);
INSERT INTO Produkte (Produktname, Preis, Link, HauptkategorieID) VALUES ("Iphone 11", "549", "https://www.digitec.ch/de/s1/product/apple-iphone-11-64-gb-green-610-sim-esim-12-mpx-4g-smartphone-11872346", 4);
INSERT INTO Produkte (Produktname, Preis, Link, HauptkategorieID) VALUES ("Iphone 11", "942", "https://www.digitec.ch/de/s1/product/apple-iphone-11-128-gb-purple-610-sim-esim-12-mpx-4g-smartphone-11872371", 4);
INSERT INTO Produkte (Produktname, Preis, Link, HauptkategorieID) VALUES ("Apple Watch", "299", "https://www.digitec.ch/de/s1/product/apple-watch-se-40-mm-aluminium-sportuhr-smartwatch-13795917", 5);
INSERT INTO Produkte (Produktname, Preis, Link, HauptkategorieID) VALUES ("Apple Watch", "325", "https://www.digitec.ch/de/s1/product/apple-watch-se-44-mm-aluminium-sportuhr-smartwatch-16654863", 5);
INSERT INTO Produkte (Produktname, Preis, Link, HauptkategorieID) VALUES ("Apple Watch 4G", "336", "https://www.digitec.ch/de/s1/product/apple-watch-se-40-mm-aluminium-4g-sportuhr-smartwatch-13795952", 5);
INSERT INTO Produkte (Produktname, Preis, Link, HauptkategorieID) VALUES ("Samsung Galaxy Watch4", "241", "https://www.digitec.ch/de/s1/product/samsung-galaxy-watch4-40-mm-aluminium-sportuhr-smartwatch-16382589", 5);
INSERT INTO Produkte (Produktname, Preis, Link, HauptkategorieID) VALUES ("Samsung Galaxy Watch4", "241", "https://www.digitec.ch/de/s1/product/samsung-galaxy-watch4-44-mm-aluminium-sportuhr-smartwatch-16382597", 5);
INSERT INTO Produkte (Produktname, Preis, Link, HauptkategorieID) VALUES ("Samsung Galaxy Watch4 4G", "260", "https://www.digitec.ch/de/s1/product/samsung-galaxy-watch4-44-mm-aluminium-sportuhr-smartwatch-16382594", 5);
INSERT INTO Produkte (Produktname, Preis, Link, HauptkategorieID) VALUES ("Samsung QE75Q80A", "2199", "https://www.digitec.ch/de/s1/product/samsung-qe75q80a-75-4k-qled-2021-tv-14781277", 6);
INSERT INTO Produkte (Produktname, Preis, Link, HauptkategorieID) VALUES ("Samsung QE75Q80A", "2199", "https://www.digitec.ch/de/s1/product/samsung-qe65q80a-65-4k-qled-2021-tv-14781228", 6);
INSERT INTO Produkte (Produktname, Preis, Link, HauptkategorieID) VALUES ("Samsung QE75Q80A", "2199", "https://www.digitec.ch/de/s1/product/samsung-qe50q80a-50-4k-qled-2021-tv-14781222", 6);

-- Produktkategorien 

INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (1, 1);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (1, 15);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (1, 26);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (1, 38);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (2, 1);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (2, 8);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (2, 26);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (2, 37);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (3, 1);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (3, 12);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (3, 26);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (3, 36);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (4, 1);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (4, 20);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (4, 25);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (4, 34);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (5, 1);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (5, 19);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (5, 25);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (5, 37);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (6, 1);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (6, 19);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (6, 25);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (6, 36);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (7, 2);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (7, 22);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (8, 2);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (8, 8);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (9, 2);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (9, 21);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (10, 4);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (10, 7);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (11, 4);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (11, 10);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (12, 4);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (12, 22);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (13, 5);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (13, 8);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (14, 5);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (14, 7);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (15, 5);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (15, 22);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (16, 3);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (16, 9);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (16, 31);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (16, 35);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (17, 3);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (17, 16);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (17, 31);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (17, 35);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (18, 3);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (18, 11);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (18, 31);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (18, 35);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (19, 1);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (19, 22);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (19, 30);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (19, 35);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (20, 1);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (20, 14);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (20, 30);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (20, 39);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (21, 1);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (21, 17);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (21, 30);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (21, 37);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (22, 1);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (22, 7);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (22, 27);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (23, 1);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (23, 13);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (23, 28);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (24, 1);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (24, 7);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (24, 27);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (25, 6);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (25, 13);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (25, 27);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (26, 6);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (26, 23);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (26, 28);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (27, 6);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (27, 24);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (27, 28);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (28, 6);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (28, 18);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (28, 33);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (29, 6);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (29, 18);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (29, 32);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (30, 6);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (30, 18);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (30, 29);

-- Kunden 

INSERT INTO Kunden (Nachname, Vorname, Mailadresse, Lieferadresse) VALUES ("Wermelinger", "Livia", "livia_wermelinger@sluz.ch", "Sagimatt 13, 6218 Ettiswil");


-- Bestellungen 

INSERT INTO Bestellungen (Erstellungsdatum, KundenID) VALUES ("17.12.2021", "1");


-- Kundenbestellungen 

INSERT INTO Kunden_Bestellungen (KundenID, BestellungenID) VALUES (1, 1);






SELECT * FROM Hauptkategorien;
SELECT * FROM Kategorien;
SELECT * FROM Produkte;	
SELECT * FROM Produkte_Kategorien;
SELECT * FROM Kunden;
SELECT * FROM Bestellungen;
SELECT * FROM Kunden_Bestellungen;
SELECT * FROM Bestellungen_Produkte;
SELECT * FROM Ähnliche_Produkte;

/*
SELECT Produkte.Produktname, Produkte.Preis,  Hauptkategorien.Name
FROM Produkte, Hauptkategorien
WHERE Produkte.HauptkategorieID = Hauptkategorien.ID;


SELECT Produkte.Produktname, Produkte.Preis, Kategorien.Name, Kategorien.Wert
FROM Produkte, Produkte_Kategorien, Kategorien
WHERE Produkte_Kategorien.ProdukteID = Produkte.ID
AND Produkte_Kategorien.KategorieID = Kategorien.ID
AND Produkte.ID = 10

SELECT Bestellungen.Erstellungsdatum, Bestellungen.KundenID
FROM Bestellungen
WHERE Bestellungen.KundenID = 1

*/
