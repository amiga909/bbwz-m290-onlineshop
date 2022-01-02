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
  Vorname VARCHAR(40),
  Nachname VARCHAR(40),
  Lieferadresse VARCHAR(100),
  PLZ INTEGER(4),
  Ort VARCHAR(40),
  Email VARCHAR(100)
);

CREATE TABLE Bestellungen (
  ID INTEGER NOT NULL AUTO_INCREMENT PRIMARY KEY,
  KundeID INTEGER,
  Erstelldatum Date
);

-- 1:n Beziehung "Kunde bestellt Produkte"
CREATE TABLE Bestellungen_Produkte (
  ID INTEGER NOT NULL AUTO_INCREMENT PRIMARY KEY,
  ProduktID INTEGER, 
  BestellungID INTEGER
);

-- Bestellung Kunde Produkt --
INSERT INTO Bestellungen_Produkte (BestellungID, ProduktID) VALUES (1, 7);

-- Bestellungen --
INSERT INTO Bestellungen (KundeID, Erstelldatum) VALUES (1, "2021.12.10");

-- Kunden --
INSERT INTO Kunden (Vorname, Nachname, Lieferadresse, PLZ, Ort, Email) VALUES ("Noah", "Gabriel", "Unterhusweg 1", 6010, "Kriens", "noah@email.ch");

-- Hauptkategorien 

INSERT INTO Hauptkategorien (Name) VALUES ("Accessoires");
INSERT INTO Hauptkategorien (Name) VALUES ("Hoodies");
INSERT INTO Hauptkategorien (Name) VALUES ("Schuhe");
INSERT INTO Hauptkategorien (Name) VALUES ("T-Shirt");

-- Kategorien 

INSERT INTO Kategorien (Name, Wert) VALUES ("Grösse", "41");
INSERT INTO Kategorien (Name, Wert) VALUES ("Grösse", "L");
INSERT INTO Kategorien (Name, Wert) VALUES ("Grösse", "M");
INSERT INTO Kategorien (Name, Wert) VALUES ("Grösse", "S");
INSERT INTO Kategorien (Name, Wert) VALUES ("Farbe", "Beige");
INSERT INTO Kategorien (Name, Wert) VALUES ("Farbe", "Blau");
INSERT INTO Kategorien (Name, Wert) VALUES ("Farbe", "Dunkelgrün");
INSERT INTO Kategorien (Name, Wert) VALUES ("Farbe", "Grau");
INSERT INTO Kategorien (Name, Wert) VALUES ("Farbe", "Schwarz");
INSERT INTO Kategorien (Name, Wert) VALUES ("Farbe", "Schwarz/Orange");
INSERT INTO Kategorien (Name, Wert) VALUES ("Farbe", "Weiss");
INSERT INTO Kategorien (Name, Wert) VALUES ("Farbe", "Weiss/Blau");
INSERT INTO Kategorien (Name, Wert) VALUES ("Farbe", "Weiss/Gelb");
INSERT INTO Kategorien (Name, Wert) VALUES ("Schnitt", "Cap");
INSERT INTO Kategorien (Name, Wert) VALUES ("Schnitt", "Fischerhut");
INSERT INTO Kategorien (Name, Wert) VALUES ("Schnitt", "Low Cut");
INSERT INTO Kategorien (Name, Wert) VALUES ("Schnitt", "Low Lace");
INSERT INTO Kategorien (Name, Wert) VALUES ("Schnitt", "Mütze");
INSERT INTO Kategorien (Name, Wert) VALUES ("Schnitt", "Oversized");

-- Produkte 

INSERT INTO Produkte (Produktname, Preis, Link, HauptkategorieID) VALUES ("Stoned Hoodie", "269", "https://ch.diesel.com/de/sweatshirts/s-grubber/A031670HBAD.html?dwvar_A031670HBAD_color=9XXA", 2);
INSERT INTO Produkte (Produktname, Preis, Link, HauptkategorieID) VALUES ("Stoned Hoodie", "269", "https://ch.diesel.com/de/sweatshirts/s-grubber/A031670HBAD.html?dwvar_A031670HBAD_color=9XXA", 2);
INSERT INTO Produkte (Produktname, Preis, Link, HauptkategorieID) VALUES ("Stoned Hoodie", "269", "https://ch.diesel.com/de/sweatshirts/s-grubber/A031670HBAD.html?dwvar_A031670HBAD_color=9XXA", 2);
INSERT INTO Produkte (Produktname, Preis, Link, HauptkategorieID) VALUES ("Summerworld Hoodie", "219", "https://ch.diesel.com/de/sweatshirts/s-ummerwelt-c1/A038080IEAX.html?dwvar_A038080IEAX_color=9XX", 2);
INSERT INTO Produkte (Produktname, Preis, Link, HauptkategorieID) VALUES ("Summerworld Hoodie", "219", "https://ch.diesel.com/de/sweatshirts/s-ummerwelt-c1/A038080IEAX.html?dwvar_A038080IEAX_color=9XX", 2);
INSERT INTO Produkte (Produktname, Preis, Link, HauptkategorieID) VALUES ("Summerworld Hoodie", "219", "https://ch.diesel.com/de/sweatshirts/s-ummerwelt-c1/A038080IEAX.html?dwvar_A038080IEAX_color=9XX", 2);
INSERT INTO Produkte (Produktname, Preis, Link, HauptkategorieID) VALUES ("Loopback Hoodie", "229", "https://ch.diesel.com/de/sweatshirts/s-ummer-b6/A032330GCAD.html?dwvar_A032330GCAD_color=8MM", 2);
INSERT INTO Produkte (Produktname, Preis, Link, HauptkategorieID) VALUES ("Loopback Hoodie", "229", "https://ch.diesel.com/de/sweatshirts/s-ummer-b6/A032330GCAD.html?dwvar_A032330GCAD_color=8MM", 2);
INSERT INTO Produkte (Produktname, Preis, Link, HauptkategorieID) VALUES ("Loopback Hoodie", "229", "https://ch.diesel.com/de/sweatshirts/s-ummer-b6/A032330GCAD.html?dwvar_A032330GCAD_color=8MM", 2);
INSERT INTO Produkte (Produktname, Preis, Link, HauptkategorieID) VALUES ("Just-Worky T-Shirt", "80", "https://de.diesel.com/de/t-shirts/t-just-worky/A029920QANW.html?dwvar_A029920QANW_color=9XX", 4);
INSERT INTO Produkte (Produktname, Preis, Link, HauptkategorieID) VALUES ("Just-Worky T-Shirt", "80", "https://de.diesel.com/de/t-shirts/t-just-worky/A029920QANW.html?dwvar_A029920QANW_color=9XX", 4);
INSERT INTO Produkte (Produktname, Preis, Link, HauptkategorieID) VALUES ("Just-Worky T-Shirt", "80", "https://de.diesel.com/de/t-shirts/t-just-worky/A029920QANW.html?dwvar_A029920QANW_color=9XX", 4);
INSERT INTO Produkte (Produktname, Preis, Link, HauptkategorieID) VALUES ("Just-DSL T-Shirt", "50", "https://de.diesel.com/de/t-shirts/t-just-a35/A018360HAYU.html?dwvar_A018360HAYU_color=9XX", 4);
INSERT INTO Produkte (Produktname, Preis, Link, HauptkategorieID) VALUES ("Just-DSL T-Shirt", "50", "https://de.diesel.com/de/t-shirts/t-just-a35/A018360HAYU.html?dwvar_A018360HAYU_color=9XX", 4);
INSERT INTO Produkte (Produktname, Preis, Link, HauptkategorieID) VALUES ("Just-DSL T-Shirt", "50", "https://de.diesel.com/de/t-shirts/t-just-a35/A018360HAYU.html?dwvar_A018360HAYU_color=9XX", 4);
INSERT INTO Produkte (Produktname, Preis, Link, HauptkategorieID) VALUES ("Le Brave T-Shirt", "70", "https://de.diesel.com/de/t-shirts/t-iny-b1/A028040GRAA.html?dwvar_A028040GRAA_color=9XX", 4);
INSERT INTO Produkte (Produktname, Preis, Link, HauptkategorieID) VALUES ("Le Brave T-Shirt", "70", "https://de.diesel.com/de/t-shirts/t-iny-b1/A028040GRAA.html?dwvar_A028040GRAA_color=9XX", 4);
INSERT INTO Produkte (Produktname, Preis, Link, HauptkategorieID) VALUES ("Le Brave T-Shirt", "70", "https://de.diesel.com/de/t-shirts/t-iny-b1/A028040GRAA.html?dwvar_A028040GRAA_color=9XX", 4);
INSERT INTO Produkte (Produktname, Preis, Link, HauptkategorieID) VALUES ("Clever Low Lace Shoe", "139", "https://ch.diesel.com/de/sneakers/s-clever-low-lace/Y02045P4179.html?dwvar_Y02045P4179_color=H8718", 3);
INSERT INTO Produkte (Produktname, Preis, Link, HauptkategorieID) VALUES ("Clever Low Lace Shoe", "139", "https://ch.diesel.com/de/sneakers/s-clever-low-lace/Y02045P4179.html?dwvar_Y02045P4179_color=H8718", 3);
INSERT INTO Produkte (Produktname, Preis, Link, HauptkategorieID) VALUES ("Clever Low Lace Shoe", "139", "https://ch.diesel.com/de/sneakers/s-clever-low-lace/Y02045P4179.html?dwvar_Y02045P4179_color=H8718", 3);
INSERT INTO Produkte (Produktname, Preis, Link, HauptkategorieID) VALUES ("Serendipity Low Cut Shoe", "149", "Shttps://ch.diesel.com/de/sneakers/s-serendipity-low-cu/Y02547P4187.html?dwvar_Y02547P4187_color=H8720", 3);
INSERT INTO Produkte (Produktname, Preis, Link, HauptkategorieID) VALUES ("Serendipity Low Cut Shoe", "149", "https://ch.diesel.com/de/sneakers/s-serendipity-low-cu/Y02547P4187.html?dwvar_Y02547P4187_color=H8720", 3);
INSERT INTO Produkte (Produktname, Preis, Link, HauptkategorieID) VALUES ("Serendipity Low Cut Shoe", "149", "https://ch.diesel.com/de/sneakers/s-serendipity-low-cu/Y02547P4187.html?dwvar_Y02547P4187_color=H8720", 3);
INSERT INTO Produkte (Produktname, Preis, Link, HauptkategorieID) VALUES ("Emoji-Logo Accessoire", "70", "https://ch.diesel.com/de/h%C3%BCte/condi-max/00SHHZ0NAUI.html?dwvar_00SHHZ0NAUI_color=900A", 1);
INSERT INTO Produkte (Produktname, Preis, Link, HauptkategorieID) VALUES ("Emoji-Logo Accessoire", "70", "https://ch.diesel.com/de/m%C3%BCtzen/k-coder-fully/A028810DAOB.html?dwvar_A028810DAOB_color=900&dwvar_A028810DAOB_size=UNI", 1);
INSERT INTO Produkte (Produktname, Preis, Link, HauptkategorieID) VALUES ("Emoji-Logo Accessoire", "70", "https://ch.diesel.com/de/h%C3%BCte/d-indig/A027530PBAM.html?dwvar_A027530PBAM_color=5IW", 1);
INSERT INTO Produkte (Produktname, Preis, Link, HauptkategorieID) VALUES ("Irokesen-Logo Acessoire", "80", "https://ch.diesel.com/de/h%C3%BCte/c-smill/A027490PBAP.html?dwvar_A027490PBAP_color=9XX", 1);
INSERT INTO Produkte (Produktname, Preis, Link, HauptkategorieID) VALUES ("Irokesen-Logo Acessoire", "80", "https://ch.diesel.com/de/m%C3%BCtzen/k-amarillo/A034510PBAD.html?dwvar_A034510PBAD_color=9XX&dwvar_A034510PBAD_size=UNI", 1);
INSERT INTO Produkte (Produktname, Preis, Link, HauptkategorieID) VALUES ("Irokesen-Logo Acessoire", "80", "https://ch.diesel.com/de/h%C3%BCte/c-swamp/A031820TCAV.html?dwvar_A031820TCAV_color=9XX", 1);

-- Produktkategorien 

INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (1, 4);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (1, 8);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (1, 19);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (2, 3);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (2, 8);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (2, 19);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (3, 2);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (3, 8);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (3, 19);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (4, 4);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (4, 9);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (4, 19);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (5, 3);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (5, 9);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (5, 19);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (6, 2);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (6, 9);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (6, 19);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (7, 4);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (7, 6);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (7, 19);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (8, 3);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (8, 6);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (8, 19);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (9, 2);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (9, 6);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (9, 19);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (10, 4);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (10, 9);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (10, 19);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (11, 3);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (11, 9);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (11, 19);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (12, 2);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (12, 9);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (12, 19);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (13, 4);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (13, 9);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (13, 19);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (14, 3);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (14, 9);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (14, 19);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (15, 2);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (15, 9);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (15, 19);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (16, 4);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (16, 9);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (16, 19);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (17, 3);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (17, 9);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (17, 19);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (18, 2);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (18, 9);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (18, 19);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (19, 1);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (19, 13);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (19, 17);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (20, 1);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (20, 12);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (20, 17);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (21, 1);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (21, 10);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (21, 17);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (22, 1);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (22, 11);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (22, 16);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (23, 1);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (23, 10);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (23, 16);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (24, 1);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (24, 5);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (24, 16);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (25, 3);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (25, 9);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (25, 14);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (26, 3);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (26, 9);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (26, 18);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (27, 3);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (27, 7);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (27, 15);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (28, 3);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (28, 9);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (28, 14);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (29, 3);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (29, 9);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (29, 18);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (30, 3);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (30, 9);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (30, 15);



/*
SELECT * FROM Hauptkategorien;	
SELECT * FROM Kategorien;	
SELECT * FROM Produkte;	
SELECT * FROM Produkte_Kategorien;
*/

/* TEIL 2 */ /*
SELECT Produkte.Produktname, Produkte.Preis , Hauptkategorien.Name
FROM Produkte, Hauptkategorien
WHERE Produkte.HauptkategorieID = Hauptkategorien.ID;
*/

/* TEIL 3 */ /*
SELECT Produkte.Produktname, Produkte.Preis, Kategorien.Name, Kategorien.Wert
FROM Produkte, Produkte_Kategorien, Kategorien
WHERE Produkte_Kategorien.ProduktID = Produkte.ID
AND Produkte_Kategorien.KategorieID = Kategorien.ID
AND Produkte.ID = 10;
*/

SELECT * FROM Kunden;
SELECT * FROM Bestellungen;
SELECT * FROM Bestellungen_Produkte;
SELECT * FROM Produkte;	


