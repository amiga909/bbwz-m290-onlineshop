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
  Vorname VARCHAR(255) NOT NULL, 
  Nachname VARCHAR(255) NOT NULL, 
  Email VARCHAR(255) NOT NULL, 
  Adresse VARCHAR(255) NOT NULL, 
  PLZ INTEGER(255) NOT NULL, 
  Ort VARCHAR(255) NOT NULL
);
CREATE TABLE Bestellungen (
  ID INTEGER PRIMARY KEY AUTO_INCREMENT NOT NULL UNIQUE, 
  Erstelldatum VARCHAR(255) NOT NULL
);
CREATE TABLE Favoriten (
  ID INTEGER NOT NULL AUTO_INCREMENT PRIMARY KEY, 
  ProdukteID INTEGER(255), 
  KundenID INTEGER(255)
);
-- Hauptkategorien 
INSERT INTO Hauptkategorien (Name) 
VALUES 
  ("Milchschokolade");
INSERT INTO Hauptkategorien (Name) 
VALUES 
  ("Nussschokolade");
INSERT INTO Hauptkategorien (Name) 
VALUES 
  ("Vegan");
INSERT INTO Hauptkategorien (Name) 
VALUES 
  ("Weisse Schokolade");
-- Kategorien 
INSERT INTO Kategorien (Name, Wert) 
VALUES 
  ("Marke", "Cailler");
INSERT INTO Kategorien (Name, Wert) 
VALUES 
  ("Marke", "Chocolate Factory");
INSERT INTO Kategorien (Name, Wert) 
VALUES 
  ("Marke", "Frey");
INSERT INTO Kategorien (Name, Wert) 
VALUES 
  ("Marke", "Halba");
INSERT INTO Kategorien (Name, Wert) 
VALUES 
  ("Marke", "Harrison");
INSERT INTO Kategorien (Name, Wert) 
VALUES 
  ("Marke", "KARUNA CHOCOLATE");
INSERT INTO Kategorien (Name, Wert) 
VALUES 
  ("Marke", "Lindt");
INSERT INTO Kategorien (Name, Wert) 
VALUES 
  ("Marke", "Läderach");
INSERT INTO Kategorien (Name, Wert) 
VALUES 
  ("Marke", "Milka");
INSERT INTO Kategorien (Name, Wert) 
VALUES 
  ("Marke", "Ovomaltine");
INSERT INTO Kategorien (Name, Wert) 
VALUES 
  ("Marke", "SCHÖKI");
INSERT INTO Kategorien (Name, Wert) 
VALUES 
  ("Marke", "South Devon");
INSERT INTO Kategorien (Name, Wert) 
VALUES 
  ("Marke", "Vivani");
INSERT INTO Kategorien (Name, Wert) 
VALUES 
  ("Gewicht", "100g");
INSERT INTO Kategorien (Name, Wert) 
VALUES 
  ("Gewicht", "150g");
INSERT INTO Kategorien (Name, Wert) 
VALUES 
  ("Gewicht", "200g");
INSERT INTO Kategorien (Name, Wert) 
VALUES 
  ("Gewicht", "237g");
INSERT INTO Kategorien (Name, Wert) 
VALUES 
  ("Gewicht", "64g");
INSERT INTO Kategorien (Name, Wert) 
VALUES 
  ("Gewicht", "80g");
INSERT INTO Kategorien (Name, Wert) 
VALUES 
  ("Aroma", "Bitter");
INSERT INTO Kategorien (Name, Wert) 
VALUES 
  ("Aroma", "Salzig");
INSERT INTO Kategorien (Name, Wert) 
VALUES 
  ("Aroma", "Scharf");
INSERT INTO Kategorien (Name, Wert) 
VALUES 
  ("Aroma", "Süss");
INSERT INTO Kategorien (Name, Wert) 
VALUES 
  ("Aroma", "Würzig");
-- Produkte 
INSERT INTO Produkte (
  Produktname, Preis, Link, HauptkategorieID
) 
VALUES 
  (
    "CRESTA Classic", "2.3", "https://www.lindt.ch/de/cresta-tafelschokolade-milch-100g", 
    1
  );
INSERT INTO Produkte (
  Produktname, Preis, Link, HauptkategorieID
) 
VALUES 
  (
    "HELLO Cookie", "3.4", "https://www.lindt.ch/de/hello-tafelschokolade-milch-vegan-cookie-100g", 
    3
  );
INSERT INTO Produkte (
  Produktname, Preis, Link, HauptkategorieID
) 
VALUES 
  (
    "LES GRANDES Caramel-Haselnuss", 
    "3.95", "https://www.lindt.ch/de/les-grandes-tafelschokolade-milch-caramel-haselnuss-150g", 
    2
  );
INSERT INTO Produkte (
  Produktname, Preis, Link, HauptkategorieID
) 
VALUES 
  (
    "Tourist", "1.95", "https://produkte.migros.ch/tourist", 
    2
  );
INSERT INTO Produkte (
  Produktname, Preis, Link, HauptkategorieID
) 
VALUES 
  (
    "Halba Tafelschokolade weiss", "1.95", 
    "https://www.coop.ch/de/lebensmittel/suesses-snacks-superfoods/schokolade-suessigkeiten/tafelschokolade/weiss/halba-tafelschokolade-weiss/p/6638817", 
    4
  );
INSERT INTO Produkte (
  Produktname, Preis, Link, HauptkategorieID
) 
VALUES 
  (
    "Splendor", "2", "https://produkte.migros.ch/splendor", 
    1
  );
INSERT INTO Produkte (
  Produktname, Preis, Link, HauptkategorieID
) 
VALUES 
  (
    "Lindor Tafelschokolade weiss", 
    "2.4", "https://www.coop.ch/de/lebensmittel/suesses-snacks-superfoods/schokolade-suessigkeiten/tafelschokolade/weiss/lindt-lindor-tafelschokolade-weiss/p/3002788?context=search", 
    4
  );
INSERT INTO Produkte (
  Produktname, Preis, Link, HauptkategorieID
) 
VALUES 
  (
    "Tafel Grand Cru Trinidad", "5.5", 
    "https://shop.ch.laderach.com/ch_de/tafeln/tafel-grand-cru-trinidad-80.html", 
    3
  );
INSERT INTO Produkte (
  Produktname, Preis, Link, HauptkategorieID
) 
VALUES 
  (
    "Tafel Weiss", "5.5", "https://shop.ch.laderach.com/ch_de/tafeln/tafel-weiss.html", 
    4
  );
INSERT INTO Produkte (
  Produktname, Preis, Link, HauptkategorieID
) 
VALUES 
  (
    "Flaked Sea Salt Chilli Chocolate", 
    "4.9", "https://www.pepperworldhotshop.com/de/spezialitaeten/chili-schokolade/south-devon-flaked-sea-salt-chilli-chocolate/", 
    3
  );
INSERT INTO Produkte (
  Produktname, Preis, Link, HauptkategorieID
) 
VALUES 
  (
    "Les Délices Noir Croquant", "2.1", 
    "https://produkte.migros.ch/les-delices-noir-croquant", 
    2
  );
INSERT INTO Produkte (
  Produktname, Preis, Link, HauptkategorieID
) 
VALUES 
  (
    "Chocolate Peru Chuncho Pure Dark 100%", 
    "8.5", "", 3
  );
INSERT INTO Produkte (
  Produktname, Preis, Link, HauptkategorieID
) 
VALUES 
  (
    "Orange Chilli Chocolate", "4.9", 
    "", 3
  );
INSERT INTO Produkte (
  Produktname, Preis, Link, HauptkategorieID
) 
VALUES 
  ("Schoko weiß", "1.45", "", 4);
INSERT INTO Produkte (
  Produktname, Preis, Link, HauptkategorieID
) 
VALUES 
  ("Pink Roses", "7.2", "", 3);
INSERT INTO Produkte (
  Produktname, Preis, Link, HauptkategorieID
) 
VALUES 
  ("Salted Peanuts", "7.2", "", 3);
INSERT INTO Produkte (
  Produktname, Preis, Link, HauptkategorieID
) 
VALUES 
  ("Crispy Chocolate", "7.2", "", 3);
INSERT INTO Produkte (
  Produktname, Preis, Link, HauptkategorieID
) 
VALUES 
  ("Coconut Milk", "7.2", "", 3);
INSERT INTO Produkte (
  Produktname, Preis, Link, HauptkategorieID
) 
VALUES 
  (
    "FrischSchoggi™ Früchtemix weiss", 
    "18.75", "", 4
  );
INSERT INTO Produkte (
  Produktname, Preis, Link, HauptkategorieID
) 
VALUES 
  (
    "FrischSchoggi™ Haselnuss Milch", 
    "18.75", "", 2
  );
INSERT INTO Produkte (
  Produktname, Preis, Link, HauptkategorieID
) 
VALUES 
  (
    "FrischSchoggi™ Pisatzie", "15.8", 
    "", 2
  );
INSERT INTO Produkte (
  Produktname, Preis, Link, HauptkategorieID
) 
VALUES 
  (
    "Tafelschokolade Milch", "2.3", "", 
    1
  );
INSERT INTO Produkte (
  Produktname, Preis, Link, HauptkategorieID
) 
VALUES 
  ("Dunkel 60%", "4.5", "", 3);
INSERT INTO Produkte (
  Produktname, Preis, Link, HauptkategorieID
) 
VALUES 
  (
    "Excellence Tafelschokolade Orange Intense", 
    "2.95", "", 3
  );
INSERT INTO Produkte (
  Produktname, Preis, Link, HauptkategorieID
) 
VALUES 
  (
    "Excellence Tafelschokolade Grapefruit Intense", 
    "2.9", "", 3
  );
INSERT INTO Produkte (
  Produktname, Preis, Link, HauptkategorieID
) 
VALUES 
  (
    "Excellence Tafelschokolade Caramel & Fleure de Sel Intense", 
    "2.95", "", 1
  );
INSERT INTO Produkte (
  Produktname, Preis, Link, HauptkategorieID
) 
VALUES 
  (
    "HELLO Tafelschokolade Milch Vegan Salted Caramel", 
    "3.4", "", 3
  );
INSERT INTO Produkte (
  Produktname, Preis, Link, HauptkategorieID
) 
VALUES 
  (
    "Edel Bitter Chilli 70%", "3.3", 
    "", 3
  );
INSERT INTO Produkte (
  Produktname, Preis, Link, HauptkategorieID
) 
VALUES 
  (
    "Ovomaltine Tafelschokolade", "2.35", 
    "", 1
  );
INSERT INTO Produkte (
  Produktname, Preis, Link, HauptkategorieID
) 
VALUES 
  (
    "Curry Milk Chocolate Bar", "4.95", 
    "", 1
  );
-- Produktkategorien 
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) 
VALUES 
  (1, 7);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) 
VALUES 
  (1, 14);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) 
VALUES 
  (1, 23);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) 
VALUES 
  (2, 7);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) 
VALUES 
  (2, 14);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) 
VALUES 
  (2, 23);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) 
VALUES 
  (3, 7);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) 
VALUES 
  (3, 15);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) 
VALUES 
  (3, 23);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) 
VALUES 
  (4, 3);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) 
VALUES 
  (4, 14);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) 
VALUES 
  (4, 23);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) 
VALUES 
  (5, 4);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) 
VALUES 
  (5, 16);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) 
VALUES 
  (5, 23);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) 
VALUES 
  (6, 3);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) 
VALUES 
  (6, 14);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) 
VALUES 
  (6, 23);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) 
VALUES 
  (7, 7);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) 
VALUES 
  (7, 14);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) 
VALUES 
  (7, 23);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) 
VALUES 
  (8, 8);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) 
VALUES 
  (8, 18);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) 
VALUES 
  (8, 20);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) 
VALUES 
  (9, 8);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) 
VALUES 
  (9, 18);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) 
VALUES 
  (9, 23);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) 
VALUES 
  (10, 12);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) 
VALUES 
  (10, 14);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) 
VALUES 
  (10, 22);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) 
VALUES 
  (11, 3);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) 
VALUES 
  (11, 14);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) 
VALUES 
  (11, 23);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) 
VALUES 
  (12, 6);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) 
VALUES 
  (12, 14);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) 
VALUES 
  (12, 20);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) 
VALUES 
  (13, 12);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) 
VALUES 
  (13, 14);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) 
VALUES 
  (13, 22);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) 
VALUES 
  (14, 9);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) 
VALUES 
  (14, 14);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) 
VALUES 
  (14, 23);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) 
VALUES 
  (15, 2);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) 
VALUES 
  (15, 14);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) 
VALUES 
  (15, 23);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) 
VALUES 
  (16, 2);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) 
VALUES 
  (16, 14);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) 
VALUES 
  (16, 21);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) 
VALUES 
  (17, 2);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) 
VALUES 
  (17, 14);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) 
VALUES 
  (17, 23);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) 
VALUES 
  (18, 2);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) 
VALUES 
  (18, 14);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) 
VALUES 
  (18, 23);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) 
VALUES 
  (19, 8);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) 
VALUES 
  (19, 17);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) 
VALUES 
  (19, 23);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) 
VALUES 
  (20, 8);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) 
VALUES 
  (20, 17);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) 
VALUES 
  (20, 23);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) 
VALUES 
  (21, 8);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) 
VALUES 
  (21, 16);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) 
VALUES 
  (21, 23);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) 
VALUES 
  (22, 1);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) 
VALUES 
  (22, 14);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) 
VALUES 
  (22, 23);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) 
VALUES 
  (23, 11);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) 
VALUES 
  (23, 19);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) 
VALUES 
  (23, 20);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) 
VALUES 
  (24, 7);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) 
VALUES 
  (24, 14);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) 
VALUES 
  (24, 20);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) 
VALUES 
  (25, 7);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) 
VALUES 
  (25, 14);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) 
VALUES 
  (25, 20);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) 
VALUES 
  (26, 7);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) 
VALUES 
  (26, 14);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) 
VALUES 
  (26, 21);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) 
VALUES 
  (27, 7);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) 
VALUES 
  (27, 14);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) 
VALUES 
  (27, 21);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) 
VALUES 
  (28, 13);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) 
VALUES 
  (28, 14);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) 
VALUES 
  (28, 22);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) 
VALUES 
  (29, 10);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) 
VALUES 
  (29, 14);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) 
VALUES 
  (29, 23);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) 
VALUES 
  (30, 5);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) 
VALUES 
  (30, 16);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) 
VALUES 
  (30, 24);
-- Kunden
INSERT INTO Kunden (
  Vorname, Nachname, Email, Adresse, 
  PLZ, Ort
) 
VALUES 
  (
    'Lino', 'Lenherr', 'linolenherr@gmail.com', 
    'gosse 4', '6060', 'Sarnen'
  );
-- Favoriten
INSERT INTO Favoriten (ProdukteID, KundenID) 
VALUES 
  (3, 1);




SELECT * FROM Hauptkategorien;	
SELECT * FROM Kategorien;	
SELECT * FROM Produkte;	
SELECT * FROM Produkte_Kategorien;
SELECT * FROM Kunden;
SELECT * FROM Favoriten;


/*Test: Hauptkategorien (Feature 2)*/

SELECT Produkte.Produktname, Produkte.Preis, Hauptkategorien.Name
FROM Produkte, Hauptkategorien
WHERE Produkte.HauptkategorieID = Hauptkategorien.ID;


/*Test: Kategorien (Feature 3)*/

SELECT Produkte.Produktname, Produkte.Preis, Kategorien.Name, Kategorien.Wert
FROM Produkte, Produkte_Kategorien, Kategorien
WHERE Produkte_Kategorien.ProduktID = Produkte.ID
AND Produkte_Kategorien.KategorieID = Kategorien.ID
AND Produkte.ID = 10;