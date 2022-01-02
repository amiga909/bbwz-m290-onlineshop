CREATE TABLE Hauptkategorien (
  ID INTEGER NOT NULL AUTO_INCREMENT PRIMARY KEY, 
  Name VARCHAR(255) NOT NULL UNIQUE
);
CREATE TABLE Produkte (
  ID INTEGER NOT NULL AUTO_INCREMENT PRIMARY KEY, 
  Produktname VARCHAR(512) NOT NULL, 
  Preis INTEGER(10), 
  Link VARCHAR(1024), 
  HauptkategorieID INTEGER, 
  FOREIGN KEY (HauptkategorieID) REFERENCES Hauptkategorien(ID)
);
CREATE TABLE Kategorien (
  ID INTEGER NOT NULL AUTO_INCREMENT PRIMARY KEY, 
  Name VARCHAR(255) NOT NULL, 
  Wert VARCHAR(255) NOT NULL
);
CREATE TABLE Kunden (
  ID INTEGER NOT NULL AUTO_INCREMENT PRIMARY KEY, 
  Name VARCHAR (255) NOT NULL, 
  Nachname VARCHAR (255) NOT NULL, 
  Lieferadresse VARCHAR (255) NOT NULL, 
  Email_Adresse VARCHAR (255) NOT NULL UNIQUE
);
CREATE TABLE Bestellungen (
  ID INTEGER NOT NULL AUTO_INCREMENT PRIMARY KEY, 
  Erstelldatum VARCHAR (255) NOT NULL, 
  KundenID INTEGER NOT NULL, 
  FOREIGN KEY (KundenID) REFERENCES Kunden(ID)
);
CREATE TABLE Bewertungen (
  ID INTEGER NOT NULL AUTO_INCREMENT PRIMARY KEY, 
  Bewertungs_Text VARCHAR (255) NOT NULL, 
  Rating VARCHAR (255) NOT NULL, 
  Erstelldatum VARCHAR (255) NOT NULL, 
  KundenID INTEGER NOT NULL, 
  ProduktID INTEGER NOT NULL, 
  FOREIGN KEY (KundenID) REFERENCES Kunden(ID), 
  FOREIGN KEY (ProduktID) REFERENCES Produkte(ID)
);
-- n:m Beziehung "Kategorien beschreiben Produkte"
CREATE TABLE Produkte_Kategorien (
  ID INTEGER NOT NULL AUTO_INCREMENT PRIMARY KEY, 
  ProduktID INTEGER NOT NULL, 
  KategorieID INTEGER NOT NULL, 
  FOREIGN KEY (ProduktID) REFERENCES Produkte(ID), 
  FOREIGN KEY (KategorieID) REFERENCES Kategorien(ID)
);
-- n:m Beziehung "Bestellungen bestehen aus Produkte"
CREATE TABLE Produkte_Bestellungen (
  ID INTEGER NOT NULL AUTO_INCREMENT PRIMARY KEY, 
  ProduktID INTEGER NOT NULL, 
  BestellungID INTEGER NOT NULL, 
  FOREIGN KEY (ProduktID) REFERENCES Produkte(ID), 
  FOREIGN KEY (BestellungID) REFERENCES Bestellungen(ID)
);
-- Indexierung
CREATE INDEX index_Produkte ON Produkte (Produktname);
CREATE INDEX index_Kunde ON Kunden (Name, Nachname);
CREATE INDEX index_Kategorien ON Kategorien (Name);
-- Hauptkategorien 
INSERT INTO Hauptkategorien (Name) 
VALUES 
  ("Hemden");
INSERT INTO Hauptkategorien (Name) 
VALUES 
  ("Hosen");
INSERT INTO Hauptkategorien (Name) 
VALUES 
  ("Jacken");
INSERT INTO Hauptkategorien (Name) 
VALUES 
  ("Sweatshirts");
INSERT INTO Hauptkategorien (Name) 
VALUES 
  ("T-Shirts");
-- Kategorien 
INSERT INTO Kategorien (Name, Wert) 
VALUES 
  ("Grösse", "L");
INSERT INTO Kategorien (Name, Wert) 
VALUES 
  ("Grösse", "M");
INSERT INTO Kategorien (Name, Wert) 
VALUES 
  ("Grösse", "S");
INSERT INTO Kategorien (Name, Wert) 
VALUES 
  ("Farbe", "Beige");
INSERT INTO Kategorien (Name, Wert) 
VALUES 
  ("Farbe", "Blau");
INSERT INTO Kategorien (Name, Wert) 
VALUES 
  ("Farbe", "Gelb");
INSERT INTO Kategorien (Name, Wert) 
VALUES 
  ("Farbe", "Grau");
INSERT INTO Kategorien (Name, Wert) 
VALUES 
  ("Farbe", "Grün");
INSERT INTO Kategorien (Name, Wert) 
VALUES 
  ("Farbe", "Rot");
INSERT INTO Kategorien (Name, Wert) 
VALUES 
  ("Farbe", "Schwarz");
INSERT INTO Kategorien (Name, Wert) 
VALUES 
  ("Farbe", "Weiss");
INSERT INTO Kategorien (Name, Wert) 
VALUES 
  ("Material", "Baumwolle");
INSERT INTO Kategorien (Name, Wert) 
VALUES 
  ("Material", "Polyester");
-- Produkte 
INSERT INTO Produkte (
  Produktname, Preis, Link, HauptkategorieID
) 
VALUES 
  (
    "Must-have Hemd", "50", "https://www.jackjones.com/ch/de/jj/bekleidung/hemden/must-have-hemd-12138115.html?cgid=jj-shirts&dwvar_colorPattern=12138115_BlackDenim_628830", 
    1
  );
INSERT INTO Produkte (
  Produktname, Preis, Link, HauptkategorieID
) 
VALUES 
  (
    "Must-have Hemd", "50", "https://www.jackjones.com/ch/de/jj/bekleidung/hemden/must-have-hemd-12138115.html?cgid=jj-shirts&dwvar_colorPattern=12138115_BlackDenim_628830", 
    1
  );
INSERT INTO Produkte (
  Produktname, Preis, Link, HauptkategorieID
) 
VALUES 
  (
    "Must-have Hemd", "50", "https://www.jackjones.com/ch/de/jj/bekleidung/hemden/must-have-hemd-12138115.html?cgid=jj-shirts&dwvar_colorPattern=12138115_BlackDenim_628830", 
    1
  );
INSERT INTO Produkte (
  Produktname, Preis, Link, HauptkategorieID
) 
VALUES 
  (
    "Marco Connor Akm Chino", "80", "https://www.jackjones.com/ch/de/jj/bekleidung/hosen/stretchhosen/marco-connor-akm-chino-12193137.html?cgid=jj-trousers-stretch&dwvar_colorPattern=12193137_TrueNavy", 
    2
  );
INSERT INTO Produkte (
  Produktname, Preis, Link, HauptkategorieID
) 
VALUES 
  (
    "Marco Connor Akm Chino", "80", "https://www.jackjones.com/ch/de/jj/bekleidung/hosen/stretchhosen/marco-connor-akm-chino-12193137.html?cgid=jj-trousers-stretch&dwvar_colorPattern=12193137_TrueNavy", 
    2
  );
INSERT INTO Produkte (
  Produktname, Preis, Link, HauptkategorieID
) 
VALUES 
  (
    "Marco Connor Akm Chino", "80", "https://www.jackjones.com/ch/de/jj/bekleidung/hosen/stretchhosen/marco-connor-akm-chino-12193137.html?cgid=jj-trousers-stretch&dwvar_colorPattern=12193137_TrueNavy", 
    2
  );
INSERT INTO Produkte (
  Produktname, Preis, Link, HauptkategorieID
) 
VALUES 
  (
    "Paul Flake Cargohose", "45", "https://www.jackjones.com/ch/de/jj/bekleidung/hosen/cargohosen/paul-flake-akm-542-cargohose-12199046.html?cgid=jj-trousers-cargo&dwvar_colorPattern=12199046_Cinnamon", 
    2
  );
INSERT INTO Produkte (
  Produktname, Preis, Link, HauptkategorieID
) 
VALUES 
  (
    "Paul Flake Cargohose", "45", "https://www.jackjones.com/ch/de/jj/bekleidung/hosen/cargohosen/paul-flake-akm-542-cargohose-12199046.html?cgid=jj-trousers-cargo&dwvar_colorPattern=12199046_Cinnamon", 
    2
  );
INSERT INTO Produkte (
  Produktname, Preis, Link, HauptkategorieID
) 
VALUES 
  (
    "Paul Flake Cargohose", "45", "https://www.jackjones.com/ch/de/jj/bekleidung/hosen/cargohosen/paul-flake-akm-542-cargohose-12199046.html?cgid=jj-trousers-cargo&dwvar_colorPattern=12199046_Cinnamon", 
    2
  );
INSERT INTO Produkte (
  Produktname, Preis, Link, HauptkategorieID
) 
VALUES 
  (
    "Will Sweathose", "20", "https://www.jackjones.com/ch/de/jj/bekleidung/hosen/jogginghosen/will-sweathose-12167615.html?cgid=jj-trousers-sweat&dwvar_colorPattern=12167615_Asphalt", 
    2
  );
INSERT INTO Produkte (
  Produktname, Preis, Link, HauptkategorieID
) 
VALUES 
  (
    "Will Sweathose", "20", "https://www.jackjones.com/ch/de/jj/bekleidung/hosen/jogginghosen/will-sweathose-12167615.html?cgid=jj-trousers-sweat&dwvar_colorPattern=12167615_Asphalt", 
    2
  );
INSERT INTO Produkte (
  Produktname, Preis, Link, HauptkategorieID
) 
VALUES 
  (
    "Will Sweathose", "20", "https://www.jackjones.com/ch/de/jj/bekleidung/hosen/jogginghosen/will-sweathose-12167615.html?cgid=jj-trousers-sweat&dwvar_colorPattern=12167615_Asphalt", 
    2
  );
INSERT INTO Produkte (
  Produktname, Preis, Link, HauptkategorieID
) 
VALUES 
  (
    "Wattierte Jacke", "80", "https://www.jackjones.com/ch/de/jj/bekleidung/jacken/wattierte-jacken/kurz-wattierte-jacke-12193188.html?cgid=jj-outerwear-puffer&dwvar_colorPattern=12193188_Moonbeam", 
    3
  );
INSERT INTO Produkte (
  Produktname, Preis, Link, HauptkategorieID
) 
VALUES 
  (
    "Wattierte Jacke", "80", "https://www.jackjones.com/ch/de/jj/bekleidung/jacken/wattierte-jacken/kurz-wattierte-jacke-12193188.html?cgid=jj-outerwear-puffer&dwvar_colorPattern=12193188_Moonbeam", 
    3
  );
INSERT INTO Produkte (
  Produktname, Preis, Link, HauptkategorieID
) 
VALUES 
  (
    "Wattierte Jacke", "80", "https://www.jackjones.com/ch/de/jj/bekleidung/jacken/wattierte-jacken/kurz-wattierte-jacke-12193188.html?cgid=jj-outerwear-puffer&dwvar_colorPattern=12193188_Moonbeam", 
    3
  );
INSERT INTO Produkte (
  Produktname, Preis, Link, HauptkategorieID
) 
VALUES 
  (
    "Klassisch Parka", "100", "https://www.jackjones.com/ch/de/jj/bekleidung/jacken/parkas/klassisch-parka-12190042.html?cgid=jj-outerwear-parka&dwvar_colorPattern=12190042_ForestNight", 
    3
  );
INSERT INTO Produkte (
  Produktname, Preis, Link, HauptkategorieID
) 
VALUES 
  (
    "Klassisch Parka", "100", "https://www.jackjones.com/ch/de/jj/bekleidung/jacken/parkas/klassisch-parka-12190042.html?cgid=jj-outerwear-parka&dwvar_colorPattern=12190042_ForestNight", 
    3
  );
INSERT INTO Produkte (
  Produktname, Preis, Link, HauptkategorieID
) 
VALUES 
  (
    "Klassisch Parka", "100", "https://www.jackjones.com/ch/de/jj/bekleidung/jacken/parkas/klassisch-parka-12190042.html?cgid=jj-outerwear-parka&dwvar_colorPattern=12190042_ForestNight", 
    3
  );
INSERT INTO Produkte (
  Produktname, Preis, Link, HauptkategorieID
) 
VALUES 
  (
    "Schlichter Hoodie", "40", "https://www.jackjones.com/ch/de/jj/bekleidung/sweatshirts/hoodies/schlichter-hoodie-12161145.html?cgid=jj-sweatshirts-hoodies&dwvar_colorPattern=12161145_Crockery_724572", 
    4
  );
INSERT INTO Produkte (
  Produktname, Preis, Link, HauptkategorieID
) 
VALUES 
  (
    "Schlichter Hoodie", "40", "https://www.jackjones.com/ch/de/jj/bekleidung/sweatshirts/hoodies/schlichter-hoodie-12161145.html?cgid=jj-sweatshirts-hoodies&dwvar_colorPattern=12161145_Crockery_724572", 
    4
  );
INSERT INTO Produkte (
  Produktname, Preis, Link, HauptkategorieID
) 
VALUES 
  (
    "Schlichter Hoodie", "40", "https://www.jackjones.com/ch/de/jj/bekleidung/sweatshirts/hoodies/schlichter-hoodie-12161145.html?cgid=jj-sweatshirts-hoodies&dwvar_colorPattern=12161145_Crockery_724572", 
    4
  );
INSERT INTO Produkte (
  Produktname, Preis, Link, HauptkategorieID
) 
VALUES 
  (
    "Relaxed Fit Sweatshirt", "35", "https://www.jackjones.com/ch/de/jj/bekleidung/sweatshirts/rundhalssweatshirts/relaxed-fit-sweatshirt-12193487.html?cgid=jj-sweatshirts-crewneck&dwvar_colorPattern=12193487_Asphalt_874631", 
    4
  );
INSERT INTO Produkte (
  Produktname, Preis, Link, HauptkategorieID
) 
VALUES 
  (
    "Relaxed Fit Sweatshirt", "35", "https://www.jackjones.com/ch/de/jj/bekleidung/sweatshirts/rundhalssweatshirts/relaxed-fit-sweatshirt-12193487.html?cgid=jj-sweatshirts-crewneck&dwvar_colorPattern=12193487_Asphalt_874631", 
    4
  );
INSERT INTO Produkte (
  Produktname, Preis, Link, HauptkategorieID
) 
VALUES 
  (
    "Relaxed Fit Sweatshirt", "35", "https://www.jackjones.com/ch/de/jj/bekleidung/sweatshirts/rundhalssweatshirts/relaxed-fit-sweatshirt-12193487.html?cgid=jj-sweatshirts-crewneck&dwvar_colorPattern=12193487_Asphalt_874631", 
    4
  );
INSERT INTO Produkte (
  Produktname, Preis, Link, HauptkategorieID
) 
VALUES 
  (
    "Bio-Baumwoll T-Shirt", "15", "https://www.jackjones.com/ch/de/jj/bekleidung/t-shirts/basic-t-shirts/bio-baumwoll-t-shirt-12156101.html", 
    5
  );
INSERT INTO Produkte (
  Produktname, Preis, Link, HauptkategorieID
) 
VALUES 
  (
    "Bio-Baumwoll T-Shirt", "15", "https://www.jackjones.com/ch/de/jj/bekleidung/t-shirts/basic-t-shirts/bio-baumwoll-t-shirt-12156101.html", 
    5
  );
INSERT INTO Produkte (
  Produktname, Preis, Link, HauptkategorieID
) 
VALUES 
  (
    "Bio-Baumwoll T-Shirt", "15", "https://www.jackjones.com/ch/de/jj/bekleidung/t-shirts/basic-t-shirts/bio-baumwoll-t-shirt-12156101.html", 
    5
  );
INSERT INTO Produkte (
  Produktname, Preis, Link, HauptkategorieID
) 
VALUES 
  (
    "Weichnachts T-Shirt", "60", "https://www.jackjones.com/ch/de/jj/bekleidung/t-shirts/bedruckte-t-shirts/weihnachtsprint--t-shirt-12198532.html?cgid=jj-tshirts-print&dwvar_colorPattern=12198532_Black_895781", 
    5
  );
INSERT INTO Produkte (
  Produktname, Preis, Link, HauptkategorieID
) 
VALUES 
  (
    "Weichnachts T-Shirt", "60", "https://www.jackjones.com/ch/de/jj/bekleidung/t-shirts/bedruckte-t-shirts/weihnachtsprint--t-shirt-12198532.html?cgid=jj-tshirts-print&dwvar_colorPattern=12198532_Black_895781", 
    5
  );
INSERT INTO Produkte (
  Produktname, Preis, Link, HauptkategorieID
) 
VALUES 
  (
    "Weichnachts T-Shirt", "60", "https://www.jackjones.com/ch/de/jj/bekleidung/t-shirts/bedruckte-t-shirts/weihnachtsprint--t-shirt-12198532.html?cgid=jj-tshirts-print&dwvar_colorPattern=12198532_Black_895781", 
    5
  );
INSERT INTO Produkte (
  Produktname, Preis, Link, HauptkategorieID
) 
VALUES 
  (
    "Slim-Fit Twill Hemd", "50", "https://www.jackjones.com/ch/de/jj/bekleidung/hemden/langarmhemden/slim-fit-twill--hemd-12189760.html?cgid=jj-shirts-longsleeves&dwvar_colorPattern=12189760_PortRoyale_851391", 
    1
  );
INSERT INTO Produkte (
  Produktname, Preis, Link, HauptkategorieID
) 
VALUES 
  (
    "Slim-Fit Twill Hemd", "50", "https://www.jackjones.com/ch/de/jj/bekleidung/hemden/langarmhemden/slim-fit-twill--hemd-12189760.html?cgid=jj-shirts-longsleeves&dwvar_colorPattern=12189760_PortRoyale_851391", 
    1
  );
INSERT INTO Produkte (
  Produktname, Preis, Link, HauptkategorieID
) 
VALUES 
  (
    "Slim-Fit Twill Hemd", "50", "https://www.jackjones.com/ch/de/jj/bekleidung/hemden/langarmhemden/slim-fit-twill--hemd-12189760.html?cgid=jj-shirts-longsleeves&dwvar_colorPattern=12189760_PortRoyale_851391", 
    1
  );
-- Produktkategorien 
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) 
VALUES 
  (1, 1);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) 
VALUES 
  (1, 7);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) 
VALUES 
  (1, 12);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) 
VALUES 
  (2, 1);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) 
VALUES 
  (2, 5);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) 
VALUES 
  (2, 12);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) 
VALUES 
  (3, 1);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) 
VALUES 
  (3, 9);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) 
VALUES 
  (3, 12);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) 
VALUES 
  (4, 3);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) 
VALUES 
  (4, 5);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) 
VALUES 
  (4, 13);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) 
VALUES 
  (5, 2);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) 
VALUES 
  (5, 5);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) 
VALUES 
  (5, 13);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) 
VALUES 
  (6, 1);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) 
VALUES 
  (6, 5);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) 
VALUES 
  (6, 13);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) 
VALUES 
  (7, 3);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) 
VALUES 
  (7, 9);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) 
VALUES 
  (7, 12);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) 
VALUES 
  (8, 2);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) 
VALUES 
  (8, 9);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) 
VALUES 
  (8, 12);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) 
VALUES 
  (9, 1);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) 
VALUES 
  (9, 9);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) 
VALUES 
  (9, 12);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) 
VALUES 
  (10, 3);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) 
VALUES 
  (10, 7);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) 
VALUES 
  (10, 13);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) 
VALUES 
  (11, 2);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) 
VALUES 
  (11, 7);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) 
VALUES 
  (11, 13);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) 
VALUES 
  (12, 1);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) 
VALUES 
  (12, 7);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) 
VALUES 
  (12, 13);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) 
VALUES 
  (13, 3);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) 
VALUES 
  (13, 11);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) 
VALUES 
  (13, 13);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) 
VALUES 
  (14, 2);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) 
VALUES 
  (14, 11);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) 
VALUES 
  (14, 13);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) 
VALUES 
  (15, 1);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) 
VALUES 
  (15, 11);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) 
VALUES 
  (15, 13);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) 
VALUES 
  (16, 1);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) 
VALUES 
  (16, 8);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) 
VALUES 
  (16, 13);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) 
VALUES 
  (17, 1);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) 
VALUES 
  (17, 9);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) 
VALUES 
  (17, 13);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) 
VALUES 
  (18, 1);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) 
VALUES 
  (18, 6);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) 
VALUES 
  (18, 13);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) 
VALUES 
  (19, 3);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) 
VALUES 
  (19, 4);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) 
VALUES 
  (19, 12);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) 
VALUES 
  (20, 2);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) 
VALUES 
  (20, 4);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) 
VALUES 
  (20, 12);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) 
VALUES 
  (21, 1);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) 
VALUES 
  (21, 4);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) 
VALUES 
  (21, 12);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) 
VALUES 
  (22, 3);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) 
VALUES 
  (22, 7);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) 
VALUES 
  (22, 12);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) 
VALUES 
  (23, 2);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) 
VALUES 
  (23, 7);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) 
VALUES 
  (23, 12);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) 
VALUES 
  (24, 1);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) 
VALUES 
  (24, 7);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) 
VALUES 
  (24, 12);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) 
VALUES 
  (25, 3);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) 
VALUES 
  (25, 6);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) 
VALUES 
  (25, 12);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) 
VALUES 
  (26, 2);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) 
VALUES 
  (26, 6);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) 
VALUES 
  (26, 12);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) 
VALUES 
  (27, 1);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) 
VALUES 
  (27, 6);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) 
VALUES 
  (27, 12);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) 
VALUES 
  (28, 2);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) 
VALUES 
  (28, 10);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) 
VALUES 
  (28, 12);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) 
VALUES 
  (29, 1);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) 
VALUES 
  (29, 10);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) 
VALUES 
  (29, 12);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) 
VALUES 
  (30, 3);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) 
VALUES 
  (30, 10);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) 
VALUES 
  (30, 12);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) 
VALUES 
  (31, 1);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) 
VALUES 
  (31, 9);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) 
VALUES 
  (31, 12);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) 
VALUES 
  (32, 1);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) 
VALUES 
  (32, 4);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) 
VALUES 
  (32, 12);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) 
VALUES 
  (33, 1);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) 
VALUES 
  (33, 5);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) 
VALUES 
  (33, 12);





/*
SELECT * FROM Hauptkategorien;  

SELECT * FROM Kategorien;  
SELECT * FROM Produkte;  
SELECT * FROM Produkte_Kategorien; */

/*
SELECT Produkte.Produktname, Produkte.Preis, Hauptkategorien.Name
FROM Produkte, Hauptkategorien WHERE Produkte.HauptkategorieID=Hauptkategorien.ID; */

/*
SELECT Kategorien.Wert, Produkte.ID, Produkte.Produktname, Produkte.Preis, Kategorien.Name  
FROM Kategorien, Produkte, Produkte_Kategorien
WHERE Produkte.ID="10"
AND Produkte_Kategorien.ProduktID=Produkte.ID
AND Produkte_Kategorien.KategorieID=Kategorien.ID; */

/*
SELECT 
  Produkte.ID, 
  Produkte.Produktname, 
  Produkte.Preis, 
  Produkte.Link, 
  GROUP_CONCAT(
    DISTINCT Kategorien.Wert 
    ORDER BY 
      Kategorien.Name ASC SEPARATOR ', '
  ) AS "Beschreibung" 
FROM 
  Produkte, 
  Kategorien, 
  Produkte_Kategorien, 
  Hauptkategorien 
WHERE 
  Produkte.ID = Produkte_Kategorien.ProduktID 
  AND Kategorien.ID = Produkte_Kategorien.KategorieID 
GROUP BY 
  Produkte.ID*/
  
  
INSERT INTO Kunden (Name, Nachname, Lieferadresse, Email_Adresse)
VALUES ('Joel', 'Tanner', 'Luzernerstrasse 12', 'joeltanner@sluz.ch');


INSERT INTO Bestellungen (Erstelldatum, KundenID)
VALUES ('12.12.2022', '1');
  

INSERT INTO Produkte_Bestellungen (ProduktID, BestellungID)
VALUES ('5', '1');

INSERT INTO Produkte_Bestellungen (ProduktID, BestellungID)
VALUES ('2', '1');

INSERT INTO Produkte_Bestellungen (ProduktID, BestellungID)
VALUES ('8', '1');



INSERT INTO Bewertungen (Bewertungs_Text, Rating, Erstelldatum, KundenID, ProduktID)
VALUES ('Sehr cooles Produkt, Empfehlenswert!', '10/10', '12.12.2222', '1', '5');

INSERT INTO Bewertungen (Bewertungs_Text, Rating, Erstelldatum, KundenID, ProduktID)
VALUES ('Sehr komischer Schnitt', '6/10', '12.12.2222', '1', '2');

INSERT INTO Bewertungen (Bewertungs_Text, Rating, Erstelldatum, KundenID, ProduktID)
VALUES ('Bequem, etwas mühsam zum Bügeln', '8/10', '12.12.2222', '1', '8');



/*
SELECT * FROM Hauptkategorien;  

SELECT * FROM Kategorien;  
SELECT * FROM Produkte;  
SELECT * FROM Produkte_Kategorien; */

/*
SELECT Produkte.Produktname, Produkte.Preis, Hauptkategorien.Name
FROM Produkte, Hauptkategorien WHERE Produkte.HauptkategorieID=Hauptkategorien.ID; */

/*
SELECT Kategorien.Wert, Produkte.ID, Produkte.Produktname, Produkte.Preis, Kategorien.Name  
FROM Kategorien, Produkte, Produkte_Kategorien
WHERE Produkte.ID="10"
AND Produkte_Kategorien.ProduktID=Produkte.ID
AND Produkte_Kategorien.KategorieID=Kategorien.ID; */

/*
SELECT 
  Produkte.ID, 
  Produkte.Produktname, 
  Produkte.Preis, 
  Produkte.Link, 
  GROUP_CONCAT(
    DISTINCT Kategorien.Wert 
    ORDER BY 
      Kategorien.Name ASC SEPARATOR ', '
  ) AS "Beschreibung" 
FROM 
  Produkte, 
  Kategorien, 
  Produkte_Kategorien, 
  Hauptkategorien 
WHERE 
  Produkte.ID = Produkte_Kategorien.ProduktID 
  AND Kategorien.ID = Produkte_Kategorien.KategorieID 
GROUP BY 
  Produkte.ID*/
  
  
INSERT INTO Kunden (Name, Nachname, Lieferadresse, Email_Adresse)
VALUES ('Joel', 'Tanner', 'Luzernerstrasse 12', 'joeltanner@sluz.ch');


INSERT INTO Bestellungen (Erstelldatum, KundenID)
VALUES ('12.12.2022', '1');
  

INSERT INTO Produkte_Bestellungen (ProduktID, BestellungID)
VALUES ('5', '1');

INSERT INTO Produkte_Bestellungen (ProduktID, BestellungID)
VALUES ('2', '1');

INSERT INTO Produkte_Bestellungen (ProduktID, BestellungID)
VALUES ('8', '1');



INSERT INTO Bewertungen (Bewertungs_Text, Rating, Erstelldatum, KundenID, ProduktID)
VALUES ('Sehr cooles Produkt, Empfehlenswert!', '10/10', '12.12.2222', '1', '5');

INSERT INTO Bewertungen (Bewertungs_Text, Rating, Erstelldatum, KundenID, ProduktID)
VALUES ('Sehr komischer Schnitt', '6/10', '12.12.2222', '1', '2');

INSERT INTO Bewertungen (Bewertungs_Text, Rating, Erstelldatum, KundenID, ProduktID)
VALUES ('Bequem, etwas mühsam zum Bügeln', '8/10', '12.12.2222', '1', '8');




SELECT Bestellungen.ID, Kunden.Name, Kunden.Nachname, Kunden.Lieferadresse, Produkte.Produktname, Produkte.Preis, Bewertungen.Rating, Bewertungen.Bewertungs_Text
FROM Bestellungen, Kunden, Produkte_Bestellungen, Produkte, Bewertungen
WHERE Produkte_Bestellungen.ProduktID=Produkte.ID AND Bewertungen.ProduktID=Produkte_Bestellungen.ProduktID





   
  
