CREATE TABLE Hauptkategorien (
  ID INTEGER NOT NULL AUTO_INCREMENT PRIMARY KEY,  
  Name VARCHAR(255) 
);

CREATE TABLE Produkte (
  ID INTEGER NOT NULL AUTO_INCREMENT PRIMARY KEY, 
  Produktname VARCHAR(512) NOT NULL,
  Preis INTEGER(10) NOT NULL,
  Link VARCHAR(1024),
  HauptkategorieID INTEGER NOT NULL
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

CREATE TABLE Kunden(
ID INTEGER NOT NULL AUTO_INCREMENT PRIMARY KEY,
Vorname VARCHAR(512) NOT NULL,
Nachname VARCHAR(512) NOT NULL,
Lieferadresse VARCHAR(512) NOT NULL,
EMail VARCHAR(512) NOT NULL UNIQUE
);
  
CREATE TABLE Bestellungen(
ID INTEGER NOT NULL AUTO_INCREMENT PRIMARY KEY,
Erstellungsdatum VARCHAR(512),
Menge VARCHAR(2),
ProdukteID INTEGER,
KundenID INTEGER 
);

-- n:m Beziehung "Produkte gehören zu Bestellungen"
CREATE TABLE Bestellungen_Produkte(
ID INTEGER NOT NULL AUTO_INCREMENT PRIMARY KEY,
ProduktID INTEGER,
BestellungenID INTEGER
);

CREATE TABLE Login(
ID INTEGER NOT NULL AUTO_INCREMENT PRIMARY KEY,
EMAIL VARCHAR(512) NOT NULL UNIQUE,
Passwort VARCHAR(512) NOT NULL,
KundenID INTEGER 
);

CREATE TABLE Produktbewertung(
ID INTEGER NOT NULL AUTO_INCREMENT PRIMARY KEY,
Wert VARCHAR(512),
ProduktID INTEGER 
);



-- Hauptkategorien 

INSERT INTO Hauptkategorien (Name) VALUES ("Apple");
INSERT INTO Hauptkategorien (Name) VALUES ("Samsung");
INSERT INTO Hauptkategorien (Name) VALUES ("Zubehör");
INSERT INTO Hauptkategorien (Name) VALUES ("weitere Handymarken");

-- Kategorien 

INSERT INTO Kategorien (Name, Wert) VALUES ("Marke", "Apple");
INSERT INTO Kategorien (Name, Wert) VALUES ("Marke", "Huawei");
INSERT INTO Kategorien (Name, Wert) VALUES ("Marke", "InLine");
INSERT INTO Kategorien (Name, Wert) VALUES ("Marke", "OnePlus");
INSERT INTO Kategorien (Name, Wert) VALUES ("Marke", "Samsung");
INSERT INTO Kategorien (Name, Wert) VALUES ("Modellreihe", "Galaxy Note");
INSERT INTO Kategorien (Name, Wert) VALUES ("Modellreihe", "Galaxy S");
INSERT INTO Kategorien (Name, Wert) VALUES ("Modellreihe", "Galaxy Z");
INSERT INTO Kategorien (Name, Wert) VALUES ("Modellreihe", "Mate");
INSERT INTO Kategorien (Name, Wert) VALUES ("Modellreihe", "Nord 2");
INSERT INTO Kategorien (Name, Wert) VALUES ("Modellreihe", "P40");
INSERT INTO Kategorien (Name, Wert) VALUES ("Modellreihe", "iPhone 11");
INSERT INTO Kategorien (Name, Wert) VALUES ("Modellreihe", "iPhone 12");
INSERT INTO Kategorien (Name, Wert) VALUES ("Modellreihe", "iPhone 13");
INSERT INTO Kategorien (Name, Wert) VALUES ("Modellreihe", "iPhone SE");
INSERT INTO Kategorien (Name, Wert) VALUES ("Farbe", "Blau");
INSERT INTO Kategorien (Name, Wert) VALUES ("Farbe", "Braun");
INSERT INTO Kategorien (Name, Wert) VALUES ("Farbe", "Bronze");
INSERT INTO Kategorien (Name, Wert) VALUES ("Farbe", "Gelb");
INSERT INTO Kategorien (Name, Wert) VALUES ("Farbe", "Gold");
INSERT INTO Kategorien (Name, Wert) VALUES ("Farbe", "Grau");
INSERT INTO Kategorien (Name, Wert) VALUES ("Farbe", "Grün");
INSERT INTO Kategorien (Name, Wert) VALUES ("Farbe", "Rot");
INSERT INTO Kategorien (Name, Wert) VALUES ("Farbe", "Schwarz");
INSERT INTO Kategorien (Name, Wert) VALUES ("Farbe", "Silber");
INSERT INTO Kategorien (Name, Wert) VALUES ("Farbe", "Violett");
INSERT INTO Kategorien (Name, Wert) VALUES ("Farbe", "Weiss");
INSERT INTO Kategorien (Name, Wert) VALUES ("Speicherkapazität", "128 GB");
INSERT INTO Kategorien (Name, Wert) VALUES ("Speicherkapazität", "256 GB");
INSERT INTO Kategorien (Name, Wert) VALUES ("Speicherkapazität", "512 GB");
INSERT INTO Kategorien (Name, Wert) VALUES ("Länge", "0.5 m");
INSERT INTO Kategorien (Name, Wert) VALUES ("Länge", "1 m");
INSERT INTO Kategorien (Name, Wert) VALUES ("Länge", "1.5 m");
INSERT INTO Kategorien (Name, Wert) VALUES ("Länge", "2 m");

-- Produkte 

INSERT INTO Produkte (Produktname, Preis, Link, HauptkategorieID) VALUES ("iPhone 13", "999", "https://www.apple.com/ch-de/shop/buy-iphone/iphone-13", 1);
INSERT INTO Produkte (Produktname, Preis, Link, HauptkategorieID) VALUES ("iPhone 13", "879", "https://www.apple.com/ch-de/shop/buy-iphone/iphone-13", 1);
INSERT INTO Produkte (Produktname, Preis, Link, HauptkategorieID) VALUES ("iPhone 13", "879", "https://www.apple.com/ch-de/shop/buy-iphone/iphone-13", 1);
INSERT INTO Produkte (Produktname, Preis, Link, HauptkategorieID) VALUES ("iPhone 13", "999", "https://www.apple.com/ch-de/shop/buy-iphone/iphone-13", 1);
INSERT INTO Produkte (Produktname, Preis, Link, HauptkategorieID) VALUES ("iPhone 12", "959", "https://www.apple.com/ch-de/shop/buy-iphone/iphone-12", 1);
INSERT INTO Produkte (Produktname, Preis, Link, HauptkategorieID) VALUES ("iPhone 12", "959", "https://www.apple.com/ch-de/shop/buy-iphone/iphone-12", 1);
INSERT INTO Produkte (Produktname, Preis, Link, HauptkategorieID) VALUES ("iPhone SE", "508.4", "https://www.apple.com/ch-de/shop/buy-iphone/iphone-se", 1);
INSERT INTO Produkte (Produktname, Preis, Link, HauptkategorieID) VALUES ("iPhone SE", "508.4", "https://www.apple.com/ch-de/shop/buy-iphone/iphone-se", 1);
INSERT INTO Produkte (Produktname, Preis, Link, HauptkategorieID) VALUES ("iPhone 11", "609", "https://www.apple.com/ch-de/shop/buy-iphone/iphone-11", 1);
INSERT INTO Produkte (Produktname, Preis, Link, HauptkategorieID) VALUES ("iPhone 11", "609", "https://www.apple.com/ch-de/shop/buy-iphone/iphone-11", 1);
INSERT INTO Produkte (Produktname, Preis, Link, HauptkategorieID) VALUES ("Galaxy Z Fold3 5G", "1899", "https://www.samsung.com/ch/smartphones/galaxy-z/", 2);
INSERT INTO Produkte (Produktname, Preis, Link, HauptkategorieID) VALUES ("Galaxy Z Fold3 5G", "1899", "https://www.samsung.com/ch/smartphones/galaxy-z/", 2);
INSERT INTO Produkte (Produktname, Preis, Link, HauptkategorieID) VALUES ("Galaxy Z Fold3 5G", "1899", "https://www.samsung.com/ch/smartphones/galaxy-z/", 2);
INSERT INTO Produkte (Produktname, Preis, Link, HauptkategorieID) VALUES ("Galaxy Z Fold3 5G", "1799", "https://www.samsung.com/ch/smartphones/galaxy-z/", 2);
INSERT INTO Produkte (Produktname, Preis, Link, HauptkategorieID) VALUES ("Galaxy Z Fold3 5G", "1799", "https://www.samsung.com/ch/smartphones/galaxy-z/", 2);
INSERT INTO Produkte (Produktname, Preis, Link, HauptkategorieID) VALUES ("Galaxy Z Fold3 5G", "1799", "https://www.samsung.com/ch/smartphones/galaxy-z/", 2);
INSERT INTO Produkte (Produktname, Preis, Link, HauptkategorieID) VALUES ("Galaxy S21 Ultra 5G", "1249", "https://www.samsung.com/ch/smartphones/galaxy-s/", 2);
INSERT INTO Produkte (Produktname, Preis, Link, HauptkategorieID) VALUES ("Galaxy S21 Ultra 5G", "1249", "https://www.samsung.com/ch/smartphones/galaxy-s/", 2);
INSERT INTO Produkte (Produktname, Preis, Link, HauptkategorieID) VALUES ("Galaxy S21 Ultra 5G", "1249", "https://www.samsung.com/ch/smartphones/galaxy-s/", 2);
INSERT INTO Produkte (Produktname, Preis, Link, HauptkategorieID) VALUES ("Galaxy S21 Ultra 5G", "1249", "https://www.samsung.com/ch/smartphones/galaxy-s/", 2);
INSERT INTO Produkte (Produktname, Preis, Link, HauptkategorieID) VALUES ("Galaxy S21 Ultra 5G", "1249", "https://www.samsung.com/ch/smartphones/galaxy-s/", 2);
INSERT INTO Produkte (Produktname, Preis, Link, HauptkategorieID) VALUES ("Galaxy S21 Ultra 5G", "1299", "https://www.samsung.com/ch/smartphones/galaxy-s/", 2);
INSERT INTO Produkte (Produktname, Preis, Link, HauptkategorieID) VALUES ("Galaxy S21 Ultra 5G", "1299", "https://www.samsung.com/ch/smartphones/galaxy-s/", 2);
INSERT INTO Produkte (Produktname, Preis, Link, HauptkategorieID) VALUES ("Galaxy S21 Ultra 5G", "1299", "https://www.samsung.com/ch/smartphones/galaxy-s/", 2);
INSERT INTO Produkte (Produktname, Preis, Link, HauptkategorieID) VALUES ("Galaxy S21 Ultra 5G", "1299", "https://www.samsung.com/ch/smartphones/galaxy-s/", 2);
INSERT INTO Produkte (Produktname, Preis, Link, HauptkategorieID) VALUES ("Galaxy S21 Ultra 5G", "1299", "https://www.samsung.com/ch/smartphones/galaxy-s/", 2);
INSERT INTO Produkte (Produktname, Preis, Link, HauptkategorieID) VALUES ("Galaxy Note20 5G", "788", "https://www.samsung.com/ch/smartphones/galaxy-note/", 2);
INSERT INTO Produkte (Produktname, Preis, Link, HauptkategorieID) VALUES ("Galaxy Note20 5G", "788", "https://www.samsung.com/ch/smartphones/galaxy-note/", 2);
INSERT INTO Produkte (Produktname, Preis, Link, HauptkategorieID) VALUES ("Galaxy Note20 5G", "788", "https://www.samsung.com/ch/smartphones/galaxy-note/", 2);
INSERT INTO Produkte (Produktname, Preis, Link, HauptkategorieID) VALUES ("Huawei Mate 30 Pro", "756", "https://www.digitec.ch/de/s1/product/huawei-mate-30-pro-256-gb-silver-653-dual-sim-40-mpx-4g-smartphone-12235917", 4);
INSERT INTO Produkte (Produktname, Preis, Link, HauptkategorieID) VALUES ("Huawei P40 Pro", "717", "https://www.digitec.ch/de/s1/product/huawei-p40-pro-256-gb-silver-frost-658-hybrid-dual-sim-esim-50-mpx-5g-smartphone-12981918", 4);
INSERT INTO Produkte (Produktname, Preis, Link, HauptkategorieID) VALUES ("Huawei P40 Pro", "749", "https://www.digitec.ch/de/s1/product/huawei-p40-pro-256-gb-black-658-hybrid-dual-sim-esim-50-mpx-5g-smartphone-12981919", 4);
INSERT INTO Produkte (Produktname, Preis, Link, HauptkategorieID) VALUES ("Huawei P40 Pro", "959", "https://www.digitec.ch/de/s1/product/huawei-p40-pro-256-gb-blush-gold-658-hybrid-dual-sim-esim-50-mpx-5g-smartphone-12981920", 4);
INSERT INTO Produkte (Produktname, Preis, Link, HauptkategorieID) VALUES ("OnePlus Nord 2 (12GB)", "539", "https://www.digitec.ch/de/s1/product/oneplus-nord-2-12gb-256-gb-gray-sierra-643-dual-sim-50-mpx-5g-smartphone-16218579", 4);
INSERT INTO Produkte (Produktname, Preis, Link, HauptkategorieID) VALUES ("OnePlus Nord 2 (12GB)", "479", "https://www.digitec.ch/de/s1/product/oneplus-nord-2-12gb-256-gb-blue-haze-643-dual-sim-50-mpx-5g-smartphone-16218578", 4);
INSERT INTO Produkte (Produktname, Preis, Link, HauptkategorieID) VALUES ("OnePlus Nord 2 (8GB)", "422", "https://www.digitec.ch/de/s1/product/oneplus-nord-2-8gb-128-gb-gray-sierra-643-dual-sim-50-mpx-5g-smartphone-16218581", 4);
INSERT INTO Produkte (Produktname, Preis, Link, HauptkategorieID) VALUES ("OnePlus Nord 2 (12GB)", "429", "https://www.digitec.ch/de/s1/product/oneplus-nord-2-8gb-128-gb-blue-haze-643-dual-sim-50-mpx-5g-smartphone-16218580", 4);
INSERT INTO Produkte (Produktname, Preis, Link, HauptkategorieID) VALUES ("iPhone 13 Silikon Case mit MagSafe", "55", "https://www.apple.com/ch-de/shop/product/MM273ZM/A/iphone-13-silikon-case-mit-magsafe-eisblau?fnode=bb27f2d92794fbad6fd6635e649da06c7f13539f0399982664bd0377f23fbd33a8a539a3acbe46445d29faf2037a02ff9b5720e0ee748a944b70185d0b3995e684e14368dc9bf8d3e4d3ece5782fc9456e3c935050450ad1291c83beb0668d035a29fd3000d71836a7909a82bbb9eca9", 3);
INSERT INTO Produkte (Produktname, Preis, Link, HauptkategorieID) VALUES ("iPhone 13 Silikon Case mit MagSafe", "55", "https://www.apple.com/ch-de/shop/product/MM273ZM/A/iphone-13-silikon-case-mit-magsafe-eisblau?fnode=bb27f2d92794fbad6fd6635e649da06c7f13539f0399982664bd0377f23fbd33a8a539a3acbe46445d29faf2037a02ff9b5720e0ee748a944b70185d0b3995e684e14368dc9bf8d3e4d3ece5782fc9456e3c935050450ad1291c83beb0668d035a29fd3000d71836a7909a82bbb9eca9", 3);
INSERT INTO Produkte (Produktname, Preis, Link, HauptkategorieID) VALUES ("iPhone 12 | 12 pro Silikon Case mit MagSafe", "55", "https://www.apple.com/ch-de/shop/product/MKTQ3ZM/A/iphone-12-12-pro-silikon-case-mit-magsafe-sonnenblume?fnode=bb27f2d92794fbad6fd6635e649da06c7f13539f0399982664bd0377f23fbd33a8a539a3acbe46445d29faf2037a02ff9b5720e0ee748a944b70185d0b3995e684e14368dc9bf8d3e4d3ece5782fc9456e3c935050450ad1291c83beb0668d035a29fd3000d71836a7909a82bbb9eca9", 3);
INSERT INTO Produkte (Produktname, Preis, Link, HauptkategorieID) VALUES ("iPhone 12 | 12 pro Silikon Case mit MagSafe", "55", "https://www.apple.com/ch-de/shop/product/MKTQ3ZM/A/iphone-12-12-pro-silikon-case-mit-magsafe-sonnenblume?fnode=bb27f2d92794fbad6fd6635e649da06c7f13539f0399982664bd0377f23fbd33a8a539a3acbe46445d29faf2037a02ff9b5720e0ee748a944b70185d0b3995e684e14368dc9bf8d3e4d3ece5782fc9456e3c935050450ad1291c83beb0668d035a29fd3000d71836a7909a82bbb9eca9", 3);
INSERT INTO Produkte (Produktname, Preis, Link, HauptkategorieID) VALUES ("USB-C auf Lightning Kabel", "35", "https://www.apple.com/ch-de/shop/product/MQGH2ZM/A/usb%E2%80%91c-auf-lightning-kabel-2-m?fnode=14e76aa41d8ea67a94be1a6ddf731936817411176e9063c40c361aff8c898c14f4bdf367377e96436ff422170fcad0611a9aa09140a408aa77e1570d66a3e13b128b2528b76d56bb8c9a828a7ef660ee072ef8d5be506ceaf8af52b0afb1e15be3b8f94903e4c7e52e0f64b388ab12b7", 3);
INSERT INTO Produkte (Produktname, Preis, Link, HauptkategorieID) VALUES ("USB-C auf Lightning Kabel", "35", "https://www.apple.com/ch-de/shop/product/MQGH2ZM/A/usb%E2%80%91c-auf-lightning-kabel-2-m?fnode=14e76aa41d8ea67a94be1a6ddf731936817411176e9063c40c361aff8c898c14f4bdf367377e96436ff422170fcad0611a9aa09140a408aa77e1570d66a3e13b128b2528b76d56bb8c9a828a7ef660ee072ef8d5be506ceaf8af52b0afb1e15be3b8f94903e4c7e52e0f64b388ab12b7", 3);
INSERT INTO Produkte (Produktname, Preis, Link, HauptkategorieID) VALUES ("InLine USB C - USB C", "18.7", "https://www.digitec.ch/de/s1/product/inline-usb-c-usb-c-050-m-usb-kabel-13456540", 3);
INSERT INTO Produkte (Produktname, Preis, Link, HauptkategorieID) VALUES ("InLine USB C - USB C", "21.2", "https://www.digitec.ch/de/s1/product/inline-usb-c-usb-c-1-m-usb-kabel-13456538", 3);
INSERT INTO Produkte (Produktname, Preis, Link, HauptkategorieID) VALUES ("InLine USB C - USB C", "22.9", "https://www.digitec.ch/de/s1/product/inline-usb-32-gen2-kabel-150-m-usb-kabel-13456541", 3);
INSERT INTO Produkte (Produktname, Preis, Link, HauptkategorieID) VALUES ("InLine USB C - USB C", "24.5", "https://www.digitec.ch/de/s1/product/inline-usb-32-gen2-kabel-2-m-usb-kabel-13456539", 3);

-- Produktkategorien 

INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (1, 1);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (1, 14);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (1, 27);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (1, 29);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (2, 1);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (2, 14);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (2, 27);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (2, 28);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (3, 1);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (3, 14);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (3, 16);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (3, 28);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (4, 1);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (4, 14);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (4, 16);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (4, 29);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (5, 1);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (5, 13);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (5, 26);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (5, 29);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (6, 1);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (6, 13);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (6, 22);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (6, 29);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (7, 1);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (7, 15);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (7, 24);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (7, 28);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (8, 1);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (8, 15);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (8, 27);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (8, 28);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (9, 1);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (9, 12);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (9, 26);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (9, 28);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (10, 1);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (10, 12);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (10, 24);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (10, 28);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (11, 5);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (11, 8);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (11, 25);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (11, 30);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (12, 5);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (12, 8);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (12, 22);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (12, 30);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (13, 5);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (13, 8);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (13, 24);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (13, 30);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (14, 5);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (14, 8);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (14, 25);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (14, 29);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (15, 5);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (15, 8);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (15, 22);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (15, 29);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (16, 5);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (16, 8);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (16, 24);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (16, 29);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (17, 5);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (17, 7);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (17, 24);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (17, 28);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (18, 5);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (18, 7);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (18, 16);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (18, 28);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (19, 5);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (19, 7);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (19, 17);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (19, 28);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (20, 5);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (20, 7);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (20, 21);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (20, 28);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (21, 5);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (21, 7);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (21, 25);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (21, 28);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (22, 5);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (22, 7);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (22, 24);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (22, 29);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (23, 5);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (23, 7);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (23, 16);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (23, 29);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (24, 5);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (24, 7);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (24, 17);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (24, 29);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (25, 5);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (25, 7);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (25, 21);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (25, 29);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (26, 5);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (26, 7);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (26, 25);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (26, 29);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (27, 5);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (27, 6);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (27, 18);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (27, 29);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (28, 5);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (28, 6);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (28, 21);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (28, 29);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (29, 5);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (29, 6);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (29, 22);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (29, 29);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (30, 2);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (30, 9);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (30, 25);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (30, 29);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (31, 2);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (31, 11);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (31, 25);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (31, 29);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (32, 2);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (32, 11);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (32, 24);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (32, 29);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (33, 2);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (33, 11);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (33, 20);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (33, 29);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (34, 4);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (34, 10);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (34, 21);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (34, 29);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (35, 4);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (35, 10);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (35, 16);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (35, 29);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (36, 4);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (36, 10);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (36, 21);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (36, 28);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (37, 4);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (37, 10);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (37, 16);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (37, 28);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (38, 1);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (38, 16);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (39, 1);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (39, 22);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (40, 1);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (40, 19);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (41, 1);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (41, 23);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (42, 1);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (42, 27);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (42, 32);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (43, 1);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (43, 27);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (43, 34);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (44, 3);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (44, 24);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (44, 31);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (45, 3);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (45, 24);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (45, 32);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (46, 3);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (46, 24);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (46, 33);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (47, 3);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (47, 24);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (47, 34);

-- Kundendaten
  
INSERT INTO Kunden (Vorname, Nachname, Lieferadresse, EMail) VALUES ("Anna", "Lehner", "Musterstrasse 1, 6260 Musterhausen","anna.lehner@gmail.com");
INSERT INTO Kunden (Vorname, Nachname, Lieferadresse, EMail) VALUES ("Max", "Müller", "Bahnhofstrasse 33, 6004 Luzern","max.mueller@gmail.com");

-- Login

INSERT INTO Login (EMail, Passwort, KundenID) VALUES ("anna.lehner@gmail.com", "12345", "1");
INSERT INTO Login (EMail, Passwort, KundenID) VALUES ("max.mueller@gmail.com", "12345", "2");

-- Bestellungen

INSERT INTO Bestellungen (Erstellungsdatum, Menge, ProdukteID, KundenID) VALUES ("11.11.2021", "4", "4", "1");
INSERT INTO Bestellungen (Erstellungsdatum, Menge, ProdukteID, KundenID) VALUES ("18.11.2021", "6", "3", "2");

-- Produktbestellung
INSERT INTO Bestellungen_Produkte (ProduktID, BestellungenID) VALUES ("4", "1");
INSERT INTO Bestellungen_Produkte (ProduktID, BestellungenID) VALUES ("3", "2");

-- Produktbewertung
INSERT INTO Produktbewertung (Wert, ProduktID) VALUES ("5", "3");
INSERT INTO Produktbewertung (Wert, ProduktID) VALUES ("2", "3");
INSERT INTO Produktbewertung (Wert, ProduktID) VALUES ("3", "3");
INSERT INTO Produktbewertung (Wert, ProduktID) VALUES ("5", "7");
INSERT INTO Produktbewertung (Wert, ProduktID) VALUES ("2", "8");
INSERT INTO Produktbewertung (Wert, ProduktID) VALUES ("3", "20");




/* SELECT * FROM Hauptkategorien;	
SELECT * FROM Kategorien;	
SELECT * FROM Produkte;	
SELECT * FROM Produkte_Kategorien;	
*/

/*Test Hauptkategorien:*/
/*SELECT Produkte.Produktname, Produkte.Preis, Hauptkategorien.Name
FROM Produkte, Hauptkategorien
WHERE Produkte.HauptkategorieID = Hauptkategorien.ID;*/

/* Test Kategorien:
SELECT Produkte.ID, Produkte.Produktname, Produkte.Preis, Kategorien.Name, Kategorien.Wert
FROM Produkte, Kategorien, Produkte_Kategorien
WHERE Produkte.ID = 10 and Produkte_Kategorien.ProduktID = Produkte.ID and Produkte_Kategorien.KategorieID = Kategorien.ID;*/

/*
SELECT Bestellungen.ID, Bestellungen.Erstellungsdatum, Bestellungen.Menge, Bestellungen.KundenID, Produkte.ID
FROM Bestellungen, Produkte, Bestellungen_Produkte
WHERE Bestellungen_Produkte.ProduktID = Produkte.ID and Bestellungen_Produkte.BestellungenID = Bestellungen.ID; */

/*
SELECT Login.ID, Login.EMAIL, Login.Passwort, Kunden.Vorname, Kunden.Nachname
FROM Login, Kunden
WHERE Login.KundenID = Kunden.ID; */


SELECT * FROM Bestellungen;
SELECT * FROM Kunden;
SELECT * FROM Bestellungen_Produkte;
SELECT * FROM Login;
SELECT * FROM Produktbewertung;
