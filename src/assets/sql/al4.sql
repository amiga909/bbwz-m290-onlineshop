CREATE TABLE Hauptkategorien (
  HauptkategorieID INTEGER NOT NULL AUTO_INCREMENT PRIMARY KEY,  
  Name VARCHAR(255)
);

CREATE TABLE Produkte (
  ProdukteID INTEGER NOT NULL AUTO_INCREMENT PRIMARY KEY, 
  Produktname VARCHAR(512),
  Preis INTEGER(10),
  Link VARCHAR(1024),
  HauptkategorieID INTEGER,
  KategorieID INTEGER
);

CREATE TABLE Kategorien (
  KategorieID INTEGER NOT NULL AUTO_INCREMENT PRIMARY KEY,  
  Name VARCHAR(255),
  Wert VARCHAR(255) 
);

-- Kunden
CREATE TABLE Kunden (
  KundenID INTEGER NOT NULL AUTO_INCREMENT PRIMARY KEY, 
  Vorname VARCHAR(512),
  Nachname VARCHAR(512),
  Email VARCHAR(100)
);

-- Bestellungen
CREATE TABLE Bestellungen (
  BestellungsID INTEGER NOT NULL AUTO_INCREMENT PRIMARY KEY,
  KundenID INTEGER,
  ProdukteID INTEGER
);

-- n:m Beziehung "Kategorien beschreiben Produkte"
CREATE TABLE Produkte_Kategorien (
  ID INTEGER NOT NULL AUTO_INCREMENT PRIMARY KEY,
  ProduktID INTEGER, 
  KategorieID INTEGER
);



-- Kunden
INSERT INTO Kunden (Vorname, Nachname, Email) VALUES ("Eugen", "Hofmann", "eugenhof@web.ch");
INSERT INTO Kunden (Vorname, Nachname, Email) VALUES ("Klara", "Lindenberg", "klara@jlindenberg.com");
INSERT INTO Kunden (Vorname, Nachname, Email) VALUES ("Jil", "Sander", "info@jilsander.com");
INSERT INTO Kunden (Vorname, Nachname, Email) VALUES ("Rassvet", "Moscow", "rassvet@paccbet.ru");
INSERT INTO Kunden (Vorname, Nachname, Email) VALUES ("Gosha", "Rubchinskiy", "gosha@gosha.ru");
INSERT INTO Kunden (Vorname, Nachname, Email) VALUES ("Carti", "Play", "vamp@cartier.com");
INSERT INTO Kunden (Vorname, Nachname, Email) VALUES ("Getter", "Reid", "ter@getter.com");
INSERT INTO Kunden (Vorname, Nachname, Email) VALUES ("Elioze", "Flow", "ontobigger@things.com");

-- Bestellungen
INSERT INTO Bestellungen (KundenID, ProdukteID) VALUES ("1", "1");
INSERT INTO Bestellungen (KundenID, ProdukteID) VALUES ("2", "2");
INSERT INTO Bestellungen (KundenID, ProdukteID) VALUES ("3", "3");
INSERT INTO Bestellungen (KundenID, ProdukteID) VALUES ("4", "4");
INSERT INTO Bestellungen (KundenID, ProdukteID) VALUES ("5", "5");
INSERT INTO Bestellungen (KundenID, ProdukteID) VALUES ("6", "6");
INSERT INTO Bestellungen (KundenID, ProdukteID) VALUES ("7", "7");
INSERT INTO Bestellungen (KundenID, ProdukteID) VALUES ("8", "8");


-- Hauptkategorien 

INSERT INTO Hauptkategorien (Name) VALUES ("Augen");
INSERT INTO Hauptkategorien (Name) VALUES ("Lippen");
INSERT INTO Hauptkategorien (Name) VALUES ("Nagellack");
INSERT INTO Hauptkategorien (Name) VALUES ("Teint");

-- Kategorien 

INSERT INTO Kategorien (Name, Wert) VALUES ("Marke", "Armani");
INSERT INTO Kategorien (Name, Wert) VALUES ("Marke", "Bobbi Brown");
INSERT INTO Kategorien (Name, Wert) VALUES ("Marke", "Catrice");
INSERT INTO Kategorien (Name, Wert) VALUES ("Marke", "Collistar");
INSERT INTO Kategorien (Name, Wert) VALUES ("Marke", "Defly Cosmetics");
INSERT INTO Kategorien (Name, Wert) VALUES ("Marke", "Doucce");
INSERT INTO Kategorien (Name, Wert) VALUES ("Marke", "Douglas Collection");
INSERT INTO Kategorien (Name, Wert) VALUES ("Marke", "Essence");
INSERT INTO Kategorien (Name, Wert) VALUES ("Marke", "Estée Lauder");
INSERT INTO Kategorien (Name, Wert) VALUES ("Marke", "Honest Beauty");
INSERT INTO Kategorien (Name, Wert) VALUES ("Marke", "Inglot");
INSERT INTO Kategorien (Name, Wert) VALUES ("Marke", "Joli Rouge");
INSERT INTO Kategorien (Name, Wert) VALUES ("Marke", "Kimchi Chic");
INSERT INTO Kategorien (Name, Wert) VALUES ("Marke", "LUCAS Cosmetics");
INSERT INTO Kategorien (Name, Wert) VALUES ("Marke", "Lancôme");
INSERT INTO Kategorien (Name, Wert) VALUES ("Marke", "Laura Mercier");
INSERT INTO Kategorien (Name, Wert) VALUES ("Marke", "Mac");
INSERT INTO Kategorien (Name, Wert) VALUES ("Marke", "Maybelline");
INSERT INTO Kategorien (Name, Wert) VALUES ("Marke", "NeoNail");
INSERT INTO Kategorien (Name, Wert) VALUES ("Marke", "Physicians Formula");
INSERT INTO Kategorien (Name, Wert) VALUES ("Marke", "Sephora Collection");
INSERT INTO Kategorien (Name, Wert) VALUES ("Marke", "Smashbox");
INSERT INTO Kategorien (Name, Wert) VALUES ("Marke", "The Ordinary");
INSERT INTO Kategorien (Name, Wert) VALUES ("Marke", "Wet n Wild");
INSERT INTO Kategorien (Name, Wert) VALUES ("Marke", "ZAO");
INSERT INTO Kategorien (Name, Wert) VALUES ("Marke", "essie");
INSERT INTO Kategorien (Name, Wert) VALUES ("Marke", "got2b");
INSERT INTO Kategorien (Name, Wert) VALUES ("Farbe", "-");
INSERT INTO Kategorien (Name, Wert) VALUES ("Farbe", "Bayahibe Bikini");
INSERT INTO Kategorien (Name, Wert) VALUES ("Farbe", "Beige - Dunkelbraun");
INSERT INTO Kategorien (Name, Wert) VALUES ("Farbe", "Cherry On The Run");
INSERT INTO Kategorien (Name, Wert) VALUES ("Farbe", "Dragon Fruit Date");
INSERT INTO Kategorien (Name, Wert) VALUES ("Farbe", "Dunkelrot");
INSERT INTO Kategorien (Name, Wert) VALUES ("Farbe", "Extra Black");
INSERT INTO Kategorien (Name, Wert) VALUES ("Farbe", "Fawn");
INSERT INTO Kategorien (Name, Wert) VALUES ("Farbe", "Ferries Of Them All");
INSERT INTO Kategorien (Name, Wert) VALUES ("Farbe", "Fiery Red");
INSERT INTO Kategorien (Name, Wert) VALUES ("Farbe", "Gentle Rose");
INSERT INTO Kategorien (Name, Wert) VALUES ("Farbe", "Glow Sea Witch");
INSERT INTO Kategorien (Name, Wert) VALUES ("Farbe", "Golden Sand");
INSERT INTO Kategorien (Name, Wert) VALUES ("Farbe", "Healthy Lips");
INSERT INTO Kategorien (Name, Wert) VALUES ("Farbe", "Intense Black");
INSERT INTO Kategorien (Name, Wert) VALUES ("Farbe", "La Vie en Rose");
INSERT INTO Kategorien (Name, Wert) VALUES ("Farbe", "Lemon Curd");
INSERT INTO Kategorien (Name, Wert) VALUES ("Farbe", "Lily");
INSERT INTO Kategorien (Name, Wert) VALUES ("Farbe", "Matte Black");
INSERT INTO Kategorien (Name, Wert) VALUES ("Farbe", "Nude Sand");
INSERT INTO Kategorien (Name, Wert) VALUES ("Farbe", "Passinate");
INSERT INTO Kategorien (Name, Wert) VALUES ("Farbe", "Peach Fuzz");
INSERT INTO Kategorien (Name, Wert) VALUES ("Farbe", "Petal Pink");
INSERT INTO Kategorien (Name, Wert) VALUES ("Farbe", "Rot");
INSERT INTO Kategorien (Name, Wert) VALUES ("Farbe", "Simma Brown Now");
INSERT INTO Kategorien (Name, Wert) VALUES ("Farbe", "Space");
INSERT INTO Kategorien (Name, Wert) VALUES ("Farbe", "Tempt Me");
INSERT INTO Kategorien (Name, Wert) VALUES ("Farbe", "Transparent");
INSERT INTO Kategorien (Name, Wert) VALUES ("Farbe", "Ultra Black");
INSERT INTO Kategorien (Name, Wert) VALUES ("Farbe", "Whirl");
INSERT INTO Kategorien (Name, Wert) VALUES ("Finish", "-");
INSERT INTO Kategorien (Name, Wert) VALUES ("Finish", "Cremig");
INSERT INTO Kategorien (Name, Wert) VALUES ("Finish", "Deckend");
INSERT INTO Kategorien (Name, Wert) VALUES ("Finish", "Glossy");
INSERT INTO Kategorien (Name, Wert) VALUES ("Finish", "Glossy, Deckend");
INSERT INTO Kategorien (Name, Wert) VALUES ("Finish", "Matt");
INSERT INTO Kategorien (Name, Wert) VALUES ("Finish", "Narütlich, Matt");
INSERT INTO Kategorien (Name, Wert) VALUES ("Finish", "Natürlich");
INSERT INTO Kategorien (Name, Wert) VALUES ("Finish", "Satin");
INSERT INTO Kategorien (Name, Wert) VALUES ("Finish", "Satin, Matt");
INSERT INTO Kategorien (Name, Wert) VALUES ("Finish", "Schimmernd, Strahlend");
INSERT INTO Kategorien (Name, Wert) VALUES ("Finish", "Strahlend");
INSERT INTO Kategorien (Name, Wert) VALUES ("Finish", "Strahlend, Matt");

-- Produkte 

INSERT INTO Produkte (Produktname, Preis, Link, HauptkategorieID, KategorieID) VALUES ("Serum Foundation – Make-Up-Serum", "6.95", "https://www.sephora.de/p/serum-foundation-%E2%80%93-make-up-serum-P10018089.html", 4, 4);
INSERT INTO Produkte (Produktname, Preis, Link, HauptkategorieID, KategorieID) VALUES ("Flushed Blush", "9.99", "https://www.sephora.de/p/flushed-blush---natuerlicher-farbton-P10014433.html", 4, 6);
INSERT INTO Produkte (Produktname, Preis, Link, HauptkategorieID, KategorieID) VALUES ("Photo Finish", "10.95", "https://www.sephora.de/p/photo-finish---smooth-blur-primer-mini-534779.html", 4, 12);
INSERT INTO Produkte (Produktname, Preis, Link, HauptkategorieID, KategorieID) VALUES ("Liquid Luminizer", "11.2", "https://www.douglas.ch/de/p/5009970069?variant=016246", 4, 11);
INSERT INTO Produkte (Produktname, Preis, Link, HauptkategorieID, KategorieID) VALUES ("Super Stay Active Wear Foundation", "14.4", "https://www.douglas.ch/de/p/5010033021?variant=851964", 4, 4);
INSERT INTO Produkte (Produktname, Preis, Link, HauptkategorieID, KategorieID) VALUES ("Rosé All Day Petal Glow", "19.2", "https://www.douglas.ch/de/p/5003517090?variant=749555", 4, 2);
INSERT INTO Produkte (Produktname, Preis, Link, HauptkategorieID, KategorieID) VALUES ("The Most Concealer", "21.9", "https://www.douglas.ch/de/p/5010003250?variant=172002", 4, 9);
INSERT INTO Produkte (Produktname, Preis, Link, HauptkategorieID, KategorieID) VALUES ("Big Bronzer", "21.9", "https://www.douglas.ch/de/p/3001054927?variant=733900", 4, 26);
INSERT INTO Produkte (Produktname, Preis, Link, HauptkategorieID, KategorieID) VALUES ("Fruit Kiss Caring Lip Balm", "1.8", "https://www.douglas.ch/de/p/5001651001", 2, 12);
INSERT INTO Produkte (Produktname, Preis, Link, HauptkategorieID, KategorieID) VALUES ("Long Lasting Lipstick", "2.7", "https://www.douglas.ch/de/p/5003289052?variant=738688", 2, 9);
INSERT INTO Produkte (Produktname, Preis, Link, HauptkategorieID, KategorieID) VALUES ("Matte Lipstick", "25.9", "https://www.douglas.ch/de/p/3000047533?variant=883688", 2, 7);
INSERT INTO Produkte (Produktname, Preis, Link, HauptkategorieID, KategorieID) VALUES ("Sheer Lipstick", "30.9", "https://www.douglas.ch/de/p/3000064242?variant=605358", 2, 10);
INSERT INTO Produkte (Produktname, Preis, Link, HauptkategorieID, KategorieID) VALUES ("Joli Rouge", "31.9", "https://www.douglas.ch/de/p/5009847007", 2, 6);
INSERT INTO Produkte (Produktname, Preis, Link, HauptkategorieID, KategorieID) VALUES ("Liquid Artstick", "34.9", "https://www.douglas.ch/de/p/3001035075?variant=954549", 2, 5);
INSERT INTO Produkte (Produktname, Preis, Link, HauptkategorieID, KategorieID) VALUES ("Pure Color Envy Hi-Lustre", "43.9", "https://www.douglas.ch/de/p/5000473001?variant=528252", 2, 7);
INSERT INTO Produkte (Produktname, Preis, Link, HauptkategorieID, KategorieID) VALUES ("Lip Maestro Midi Set", "77.9", "https://www.douglas.ch/de/p/5003423015", 2, 3);
INSERT INTO Produkte (Produktname, Preis, Link, HauptkategorieID, KategorieID) VALUES ("Color Icon Kohl Eyeliner Pencil", "1.68", "https://www.douglas.ch/de/p/3001051379", 1, 8);
INSERT INTO Produkte (Produktname, Preis, Link, HauptkategorieID, KategorieID) VALUES ("24ever Ink Liner", "3.3", "https://www.douglas.ch/de/p/5001609068", 1, 29);
INSERT INTO Produkte (Produktname, Preis, Link, HauptkategorieID, KategorieID) VALUES ("24h Brush Liner", "3.6", "https://www.douglas.ch/de/p/5003076058", 1, 38);
INSERT INTO Produkte (Produktname, Preis, Link, HauptkategorieID, KategorieID) VALUES ("Mega Clear", "4.2", "https://www.douglas.ch/de/p/3001051394", 1, 12);
INSERT INTO Produkte (Produktname, Preis, Link, HauptkategorieID, KategorieID) VALUES ("Intense Mat Eyeliner", "11.9", "https://www.douglas.ch/de/p/5009960002?variant=013777", 1, 36);
INSERT INTO Produkte (Produktname, Preis, Link, HauptkategorieID, KategorieID) VALUES ("Vibeliner Pencil Eyeliner", "17.9", "https://www.douglas.ch/de/p/5010325058?variant=229131", 1, 18);
INSERT INTO Produkte (Produktname, Preis, Link, HauptkategorieID, KategorieID) VALUES ("Ultra Precision Eyeliner", "25.9", "https://www.douglas.ch/de/p/5010385006", 1, 19);
INSERT INTO Produkte (Produktname, Preis, Link, HauptkategorieID, KategorieID) VALUES ("Hypnôse Extra Black LAbsolu de Noir Mascara", "40.9", "https://www.douglas.ch/de/p/5010171006", 1, 12);
INSERT INTO Produkte (Produktname, Preis, Link, HauptkategorieID, KategorieID) VALUES ("Nail Polish", "1.5", "https://www.douglas.ch/de/p/5009922104?variant=027101", 3, 23);
INSERT INTO Produkte (Produktname, Preis, Link, HauptkategorieID, KategorieID) VALUES ("Paintology Nail Polish", "3.6", "https://www.douglas.ch/de/p/5010183008?variant=176871", 3, 2);
INSERT INTO Produkte (Produktname, Preis, Link, HauptkategorieID, KategorieID) VALUES ("Nail Polish Glow", "6", "https://www.douglas.ch/de/p/3001050626?variant=016594", 3, 25);
INSERT INTO Produkte (Produktname, Preis, Link, HauptkategorieID, KategorieID) VALUES ("Gel Effect", "9", "https://www.douglas.ch/de/p/3000063743?variant=729185", 3, 18);
INSERT INTO Produkte (Produktname, Preis, Link, HauptkategorieID, KategorieID) VALUES ("Ferries of Them All Kollektion", "9.5", "https://www.douglas.ch/de/p/5010331021?variant=165496", 3, 17);
INSERT INTO Produkte (Produktname, Preis, Link, HauptkategorieID, KategorieID) VALUES ("Nagellack", "12", "https://www.douglas.ch/de/p/5001914044", 3, 2);
INSERT INTO Produkte (Produktname, Preis, Link, HauptkategorieID, KategorieID) VALUES ("Candy Girl Kollektion", "13.1", "https://www.douglas.ch/de/p/3001054209?variant=091915", 3, 10);
INSERT INTO Produkte (Produktname, Preis, Link, HauptkategorieID, KategorieID) VALUES ("Nailpolish", "15.5", "https://www.douglas.ch/de/p/5002803042?variant=701242", 3, 4);

-- Produktkategorien 

INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (1, 23);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (1, 30);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (1, 65);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (2, 21);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (2, 51);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (2, 59);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (3, 22);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (3, 55);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (3, 63);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (4, 14);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (4, 40);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (4, 69);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (5, 18);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (5, 35);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (5, 63);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (6, 20);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (6, 50);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (6, 58);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (7, 13);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (7, 49);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (7, 63);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (8, 7);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (8, 47);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (8, 69);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (9, 8);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (9, 32);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (9, 58);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (10, 8);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (10, 48);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (10, 58);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (11, 17);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (11, 57);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (11, 64);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (12, 16);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (12, 41);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (12, 63);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (13, 12);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (13, 37);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (13, 66);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (14, 2);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (14, 45);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (14, 70);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (15, 9);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (15, 54);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (15, 60);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (16, 1);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (16, 51);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (16, 68);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (17, 24);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (17, 52);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (17, 63);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (18, 8);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (18, 42);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (18, 67);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (19, 3);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (19, 56);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (19, 63);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (20, 24);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (20, 55);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (20, 65);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (21, 5);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (21, 53);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (21, 63);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (22, 10);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (22, 46);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (22, 65);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (23, 6);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (23, 28);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (23, 63);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (24, 15);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (24, 34);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (24, 60);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (25, 8);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (25, 31);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (25, 58);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (26, 27);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (26, 44);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (26, 62);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (27, 7);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (27, 39);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (27, 69);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (28, 4);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (28, 38);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (28, 69);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (29, 26);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (29, 36);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (29, 60);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (30, 11);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (30, 33);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (30, 61);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (31, 19);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (31, 29);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (31, 65);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (32, 25);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (32, 43);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (32, 61);

 -- Finale Tabelle
 






SELECT * FROM Hauptkategorien;	

SELECT * FROM Kategorien;

SELECT Produkte.ProdukteID, Produkte.Produktname,
Produkte.Preis, Produkte.Link, Hauptkategorien.HauptkategorieID,
Hauptkategorien.Name, Kategorien.KategorieID, Kategorien.Name,
Kategorien.Wert FROM Produkte
INNER JOIN Hauptkategorien
ON Produkte.HauptkategorieID = Hauptkategorien.HauptkategorieID
INNER JOIN Kategorien
ON Produkte.KategorieID = Kategorien.KategorieID;

SELECT * FROM Kunden
INNER JOIN Bestellungen
ON Kunden.KundenID = Bestellungen.KundenID;

SELECT * FROM Bestellungen;	

SELECT * FROM Produkte_Kategorien;	