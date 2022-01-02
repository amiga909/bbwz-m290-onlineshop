-- Tabellen für Kategorien
  CREATE TABLE Hauptkategorien (
    ID INTEGER NOT NULL AUTO_INCREMENT UNIQUE PRIMARY KEY,  
    Name VARCHAR(255) NOT NULL UNIQUE
  );

  CREATE TABLE Kategorien (
    ID INTEGER NOT NULL AUTO_INCREMENT UNIQUE PRIMARY KEY,  
    Name VARCHAR(255) NOT NULL,
    Wert VARCHAR(255) NOT NULL UNIQUE
  );
  
-- Tabelle für Produkte
  CREATE TABLE Produkte (
    ID INTEGER NOT NULL AUTO_INCREMENT UNIQUE PRIMARY KEY, 
    Produktname VARCHAR(512) NOT NULL,
    HauptkategorieID INTEGER NOT NULL,
    Preis INTEGER(10) NOT NULL,
    Link VARCHAR(2048),
    FOREIGN KEY (HauptkategorieID) REFERENCES Hauptkategorien(ID)
  );

-- Tabelle für Kunden
  CREATE TABLE Kunden (
    ID INTEGER NOT NULL AUTO_INCREMENT UNIQUE PRIMARY KEY,
    Vorname VARCHAR (255) NOT NULL,
    Nachname VARCHAR (255) NOT NULL,
    Email VARCHAR (255) UNIQUE,
    Strasse VARCHAR (255) NOT NULL,
    Hausnummer VARCHAR (5) NOT NULL,
    PLZ INTEGER NOT NULL,
    Ort VARCHAR (255) NOT NULL
  );

-- Tabelle für Bestellungen
  CREATE TABLE Bestellungen (
    ID INTEGER NOT NULL AUTO_INCREMENT UNIQUE PRIMARY KEY,
    KundenID INTEGER NOT NULL,
    Bestelldatum TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (KundenID) REFERENCES Kunden(ID)
  );

-- Tabelle für Produktbilder
  CREATE TABLE Produktbilder (
    ID INTEGER NOT NULL AUTO_INCREMENT UNIQUE PRIMARY KEY,
    Alttext VARCHAR (255),
    Produktbild_URL VARCHAR(2048) NOT NULL
  );


-- Beziehungen
  -- n:m Beziehung "Kategorien beschreiben Produkte"
  CREATE TABLE Produkte_Kategorien (
    ID INTEGER NOT NULL AUTO_INCREMENT UNIQUE PRIMARY KEY,
    ProduktID INTEGER NOT NULL, 
    KategorieID INTEGER NOT NULL,
    FOREIGN KEY (ProduktID) REFERENCES Produkte(ID),
    FOREIGN KEY (KategorieID) REFERENCES Kategorien(ID)
  );

  -- n:m Beziehung zwischen Produkte und Bestellungen
  CREATE TABLE Produkte_Bestellungen (
    ID INTEGER NOT NULL AUTO_INCREMENT UNIQUE PRIMARY KEY,
    ProduktID INTEGER NOT NULL,
    BestellungID INTEGER NOT NULL,
    FOREIGN KEY (ProduktID) REFERENCES Produkte(ID),
    FOREIGN KEY (BestellungID) REFERENCES Bestellungen(ID)
  );

  -- n:m Beziehung von Produktbilder und Produkte
  CREATE TABLE Produktbilder_Produkte (
    ID INTEGER NOT NULL AUTO_INCREMENT UNIQUE PRIMARY KEY,
    ProduktbildID INTEGER NOT NULL,
    ProduktID INTEGER NOT NULL,
    FOREIGN KEY (ProduktbildID) REFERENCES Produktbilder(ID),
    FOREIGN KEY (ProduktID) REFERENCES Produkte(ID)
  );
  
-- Indexierungen
  CREATE INDEX index_produkte
    ON Produkte (Produktname);
    
  CREATE INDEX index_kunden
    ON Kunden (Vorname, Nachname);

-- Hauptkategorien 

INSERT INTO Hauptkategorien (Name) VALUES ("Achsen");
INSERT INTO Hauptkategorien (Name) VALUES ("Deck");
INSERT INTO Hauptkategorien (Name) VALUES ("Griptape");
INSERT INTO Hauptkategorien (Name) VALUES ("Hardware");
INSERT INTO Hauptkategorien (Name) VALUES ("Kugellager");
INSERT INTO Hauptkategorien (Name) VALUES ("Rollen");

-- Kategorien 

INSERT INTO Kategorien (Name, Wert) VALUES ("Marke", "Ace Trucks");
INSERT INTO Kategorien (Name, Wert) VALUES ("Marke", "Bones Wheels");
INSERT INTO Kategorien (Name, Wert) VALUES ("Marke", "GX1000 Skateboards");
INSERT INTO Kategorien (Name, Wert) VALUES ("Marke", "Hockey Skateboards");
INSERT INTO Kategorien (Name, Wert) VALUES ("Marke", "Independent");
INSERT INTO Kategorien (Name, Wert) VALUES ("Marke", "Independent Trucks");
INSERT INTO Kategorien (Name, Wert) VALUES ("Marke", "Mob Grip");
INSERT INTO Kategorien (Name, Wert) VALUES ("Marke", "Palace Skateboards");
INSERT INTO Kategorien (Name, Wert) VALUES ("Marke", "Polar Skateboards");
INSERT INTO Kategorien (Name, Wert) VALUES ("Marke", "Polster");
INSERT INTO Kategorien (Name, Wert) VALUES ("Marke", "Rave Skateboards");
INSERT INTO Kategorien (Name, Wert) VALUES ("Marke", "Shake Junt");
INSERT INTO Kategorien (Name, Wert) VALUES ("Marke", "Spitfire Wheels");
INSERT INTO Kategorien (Name, Wert) VALUES ("Marke", "Tensor");
INSERT INTO Kategorien (Name, Wert) VALUES ("Marke", "Thunder");
INSERT INTO Kategorien (Name, Wert) VALUES ("Farbe", "Black");
INSERT INTO Kategorien (Name, Wert) VALUES ("Farbe", "Blue");
INSERT INTO Kategorien (Name, Wert) VALUES ("Farbe", "Chrome");
INSERT INTO Kategorien (Name, Wert) VALUES ("Farbe", "Clear");
INSERT INTO Kategorien (Name, Wert) VALUES ("Farbe", "Dark Green");
INSERT INTO Kategorien (Name, Wert) VALUES ("Farbe", "Gold");
INSERT INTO Kategorien (Name, Wert) VALUES ("Farbe", "Green");
INSERT INTO Kategorien (Name, Wert) VALUES ("Farbe", "Red");
INSERT INTO Kategorien (Name, Wert) VALUES ("Farbe", "Sapphire");
INSERT INTO Kategorien (Name, Wert) VALUES ("Farbe", "Silver");
INSERT INTO Kategorien (Name, Wert) VALUES ("Farbe", "White");
INSERT INTO Kategorien (Name, Wert) VALUES ("Farbe", "Yellow");
INSERT INTO Kategorien (Name, Wert) VALUES ("Material", "7-Ply Ahornholzkonstruktion");
INSERT INTO Kategorien (Name, Wert) VALUES ("Material", "ATF All Terrain Urethan Formel");
INSERT INTO Kategorien (Name, Wert) VALUES ("Material", "Keramik");
INSERT INTO Kategorien (Name, Wert) VALUES ("Material", "OG Urethan Formula");
INSERT INTO Kategorien (Name, Wert) VALUES ("Material", "STF Street Tech Urethan Formula");
INSERT INTO Kategorien (Name, Wert) VALUES ("Material", "Spitfire Formula Four Urethanformel");
INSERT INTO Kategorien (Name, Wert) VALUES ("Material", "Stahl");
INSERT INTO Kategorien (Name, Wert) VALUES ("Breite (Zoll)", "11");
INSERT INTO Kategorien (Name, Wert) VALUES ("Breite (Zoll)", "8");
INSERT INTO Kategorien (Name, Wert) VALUES ("Breite (Zoll)", "8.25");
INSERT INTO Kategorien (Name, Wert) VALUES ("Breite (Zoll)", "8.35");
INSERT INTO Kategorien (Name, Wert) VALUES ("Breite (Zoll)", "8.375");
INSERT INTO Kategorien (Name, Wert) VALUES ("Breite (Zoll)", "8.5");
INSERT INTO Kategorien (Name, Wert) VALUES ("Breite (Zoll)", "9");
INSERT INTO Kategorien (Name, Wert) VALUES ("Länge (Zoll)", "1");
INSERT INTO Kategorien (Name, Wert) VALUES ("Länge (Zoll)", "31.5");
INSERT INTO Kategorien (Name, Wert) VALUES ("Länge (Zoll)", "31.625");
INSERT INTO Kategorien (Name, Wert) VALUES ("Länge (Zoll)", "31.79");
INSERT INTO Kategorien (Name, Wert) VALUES ("Länge (Zoll)", "31.875");
INSERT INTO Kategorien (Name, Wert) VALUES ("Länge (Zoll)", "31.89");
INSERT INTO Kategorien (Name, Wert) VALUES ("Länge (Zoll)", "32");
INSERT INTO Kategorien (Name, Wert) VALUES ("Länge (Zoll)", "32.13");
INSERT INTO Kategorien (Name, Wert) VALUES ("Länge (Zoll)", "33");
INSERT INTO Kategorien (Name, Wert) VALUES ("Länge (Zoll)", "7/8");
INSERT INTO Kategorien (Name, Wert) VALUES ("Höhe", "High");
INSERT INTO Kategorien (Name, Wert) VALUES ("Höhe", "Mid");
INSERT INTO Kategorien (Name, Wert) VALUES ("Durchmesser (mm)", "52");
INSERT INTO Kategorien (Name, Wert) VALUES ("Durchmesser (mm)", "53");
INSERT INTO Kategorien (Name, Wert) VALUES ("Durchmesser (mm)", "54");
INSERT INTO Kategorien (Name, Wert) VALUES ("Durchmesser (mm)", "55");
INSERT INTO Kategorien (Name, Wert) VALUES ("Durchmesser (mm)", "59");
INSERT INTO Kategorien (Name, Wert) VALUES ("Härte", "100A");
INSERT INTO Kategorien (Name, Wert) VALUES ("Härte", "101A");
INSERT INTO Kategorien (Name, Wert) VALUES ("Härte", "103A");
INSERT INTO Kategorien (Name, Wert) VALUES ("Härte", "80A");
INSERT INTO Kategorien (Name, Wert) VALUES ("Härte", "99A");

-- Produkte 

INSERT INTO Produkte (Produktname, Preis, Link, HauptkategorieID) VALUES ("Grund Cold Streak", "80", "https://www.skatedeluxe.ch/de/polar-skateboards-grund-cold-streak-8-deck-dark-greeen_p145099?cPath=42&view=manu&brand_id=345", 2);
INSERT INTO Produkte (Produktname, Preis, Link, HauptkategorieID) VALUES ("Stain", "85", "https://www.skatedeluxe.ch/de/hockey-stain-8-44-deck-multi_p152015?cPath=42", 2);
INSERT INTO Produkte (Produktname, Preis, Link, HauptkategorieID) VALUES ("Jamal Pro S27", "80", "https://www.skatedeluxe.ch/de/palace-skateboards-jamal-pro-s27-8-25-deck-multi_p155649", 2);
INSERT INTO Produkte (Produktname, Preis, Link, HauptkategorieID) VALUES ("Heitro Pro S27", "80", "https://www.skatedeluxe.ch/de/palace-skateboards-heitor-pro-s27-8-375-deck-multi_p155643?cPath=42&view=manu&brand_id=507", 2);
INSERT INTO Produkte (Produktname, Preis, Link, HauptkategorieID) VALUES ("Greene Pro Debut 1", "85", "https://www.skatedeluxe.ch/de/gx1000-greene-pro-debut-1-8-25-deck-multi_p153983?cPath=42&brand_id=599", 2);
INSERT INTO Produkte (Produktname, Preis, Link, HauptkategorieID) VALUES ("Allen Eject", "85", "https://www.skatedeluxe.ch/de/hockey-allen-eject-8-25-deck-multi_p152987?cPath=42&brand_id=599", 2);
INSERT INTO Produkte (Produktname, Preis, Link, HauptkategorieID) VALUES ("Rainbow", "75", "https://www.skatedeluxe.ch/de/rave-rainbow-8-5-deck-blue_p141346?cPath=42&brand_id=599", 2);
INSERT INTO Produkte (Produktname, Preis, Link, HauptkategorieID) VALUES ("Basic", "10", "https://www.skatedeluxe.ch/de/mob-basic-11-griptape-black_p119234?cPath=88", 3);
INSERT INTO Produkte (Produktname, Preis, Link, HauptkategorieID) VALUES ("Basic", "12", "https://www.skatedeluxe.ch/de/mob-basic-10-griptape-clear_p96574", 3);
INSERT INTO Produkte (Produktname, Preis, Link, HauptkategorieID) VALUES ("Sprayed", "17", "https://www.skatedeluxe.ch/de/shake-junt-sprayed-9-griptape-black-green_p126123?cPath=88", 3);
INSERT INTO Produkte (Produktname, Preis, Link, HauptkategorieID) VALUES ("Formula Four Conical Full (4er Pack)", "70", "https://www.skatedeluxe.ch/de/spitfire-formula-four-conical-full-rollen-white-blue-52mm-99a-4er-pack_p90801?cPath=43&brand_id=60", 6);
INSERT INTO Produkte (Produktname, Preis, Link, HauptkategorieID) VALUES ("Formula Four Conical Full (4er Pack)", "70", "https://www.skatedeluxe.ch/de/spitfire-formula-four-conical-full-rollen-white-blue-54mm-99a-4er-pack_p86863", 6);
INSERT INTO Produkte (Produktname, Preis, Link, HauptkategorieID) VALUES ("Formula Four Classic (4er Pack)", "70", "https://www.skatedeluxe.ch/de/spitfire-formula-four-classic-rollen-white-green-52mm-101a-4er-pack_p123945?eav=298-310&cPath=43&brand_id=123", 6);
INSERT INTO Produkte (Produktname, Preis, Link, HauptkategorieID) VALUES ("Formula Four Classic (4er Pack)", "70", "https://www.skatedeluxe.ch/de/spitfire-formula-four-classic-rollen-white-silver-54mm-101a-4er-pack_p123293?eav=298-310&cPath=43&brand_id=123", 6);
INSERT INTO Produkte (Produktname, Preis, Link, HauptkategorieID) VALUES ("ATFormula Fough Riders Runners (4er Pack)", "65", "https://www.skatedeluxe.ch/de/bones-atformula-rough-riders-runners-rollen-green-59mm-80a-4er-pack_p143956?cPath=43&brand_id=60", 6);
INSERT INTO Produkte (Produktname, Preis, Link, HauptkategorieID) VALUES ("STF Deecenzo Gizzmo V2 (4er Pack)", "65", "https://www.skatedeluxe.ch/de/bones-stf-decenzo-gizzmo-v2-rollen-white-53mm-103a-4er-pack_p150561?cPath=43&brand_id=60", 6);
INSERT INTO Produkte (Produktname, Preis, Link, HauptkategorieID) VALUES ("100s-OG #4 V5 (4er Pack)", "39", "https://www.skatedeluxe.ch/de/bones-100-s-og-4-v5-rollen-black-purple-55mm-100a-4er-pack_p143949?cPath=43&brand_id=60", 6);
INSERT INTO Produkte (Produktname, Preis, Link, HauptkategorieID) VALUES ("Super Swiss inkl. Spacer (8er Pack)", "120", "https://www.skatedeluxe.ch/de/bones-bearings-super-swiss-6-kugellager-inkl-spacer-blue_p2731", 5);
INSERT INTO Produkte (Produktname, Preis, Link, HauptkategorieID) VALUES ("Reds (8er Pack)", "28", "https://www.skatedeluxe.ch/de/bones-bearings-reds-kugellager-red_p2729?cPath=87", 5);
INSERT INTO Produkte (Produktname, Preis, Link, HauptkategorieID) VALUES ("GP-B (8er Pack)", "28", "https://www.skatedeluxe.ch/de/independent-gp-b-kugellager-black_p139282?cPath=87", 5);
INSERT INTO Produkte (Produktname, Preis, Link, HauptkategorieID) VALUES ("139 Stage 11 Standard Hallow (2er Pack)", "90", "https://www.skatedeluxe.ch/de/independent-139-stage-11-standard-hollow-achse-silver-8_p130035?cPath=44", 1);
INSERT INTO Produkte (Produktname, Preis, Link, HauptkategorieID) VALUES ("44 Classic (2er Pack)", "39", "https://www.skatedeluxe.ch/de/ace-44-classic-5-75-achse-sapphire-8-35_p150197?cPath=44", 1);
INSERT INTO Produkte (Produktname, Preis, Link, HauptkategorieID) VALUES ("Glossy Magnesium Light All Terrain (2er Pack)", "95", "https://www.skatedeluxe.ch/de/tensor-glossy-magnesium-light-5-25-all-terrain-achse-gold-silver-8-2er-pack_p146494?cPath=44", 1);
INSERT INTO Produkte (Produktname, Preis, Link, HauptkategorieID) VALUES ("Stage VI Standard (2er Pack)", "60", "https://www.skatedeluxe.ch/de/polster-stage-vi-standard-5-25-achse-green-polish-ravv-8_p103955?cPath=44", 1);
INSERT INTO Produkte (Produktname, Preis, Link, HauptkategorieID) VALUES ("149 High Hollow II (2er Pack)", "110", "https://www.skatedeluxe.ch/de/thunder-149-high-hollow-ii-achse-polished-8-5_p124991?cPath=44", 1);
INSERT INTO Produkte (Produktname, Preis, Link, HauptkategorieID) VALUES ("149 Mid Lemos (2er Pack)", "96", "https://www.skatedeluxe.ch/de/independent-149-mid-lemos-achse-polished-8-5_p142803?cPath=44&view=manu&brand_id=33", 1);
INSERT INTO Produkte (Produktname, Preis, Link, HauptkategorieID) VALUES ("55 AF1 (2er Pack)", "78", "https://www.skatedeluxe.ch/de/ace-55-classic-6-375-achse-matte-black-9_p128985?cPath=44&view=manu&brand_id=602", 1);
INSERT INTO Produkte (Produktname, Preis, Link, HauptkategorieID) VALUES ("Montageset Kreuzschlitz Senkkopf (8er Pack)", "8", "https://www.skatedeluxe.ch/de/shake-junt-peterson-1-montageset-multi-kreuzschlitz-senkkopf_p149525?cPath=90", 4);
INSERT INTO Produkte (Produktname, Preis, Link, HauptkategorieID) VALUES ("Montageset Kreuzschlitz Senkkopf (8er Pack)", "5", "https://www.skatedeluxe.ch/de/independent-7-8-montageset-black-silver-kreuzschlitz-senkkopf_p114359?cPath=90", 4);
INSERT INTO Produkte (Produktname, Preis, Link, HauptkategorieID) VALUES ("Montageset Inbus Senkkopf (8er Pack)", "9", "https://www.skatedeluxe.ch/de/ace-7-8-montageset-black-inbus-senkkopf_p150201?cPath=90", 4);

-- Produktkategorien 

INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (1, 9);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (1, 20);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (1, 28);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (1, 36);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (1, 46);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (2, 4);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (2, 23);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (2, 28);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (2, 40);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (2, 47);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (3, 8);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (3, 25);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (3, 28);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (3, 37);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (3, 43);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (4, 8);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (4, 27);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (4, 28);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (4, 39);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (4, 49);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (5, 3);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (5, 23);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (5, 28);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (5, 37);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (5, 44);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (6, 4);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (6, 16);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (6, 28);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (6, 37);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (6, 45);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (7, 11);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (7, 17);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (7, 28);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (7, 40);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (7, 48);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (8, 7);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (8, 16);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (8, 35);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (8, 50);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (9, 7);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (9, 19);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (9, 35);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (9, 50);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (10, 12);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (10, 16);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (10, 41);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (10, 50);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (11, 13);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (11, 26);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (11, 33);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (11, 54);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (11, 63);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (12, 13);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (12, 26);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (12, 33);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (12, 56);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (12, 63);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (13, 13);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (13, 26);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (13, 33);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (13, 54);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (13, 60);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (14, 13);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (14, 26);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (14, 33);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (14, 56);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (14, 60);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (15, 2);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (15, 22);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (15, 29);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (15, 58);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (15, 62);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (16, 2);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (16, 26);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (16, 32);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (16, 55);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (16, 61);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (17, 2);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (17, 16);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (17, 31);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (17, 57);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (17, 59);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (18, 2);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (18, 17);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (18, 30);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (19, 2);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (19, 23);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (19, 34);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (20, 5);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (20, 16);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (20, 34);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (21, 6);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (21, 25);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (21, 36);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (21, 52);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (22, 1);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (22, 24);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (22, 38);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (22, 53);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (23, 14);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (23, 21);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (23, 36);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (23, 52);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (24, 10);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (24, 18);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (24, 36);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (24, 53);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (25, 15);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (25, 18);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (25, 40);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (25, 53);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (26, 6);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (26, 18);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (26, 40);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (26, 53);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (27, 1);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (27, 16);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (27, 41);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (27, 53);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (28, 12);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (28, 16);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (28, 42);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (29, 5);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (29, 16);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (29, 51);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (30, 1);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (30, 16);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (30, 51);




-- Feature 2
SELECT Produkte.Produktname,
Produkte.Preis,
Hauptkategorien.Name
FROM Produkte, Hauptkategorien
WHERE Produkte.HauptkategorieID = Hauptkategorien.ID;

-- Feature 3
SELECT Produkte.ID, Produkte.Produktname, Produkte.Preis, Kategorien.Name, Kategorien.Wert FROM  Produkte, Produkte_Kategorien, Kategorien
WHERE Produkte.ID = 10
AND Produkte_Kategorien.ProduktID = Produkte.ID
AND Produkte_Kategorien.KategorieID = Kategorien.ID;

-- Testcase Feature 4
INSERT INTO Kunden (Vorname, Nachname, Email, Strasse, Hausnummer, PLZ, Ort) VALUES ("Max", "Muster", "max@muster.ch", "Musterstrasse", "1a", 6000, "Luzern");
INSERT INTO Bestellungen (KundenID) VALUES (1);
INSERT INTO Produkte_Bestellungen (ProduktID, BestellungID) VALUES (3, 1);
INSERT INTO Produkte_Bestellungen (ProduktID, BestellungID) VALUES (7, 1);
INSERT INTO Produkte_Bestellungen (ProduktID, BestellungID) VALUES (15, 1);

SELECT Bestellungen.ID, Bestellungen.KundenID, Kunden.Nachname, Produkte_Bestellungen.ProduktID, Produkte.Produktname
FROM Bestellungen, Produkte_Bestellungen, Kunden, Produkte
WHERE Bestellungen.ID = Produkte_Bestellungen.BestellungID
AND Bestellungen.KundenID = Kunden.ID
AND Produkte_Bestellungen.ProduktID = Produkte.ID;

-- Testcase Feature 5
INSERT INTO Produktbilder (Alttext, Produktbild_URL) VALUES ("Jamal Pro Model", "https://cdn.skatedeluxe.com/thumb/9xUQP_oHgrUFSFaqbcdPNYlEzzk=/fit-in/420x490/filters:fill(white):brightness(-4)/product/155649-0-PALACESKATEBOARDS-JamalProS27825.jpg");
INSERT INTO Produktbilder_Produkte (ProduktbildID, ProduktID) VALUES (1, 3);
SELECT Produkte.Produktname, Produktbilder.Alttext, Produktbilder.Produktbild_URL
FROM Produkte, Produktbilder, Produktbilder_Produkte
WHERE Produkte.ID = Produktbilder_Produkte.ProduktID
AND Produktbilder.ID = Produktbilder_Produkte.ProduktbildID;
