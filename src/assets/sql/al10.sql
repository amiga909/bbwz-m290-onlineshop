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
  ProduktID INTEGER, KategorieID INTEGER
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
  Erstelldatum Date
);
-- 1:n Beziehung "Kunde bestellt Produkte"
CREATE TABLE Kunden_Bestellungen_Produkte (
  ID INTEGER NOT NULL AUTO_INCREMENT PRIMARY KEY, 
  ProduktID INTEGER, KundeID INTEGER, 
  BestellungID INTEGER
);
-- Bewertung
CREATE TABLE Bewertung (
  BewertungID InTEGER NOT NULL AUTO_INCREMENT PRIMARY KEY, 
  KundenID VARCHAR(255), 
  ProdukteID VARCHAR(1255), 
  Bewertung VARCHAR (255)
);
-- Hauptkategorien 
INSERT INTO Hauptkategorien (Name) 
VALUES 
  ("Bracelets");
INSERT INTO Hauptkategorien (Name) 
VALUES 
  ("Collier");
INSERT INTO Hauptkategorien (Name) 
VALUES 
  ("Luxusuhren");
INSERT INTO Hauptkategorien (Name) 
VALUES 
  ("Ringe");
-- Kategorien 
INSERT INTO Kategorien (Name, Wert) 
VALUES 
  ("Marke", "Carl F. Bucherer");
INSERT INTO Kategorien (Name, Wert) 
VALUES 
  ("Marke", "Cartier");
INSERT INTO Kategorien (Name, Wert) 
VALUES 
  ("Marke", "IWC");
INSERT INTO Kategorien (Name, Wert) 
VALUES 
  ("Marke", "Jaeger-Lecoutre");
INSERT INTO Kategorien (Name, Wert) 
VALUES 
  ("Marke", "Longines");
INSERT INTO Kategorien (Name, Wert) 
VALUES 
  ("Marke", "Louis Vuitton");
INSERT INTO Kategorien (Name, Wert) 
VALUES 
  ("Marke", "Piaget");
INSERT INTO Kategorien (Name, Wert) 
VALUES 
  ("Marke", "Rolex");
INSERT INTO Kategorien (Name, Wert) 
VALUES 
  ("Marke", "TAG Heuer");
INSERT INTO Kategorien (Name, Wert) 
VALUES 
  ("Marke", "Tudor");
INSERT INTO Kategorien (Name, Wert) 
VALUES 
  ("Zielgruppe (Mann", "Frau");
INSERT INTO Kategorien (Name, Wert) 
VALUES 
  ("Zielgruppe (Mann", "Mann");
INSERT INTO Kategorien (Name, Wert) 
VALUES 
  (
    "Zielgruppe (Mann", "Mann und Frau"
  );
INSERT INTO Kategorien (Name, Wert) 
VALUES 
  ("Frau und divers)", "gebraucht");
INSERT INTO Kategorien (Name, Wert) 
VALUES 
  ("Frau und divers)", "neu");
INSERT INTO Kategorien (Name, Wert) 
VALUES 
  ("Zustand (neu", "Edelstahl");
INSERT INTO Kategorien (Name, Wert) 
VALUES 
  ("Zustand (neu", "Gelbgold");
INSERT INTO Kategorien (Name, Wert) 
VALUES 
  (
    "Zustand (neu", "Gelbgold & Diamanten"
  );
INSERT INTO Kategorien (Name, Wert) 
VALUES 
  ("Zustand (neu", "Metall");
INSERT INTO Kategorien (Name, Wert) 
VALUES 
  ("Zustand (neu", "Roségld");
INSERT INTO Kategorien (Name, Wert) 
VALUES 
  ("Zustand (neu", "Weissgold");
INSERT INTO Kategorien (Name, Wert) 
VALUES 
  (
    "gebraucht)", "https://de.louisvuitton.com/deu-de/produkte/blooming-strass-halskette-nvprod1670049v"
  );
INSERT INTO Kategorien (Name, Wert) 
VALUES 
  (
    "gebraucht)", "https://www.bucherer.com/ch/de/rolex/uhren/cosmograph-daytona/1285-274-9.html"
  );
INSERT INTO Kategorien (Name, Wert) 
VALUES 
  (
    "gebraucht)", "https://www.bucherer.com/ch/de/rolex/uhren/cosmograph-daytona/1342-094-5.html#model-availability"
  );
INSERT INTO Kategorien (Name, Wert) 
VALUES 
  (
    "gebraucht)", "https://www.bucherer.com/ch/de/rolex/uhren/cosmograph-daytona/1342-302-4.html"
  );
INSERT INTO Kategorien (Name, Wert) 
VALUES 
  (
    "gebraucht)", "https://www.bucherer.com/ch/de/rolex/uhren/day-date/1285-251-2.html"
  );
INSERT INTO Kategorien (Name, Wert) 
VALUES 
  (
    "gebraucht)", "https://www.bucherer.com/ch/de/rolex/uhren/lady-datejust/1307-962-6.html"
  );
INSERT INTO Kategorien (Name, Wert) 
VALUES 
  (
    "gebraucht)", "https://www.bucherer.com/ch/de/rolex/uhren/oyster-perpetual/1335-906-1.html"
  );
INSERT INTO Kategorien (Name, Wert) 
VALUES 
  (
    "gebraucht)", "https://www.bucherer.com/ch/de/rolex/uhren/oyster-perpetual/1335-924-3.html"
  );
INSERT INTO Kategorien (Name, Wert) 
VALUES 
  (
    "gebraucht)", "https://www.bucherer.com/ch/de/rolex/uhren/submariner/1335-873-9.html"
  );
INSERT INTO Kategorien (Name, Wert) 
VALUES 
  (
    "gebraucht)", "https://www.bucherer.com/ch/de/uhren/carl-f-bucherer/manero/0169-078-8.html"
  );
INSERT INTO Kategorien (Name, Wert) 
VALUES 
  (
    "gebraucht)", "https://www.bucherer.com/ch/de/uhren/iwc-schaffhausen/portofino/1280-276-1.html"
  );
INSERT INTO Kategorien (Name, Wert) 
VALUES 
  (
    "gebraucht)", "https://www.bucherer.com/ch/de/uhren/iwc-schaffhausen/portugieser/1305-063-2.html"
  );
INSERT INTO Kategorien (Name, Wert) 
VALUES 
  (
    "gebraucht)", "https://www.bucherer.com/ch/de/uhren/jaeger-lecoultre/master/1330-016-6.html"
  );
INSERT INTO Kategorien (Name, Wert) 
VALUES 
  (
    "gebraucht)", "https://www.bucherer.com/ch/de/uhren/longines/hydroconquest/1306-840-3.html"
  );
INSERT INTO Kategorien (Name, Wert) 
VALUES 
  (
    "gebraucht)", "https://www.bucherer.com/ch/de/uhren/longines/longines-spirit/1331-458-2.html"
  );
INSERT INTO Kategorien (Name, Wert) 
VALUES 
  (
    "gebraucht)", "https://www.bucherer.com/ch/de/uhren/tag-heuer/carrera/1340-210-3.html"
  );
INSERT INTO Kategorien (Name, Wert) 
VALUES 
  (
    "gebraucht)", "https://www.bucherer.com/ch/de/uhren/tag-heuer/new-formula-1/1307-678-5.html"
  );
INSERT INTO Kategorien (Name, Wert) 
VALUES 
  (
    "gebraucht)", "https://www.bucherer.com/ch/de/uhren/tudor/black-bay/1342-545-1.html"
  );
INSERT INTO Kategorien (Name, Wert) 
VALUES 
  (
    "gebraucht)", "https://www.cartier.com/de-ch/diamants-legers-collier-xs_cod25458910981581795.html?gclid=CjwKCAiAs92MBhAXEiwAXTi2515XAuSUelAu7kaEd_QK19PQRkdc1oqieaIUoU36YGpYTm6JFR6R4BoC4IMQAvD_BwE&gclsrc=aw.ds"
  );
INSERT INTO Kategorien (Name, Wert) 
VALUES 
  (
    "gebraucht)", "https://www.cartier.com/de-ch/love-armreif_cod25372685655709597.html#dept=EU_Love"
  );
INSERT INTO Kategorien (Name, Wert) 
VALUES 
  (
    "gebraucht)", "https://www.cartier.com/de-ch/love-ring_cod25458910981298326.html#dept=EU_Rings_Love"
  );
INSERT INTO Kategorien (Name, Wert) 
VALUES 
  (
    "gebraucht)", "https://www.iwc.com/ch/de/watch-collections/pilot-watches/iw329304-big-pilots-watch-43.html"
  );
INSERT INTO Kategorien (Name, Wert) 
VALUES 
  (
    "gebraucht)", "https://www.piaget.com/ch-de/jewelry/piaget-sunlight/rose-gold-sapphire-diamond-necklace-g37r5700"
  );
-- Produkte 
INSERT INTO Produkte (
  Produktname, Preis, Link, HauptkategorieID
) 
VALUES 
  ("Submariner", "7700", "", 3);
INSERT INTO Produkte (
  Produktname, Preis, Link, HauptkategorieID
) 
VALUES 
  ("Daydate", "37400", "", 3);
INSERT INTO Produkte (
  Produktname, Preis, Link, HauptkategorieID
) 
VALUES 
  ("Love Armreif", "7100", "", 1);
INSERT INTO Produkte (
  Produktname, Preis, Link, HauptkategorieID
) 
VALUES 
  ("Love Ring", "1750", "", 4);
INSERT INTO Produkte (
  Produktname, Preis, Link, HauptkategorieID
) 
VALUES 
  (
    "Collier Blooming Stall", "475", 
    "", 2
  );
INSERT INTO Produkte (
  Produktname, Preis, Link, HauptkategorieID
) 
VALUES 
  (
    "Big Pilots Watch 43", "9900", "", 
    3
  );
INSERT INTO Produkte (
  Produktname, Preis, Link, HauptkategorieID
) 
VALUES 
  (
    "Diamants Légers ColIier XS", "880", 
    "", 2
  );
INSERT INTO Produkte (
  Produktname, Preis, Link, HauptkategorieID
) 
VALUES 
  ("Submariner", "7700", "", 3);
INSERT INTO Produkte (
  Produktname, Preis, Link, HauptkategorieID
) 
VALUES 
  ("Daydate", "37400", "", 3);
INSERT INTO Produkte (
  Produktname, Preis, Link, HauptkategorieID
) 
VALUES 
  ("Love Armreif", "7100", "", 1);
INSERT INTO Produkte (
  Produktname, Preis, Link, HauptkategorieID
) 
VALUES 
  ("Love Ring", "1750", "", 4);
INSERT INTO Produkte (
  Produktname, Preis, Link, HauptkategorieID
) 
VALUES 
  (
    "Collier Blooming Stall", "475", 
    "", 2
  );
INSERT INTO Produkte (
  Produktname, Preis, Link, HauptkategorieID
) 
VALUES 
  (
    "Big Pilots Watch 43", "9900", "", 
    3
  );
INSERT INTO Produkte (
  Produktname, Preis, Link, HauptkategorieID
) 
VALUES 
  (
    "Diamants Légers ColIier XS", "880", 
    "", 2
  );
INSERT INTO Produkte (
  Produktname, Preis, Link, HauptkategorieID
) 
VALUES 
  (
    "COLLIER PIAGET SUNLIGHT", "3450", 
    "", 2
  );
INSERT INTO Produkte (
  Produktname, Preis, Link, HauptkategorieID
) 
VALUES 
  (
    "COSMOGRAPH DAYTONA", "32500", "", 
    3
  );
INSERT INTO Produkte (
  Produktname, Preis, Link, HauptkategorieID
) 
VALUES 
  (
    "COSMOGRAPH DAYTONA", "39100", "", 
    3
  );
INSERT INTO Produkte (
  Produktname, Preis, Link, HauptkategorieID
) 
VALUES 
  (
    "COSMOGRAPH DAYTONA", "12500", "", 
    3
  );
INSERT INTO Produkte (
  Produktname, Preis, Link, HauptkategorieID
) 
VALUES 
  (
    "OYSTER PERPETUAL 41", "5600", "", 
    3
  );
INSERT INTO Produkte (
  Produktname, Preis, Link, HauptkategorieID
) 
VALUES 
  (
    "OYSTER PERPETUAL 36", "5300", "", 
    3
  );
INSERT INTO Produkte (
  Produktname, Preis, Link, HauptkategorieID
) 
VALUES 
  ("LADY-DATEJUST", "36400", "", 3);
INSERT INTO Produkte (
  Produktname, Preis, Link, HauptkategorieID
) 
VALUES 
  ("Black Bay", "4560", "", 3);
INSERT INTO Produkte (
  Produktname, Preis, Link, HauptkategorieID
) 
VALUES 
  (
    "TAG Heuer Chronograph", "5700", 
    "", 3
  );
INSERT INTO Produkte (
  Produktname, Preis, Link, HauptkategorieID
) 
VALUES 
  ("HydroConquest", "1500", "", 3);
INSERT INTO Produkte (
  Produktname, Preis, Link, HauptkategorieID
) 
VALUES 
  ("Spirit", "2900", "", 3);
INSERT INTO Produkte (
  Produktname, Preis, Link, HauptkategorieID
) 
VALUES 
  (
    "Manero Tourbillon Double Peripheral", 
    "64500", "", 3
  );
INSERT INTO Produkte (
  Produktname, Preis, Link, HauptkategorieID
) 
VALUES 
  (
    "Portugieser Chronograph Classic", 
    "21500", "", 3
  );
INSERT INTO Produkte (
  Produktname, Preis, Link, HauptkategorieID
) 
VALUES 
  (
    "Master Control Calendar 40mm", 
    "11100", "", 3
  );
INSERT INTO Produkte (
  Produktname, Preis, Link, HauptkategorieID
) 
VALUES 
  (
    "Portofino Automatic", "4900", "", 
    3
  );
INSERT INTO Produkte (
  Produktname, Preis, Link, HauptkategorieID
) 
VALUES 
  ("New Formula 1", "1650", "", 3);
-- Produktkategorien 
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) 
VALUES 
  (1, 8);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) 
VALUES 
  (1, 13);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) 
VALUES 
  (1, 15);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) 
VALUES 
  (1, 16);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) 
VALUES 
  (1, 30);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) 
VALUES 
  (2, 8);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) 
VALUES 
  (2, 13);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) 
VALUES 
  (2, 15);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) 
VALUES 
  (2, 21);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) 
VALUES 
  (2, 26);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) 
VALUES 
  (3, 2);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) 
VALUES 
  (3, 13);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) 
VALUES 
  (3, 15);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) 
VALUES 
  (3, 21);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) 
VALUES 
  (3, 41);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) 
VALUES 
  (4, 2);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) 
VALUES 
  (4, 13);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) 
VALUES 
  (4, 15);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) 
VALUES 
  (4, 17);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) 
VALUES 
  (4, 42);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) 
VALUES 
  (5, 6);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) 
VALUES 
  (5, 11);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) 
VALUES 
  (5, 15);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) 
VALUES 
  (5, 19);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) 
VALUES 
  (5, 22);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) 
VALUES 
  (6, 3);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) 
VALUES 
  (6, 12);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) 
VALUES 
  (6, 15);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) 
VALUES 
  (6, 16);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) 
VALUES 
  (6, 43);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) 
VALUES 
  (7, 2);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) 
VALUES 
  (7, 11);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) 
VALUES 
  (7, 15);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) 
VALUES 
  (7, 17);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) 
VALUES 
  (7, 40);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) 
VALUES 
  (8, 8);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) 
VALUES 
  (8, 13);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) 
VALUES 
  (8, 14);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) 
VALUES 
  (8, 16);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) 
VALUES 
  (8, 30);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) 
VALUES 
  (9, 8);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) 
VALUES 
  (9, 13);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) 
VALUES 
  (9, 14);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) 
VALUES 
  (9, 21);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) 
VALUES 
  (9, 26);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) 
VALUES 
  (10, 2);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) 
VALUES 
  (10, 13);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) 
VALUES 
  (10, 14);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) 
VALUES 
  (10, 21);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) 
VALUES 
  (10, 41);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) 
VALUES 
  (11, 2);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) 
VALUES 
  (11, 13);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) 
VALUES 
  (11, 14);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) 
VALUES 
  (11, 17);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) 
VALUES 
  (11, 42);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) 
VALUES 
  (12, 6);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) 
VALUES 
  (12, 11);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) 
VALUES 
  (12, 14);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) 
VALUES 
  (12, 19);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) 
VALUES 
  (12, 22);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) 
VALUES 
  (13, 3);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) 
VALUES 
  (13, 12);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) 
VALUES 
  (13, 14);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) 
VALUES 
  (13, 16);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) 
VALUES 
  (13, 43);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) 
VALUES 
  (14, 2);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) 
VALUES 
  (14, 11);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) 
VALUES 
  (14, 14);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) 
VALUES 
  (14, 17);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) 
VALUES 
  (14, 40);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) 
VALUES 
  (15, 7);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) 
VALUES 
  (15, 11);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) 
VALUES 
  (15, 15);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) 
VALUES 
  (15, 20);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) 
VALUES 
  (15, 44);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) 
VALUES 
  (16, 8);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) 
VALUES 
  (16, 13);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) 
VALUES 
  (16, 15);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) 
VALUES 
  (16, 21);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) 
VALUES 
  (16, 24);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) 
VALUES 
  (17, 8);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) 
VALUES 
  (17, 13);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) 
VALUES 
  (17, 15);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) 
VALUES 
  (17, 17);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) 
VALUES 
  (17, 25);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) 
VALUES 
  (18, 8);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) 
VALUES 
  (18, 13);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) 
VALUES 
  (18, 15);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) 
VALUES 
  (18, 16);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) 
VALUES 
  (18, 23);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) 
VALUES 
  (19, 8);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) 
VALUES 
  (19, 13);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) 
VALUES 
  (19, 15);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) 
VALUES 
  (19, 16);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) 
VALUES 
  (19, 29);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) 
VALUES 
  (20, 8);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) 
VALUES 
  (20, 11);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) 
VALUES 
  (20, 15);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) 
VALUES 
  (20, 16);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) 
VALUES 
  (20, 28);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) 
VALUES 
  (21, 8);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) 
VALUES 
  (21, 11);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) 
VALUES 
  (21, 15);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) 
VALUES 
  (21, 18);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) 
VALUES 
  (21, 27);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) 
VALUES 
  (22, 10);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) 
VALUES 
  (22, 12);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) 
VALUES 
  (22, 15);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) 
VALUES 
  (22, 16);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) 
VALUES 
  (22, 39);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) 
VALUES 
  (23, 9);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) 
VALUES 
  (23, 12);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) 
VALUES 
  (23, 15);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) 
VALUES 
  (23, 16);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) 
VALUES 
  (23, 37);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) 
VALUES 
  (24, 5);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) 
VALUES 
  (24, 12);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) 
VALUES 
  (24, 15);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) 
VALUES 
  (24, 16);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) 
VALUES 
  (24, 35);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) 
VALUES 
  (25, 5);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) 
VALUES 
  (25, 12);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) 
VALUES 
  (25, 15);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) 
VALUES 
  (25, 16);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) 
VALUES 
  (25, 36);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) 
VALUES 
  (26, 1);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) 
VALUES 
  (26, 12);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) 
VALUES 
  (26, 15);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) 
VALUES 
  (26, 20);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) 
VALUES 
  (26, 31);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) 
VALUES 
  (27, 3);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) 
VALUES 
  (27, 12);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) 
VALUES 
  (27, 15);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) 
VALUES 
  (27, 17);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) 
VALUES 
  (27, 33);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) 
VALUES 
  (28, 4);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) 
VALUES 
  (28, 12);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) 
VALUES 
  (28, 15);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) 
VALUES 
  (28, 16);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) 
VALUES 
  (28, 34);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) 
VALUES 
  (29, 3);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) 
VALUES 
  (29, 12);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) 
VALUES 
  (29, 15);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) 
VALUES 
  (29, 16);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) 
VALUES 
  (29, 32);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) 
VALUES 
  (30, 9);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) 
VALUES 
  (30, 11);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) 
VALUES 
  (30, 15);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) 
VALUES 
  (30, 16);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) 
VALUES 
  (30, 38);

 


SELECT * FROM Hauptkategorien;	
SELECT * FROM Kategorien;	
SELECT * FROM Produkte;	
SELECT * FROM Produkte_Kategorien;	


SELECT Produkte.Produktname, Produkte.Preis, Hauptkategorien.Name

FROM Produkte, Hauptkategorien

WHERE Produkte. HauptkategorieID = Hauptkategorien.ID;



SELECT Produkte.Produktname, Produkte.Preis, Kategorien.Wert, Kategorien.Name
FROM Produkte, Produkte_Kategorien, Kategorien
WHERE Produkte_Kategorien.ProduktID = Produkte.ID
AND Produkte_Kategorien.KategorieID = Kategorien.ID
AND Produkte.ID = 10;
