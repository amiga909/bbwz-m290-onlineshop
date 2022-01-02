CREATE TABLE Hauptkategorien (
  ID INTEGER NOT NULL AUTO_INCREMENT PRIMARY KEY,  
  Name VARCHAR(255) NOT NULL
);

CREATE TABLE Produkte (
  ID INTEGER NOT NULL AUTO_INCREMENT PRIMARY KEY, 
  Produktname VARCHAR(512) NOT NULL,
  Preis INTEGER(10) NOT NULL,
  Link VARCHAR(1024) NOT NULL,
  HauptkategorieID INTEGER,
  FOREIGN KEY (HauptkategorieID) REFERENCES Hauptkategorien(ID)
  
);


CREATE TABLE Kategorien (
  ID INTEGER NOT NULL AUTO_INCREMENT PRIMARY KEY,  
  Name VARCHAR(255) NOT NULL,
  Wert VARCHAR(255) NOT NULL,
  FK_ProduktID INTEGER,
  FOREIGN KEY (FK_ProduktID) REFERENCES Produkte(ID)
);

CREATE TABLE Kunden (
  ID INTEGER NOT NULL AUTO_INCREMENT PRIMARY KEY,  
  Nachname VARCHAR(255) NOT NULL,
  Vorname VARCHAR(255) NOT NULL ,
  Emailadresse VARCHAR(255) NOT NULL,
  Lieferadresse VARCHAR(255) NOT NULL,
  UNIQUE (Emailadresse) 
);


CREATE TABLE Bestellungen (
  ID INTEGER NOT NULL AUTO_INCREMENT PRIMARY KEY,  
  Erstellungsdatum DATE NOT NULL,
  FK_KundenID INTEGER,
  FOREIGN KEY (FK_KundenID) REFERENCES Kunden(ID),
  FK_ProduktID INTEGER,
  FOREIGN KEY (FK_ProduktID) REFERENCES Produkte(ID)
);

CREATE TABLE Kontaktformular (
  ID INTEGER NOT NULL AUTO_INCREMENT PRIMARY KEY,  
  Betreff VARCHAR(100) NOT NULL,
  Nachricht VARCHAR(5000) NOT NULL,
  Telefon INT(20) NOT NULL,
  FK_KundenID INTEGER NOT NULL,
  FOREIGN KEY (FK_KundenID) REFERENCES Kunden(ID)
);


-- n:m Beziehung "Kategorien beschreiben Produkte"
CREATE TABLE Produkte_Kategorien (
  ID INTEGER NOT NULL AUTO_INCREMENT PRIMARY KEY,
  KategorieID INTEGER NOT NULL,
  ProduktID INTEGER NOT NULL,
  FOREIGN KEY (ProduktID) REFERENCES Produkte(ID)
);

-- 1:n Beziehung "Kunden haben Bestellungen"
CREATE TABLE Kunden_Bestellungen (
  ID INTEGER NOT NULL AUTO_INCREMENT PRIMARY KEY,
  KundenID INTEGER NOT NULL, 
  BestellungenID INTEGER NOT NULL
);

-- n:m Beziehung "Bestellungen bestehen Produkte"
CREATE TABLE Bestellungen_Produkte (
  ID INTEGER NOT NULL AUTO_INCREMENT PRIMARY KEY,
  BestellungenID INTEGER NOT NULL, 
  ProdukteID INTEGER NOT NULL
);

-- 1:n Beziehung "Kunden haben Kontaktformulare"
CREATE TABLE Kunden_Kontaktformulare (
  ID INTEGER NOT NULL AUTO_INCREMENT PRIMARY KEY,
  KundenID INTEGER NOT NULL, 
  KontaktformularID INTEGER NOT NULL
);

-- Hauptkategorien 

INSERT INTO Hauptkategorien (Name) VALUES ("Armschmuck");
INSERT INTO Hauptkategorien (Name) VALUES ("Halsschmuck");
INSERT INTO Hauptkategorien (Name) VALUES ("Ohrschmuck");
INSERT INTO Hauptkategorien (Name) VALUES ("Ring");

-- Kategorien 

INSERT INTO Kategorien (Name, Wert) VALUES ("Schmuckart", "Armband");
INSERT INTO Kategorien (Name, Wert) VALUES ("Schmuckart", "Armkette");
INSERT INTO Kategorien (Name, Wert) VALUES ("Schmuckart", "Armreif");
INSERT INTO Kategorien (Name, Wert) VALUES ("Schmuckart", "Ear Cuff");
INSERT INTO Kategorien (Name, Wert) VALUES ("Schmuckart", "Extravaganter Ring");
INSERT INTO Kategorien (Name, Wert) VALUES ("Schmuckart", "Gravurarmband");
INSERT INTO Kategorien (Name, Wert) VALUES ("Schmuckart", "Halskette");
INSERT INTO Kategorien (Name, Wert) VALUES ("Schmuckart", "Kugelkette");
INSERT INTO Kategorien (Name, Wert) VALUES ("Schmuckart", "Memory Ring");
INSERT INTO Kategorien (Name, Wert) VALUES ("Schmuckart", "Mode Ring");
INSERT INTO Kategorien (Name, Wert) VALUES ("Schmuckart", "Ohrring");
INSERT INTO Kategorien (Name, Wert) VALUES ("Schmuckart", "Ohrstecker");
INSERT INTO Kategorien (Name, Wert) VALUES ("Schmuckart", "Perlenkette");
INSERT INTO Kategorien (Name, Wert) VALUES ("Schmuckart", "Piercing");
INSERT INTO Kategorien (Name, Wert) VALUES ("Schmuckart", "Rundpanzerkette");
INSERT INTO Kategorien (Name, Wert) VALUES ("Schmuckart", "Solitär Ring");
INSERT INTO Kategorien (Name, Wert) VALUES ("Grösse in mm", "10.5");
INSERT INTO Kategorien (Name, Wert) VALUES ("Grösse in mm", "11");
INSERT INTO Kategorien (Name, Wert) VALUES ("Grösse in mm", "15.3");
INSERT INTO Kategorien (Name, Wert) VALUES ("Grösse in mm", "15.9");
INSERT INTO Kategorien (Name, Wert) VALUES ("Grösse in mm", "17.2");
INSERT INTO Kategorien (Name, Wert) VALUES ("Grösse in mm", "170");
INSERT INTO Kategorien (Name, Wert) VALUES ("Grösse in mm", "190");
INSERT INTO Kategorien (Name, Wert) VALUES ("Grösse in mm", "2.5");
INSERT INTO Kategorien (Name, Wert) VALUES ("Grösse in mm", "300");
INSERT INTO Kategorien (Name, Wert) VALUES ("Grösse in mm", "400");
INSERT INTO Kategorien (Name, Wert) VALUES ("Grösse in mm", "55");
INSERT INTO Kategorien (Name, Wert) VALUES ("Grösse in mm", "6.5");
INSERT INTO Kategorien (Name, Wert) VALUES ("Grösse in mm", "600");
INSERT INTO Kategorien (Name, Wert) VALUES ("Farbe", "Gold");
INSERT INTO Kategorien (Name, Wert) VALUES ("Farbe", "Rosegold");
INSERT INTO Kategorien (Name, Wert) VALUES ("Farbe", "Silber");
INSERT INTO Kategorien (Name, Wert) VALUES ("Verschluss", "Federringverschluss");
INSERT INTO Kategorien (Name, Wert) VALUES ("Verschluss", "Karabiner");
INSERT INTO Kategorien (Name, Wert) VALUES ("Verschluss", "Klappverschluss");
INSERT INTO Kategorien (Name, Wert) VALUES ("Verschluss", "Knebelverschluss");
INSERT INTO Kategorien (Name, Wert) VALUES ("Verschluss", "Kugelverschluss");
INSERT INTO Kategorien (Name, Wert) VALUES ("Verschluss", "Magnetverschluss");
INSERT INTO Kategorien (Name, Wert) VALUES ("Verschluss", "Stecker");
INSERT INTO Kategorien (Name, Wert) VALUES ("Verschluss", "offen");

-- Produkte 

INSERT INTO Produkte (Produktname, Preis, Link, HauptkategorieID) VALUES ("Armband Malia", "129", "https://fleurdenuit.ch/de/products/bracelet-malia-argente", 1);
INSERT INTO Produkte (Produktname, Preis, Link, HauptkategorieID) VALUES ("Armband Malia", "129", "https://fleurdenuit.ch/de/products/bracelet-malia-argente", 1);
INSERT INTO Produkte (Produktname, Preis, Link, HauptkategorieID) VALUES ("Armband Malia", "129", "https://fleurdenuit.ch/de/products/bracelet-malia-argente", 1);
INSERT INTO Produkte (Produktname, Preis, Link, HauptkategorieID) VALUES ("Personalisierte Armkette Josie", "149", "https://fleurdenuit.ch/de/products/bracelet-personnalise-josie-dore-jaune", 1);
INSERT INTO Produkte (Produktname, Preis, Link, HauptkategorieID) VALUES ("Personalisierte Armkette Josie", "149", "https://fleurdenuit.ch/de/products/bracelet-personnalise-josie-dore-jaune", 1);
INSERT INTO Produkte (Produktname, Preis, Link, HauptkategorieID) VALUES ("Personalisierte Armkette Josie", "149", "https://fleurdenuit.ch/de/products/bracelet-personnalise-josie-dore-jaune", 1);
INSERT INTO Produkte (Produktname, Preis, Link, HauptkategorieID) VALUES ("Armreif Kaya", "56.7", "https://fleurdenuit.ch/de/products/bracelet-jonc-kaya-dore-jaune", 1);
INSERT INTO Produkte (Produktname, Preis, Link, HauptkategorieID) VALUES ("Armreif Kaya", "56.7", "https://fleurdenuit.ch/de/products/bracelet-jonc-kaya-dore-jaune", 1);
INSERT INTO Produkte (Produktname, Preis, Link, HauptkategorieID) VALUES ("Armreif Kaya", "56.7", "https://fleurdenuit.ch/de/products/bracelet-jonc-kaya-dore-jaune", 1);
INSERT INTO Produkte (Produktname, Preis, Link, HauptkategorieID) VALUES ("Armkette Victoria", "71.6", "https://fleurdenuit.ch/de/products/bracelet-victoria-dore-peche", 1);
INSERT INTO Produkte (Produktname, Preis, Link, HauptkategorieID) VALUES ("Armkette Victoria", "71.6", "https://fleurdenuit.ch/de/products/bracelet-victoria-dore-peche", 1);
INSERT INTO Produkte (Produktname, Preis, Link, HauptkategorieID) VALUES ("Armkette Victoria", "71.6", "https://fleurdenuit.ch/de/products/bracelet-victoria-dore-peche", 1);
INSERT INTO Produkte (Produktname, Preis, Link, HauptkategorieID) VALUES ("Ohrstecker Aelis", "39", "https://fleurdenuit.ch/de/products/clou-doreille-aelis-dore-peche", 3);
INSERT INTO Produkte (Produktname, Preis, Link, HauptkategorieID) VALUES ("Ohrstecker Aelis", "39", "https://fleurdenuit.ch/de/products/clou-doreille-aelis-dore-peche", 3);
INSERT INTO Produkte (Produktname, Preis, Link, HauptkategorieID) VALUES ("Ohrstecker Aelis", "39", "https://fleurdenuit.ch/de/products/clou-doreille-aelis-dore-peche", 3);
INSERT INTO Produkte (Produktname, Preis, Link, HauptkategorieID) VALUES ("Ohrring Arun", "49", "https://fleurdenuit.ch/de/products/boucle-doreille-arun-dore-peche", 3);
INSERT INTO Produkte (Produktname, Preis, Link, HauptkategorieID) VALUES ("Ohrring Arun", "49", "https://fleurdenuit.ch/de/products/boucle-doreille-arun-dore-peche", 3);
INSERT INTO Produkte (Produktname, Preis, Link, HauptkategorieID) VALUES ("Ohrring Arun", "49", "https://fleurdenuit.ch/de/products/boucle-doreille-arun-dore-peche", 3);
INSERT INTO Produkte (Produktname, Preis, Link, HauptkategorieID) VALUES ("Ear cuff Aura", "59", "https://fleurdenuit.ch/de/products/earcuff-aura-dore-jaune", 3);
INSERT INTO Produkte (Produktname, Preis, Link, HauptkategorieID) VALUES ("Ear cuff Aura", "59", "https://fleurdenuit.ch/de/products/earcuff-aura-dore-jaune", 3);
INSERT INTO Produkte (Produktname, Preis, Link, HauptkategorieID) VALUES ("Ear cuff Aura", "59", "https://fleurdenuit.ch/de/products/earcuff-aura-dore-jaune", 3);
INSERT INTO Produkte (Produktname, Preis, Link, HauptkategorieID) VALUES ("Piercing Jade", "49", "https://fleurdenuit.ch/de/products/piercing-jade-argent", 3);
INSERT INTO Produkte (Produktname, Preis, Link, HauptkategorieID) VALUES ("Piercing Jade", "49", "https://fleurdenuit.ch/de/products/piercing-jade-argent", 3);
INSERT INTO Produkte (Produktname, Preis, Link, HauptkategorieID) VALUES ("Piercing Jade", "49", "https://fleurdenuit.ch/de/products/piercing-jade-argent", 3);
INSERT INTO Produkte (Produktname, Preis, Link, HauptkategorieID) VALUES ("Ring Lucie", "79", "https://fleurdenuit.ch/de/products/bague-lucie-dore-jaune", 4);
INSERT INTO Produkte (Produktname, Preis, Link, HauptkategorieID) VALUES ("Ring Lucie", "79", "https://fleurdenuit.ch/de/products/bague-lucie-dore-jaune", 4);
INSERT INTO Produkte (Produktname, Preis, Link, HauptkategorieID) VALUES ("Ring Lucie", "79", "https://fleurdenuit.ch/de/products/bague-lucie-dore-jaune", 4);
INSERT INTO Produkte (Produktname, Preis, Link, HauptkategorieID) VALUES ("Ring Kira", "59", "https://fleurdenuit.ch/de/products/bague-kira-argent", 4);
INSERT INTO Produkte (Produktname, Preis, Link, HauptkategorieID) VALUES ("Ring Kira", "59", "https://fleurdenuit.ch/de/products/bague-kira-argent", 4);
INSERT INTO Produkte (Produktname, Preis, Link, HauptkategorieID) VALUES ("Ring Kira", "59", "https://fleurdenuit.ch/de/products/bague-kira-argent", 4);
INSERT INTO Produkte (Produktname, Preis, Link, HauptkategorieID) VALUES ("Ring Adira", "99", "https://fleurdenuit.ch/de/products/bague-adira-dore-peche", 4);
INSERT INTO Produkte (Produktname, Preis, Link, HauptkategorieID) VALUES ("Ring Adira", "99", "https://fleurdenuit.ch/de/products/bague-adira-dore-peche", 4);
INSERT INTO Produkte (Produktname, Preis, Link, HauptkategorieID) VALUES ("Ring Adira", "99", "https://fleurdenuit.ch/de/products/bague-adira-dore-peche", 4);
INSERT INTO Produkte (Produktname, Preis, Link, HauptkategorieID) VALUES ("Ring Eugenie", "109", "https://fleurdenuit.ch/de/products/bague-eugenie-dore-jaune", 4);
INSERT INTO Produkte (Produktname, Preis, Link, HauptkategorieID) VALUES ("Ring Eugenie", "109", "https://fleurdenuit.ch/de/products/bague-eugenie-dore-jaune", 4);
INSERT INTO Produkte (Produktname, Preis, Link, HauptkategorieID) VALUES ("Ring Eugenie", "109", "https://fleurdenuit.ch/de/products/bague-eugenie-dore-jaune", 4);
INSERT INTO Produkte (Produktname, Preis, Link, HauptkategorieID) VALUES ("Perlenkette Elea", "119", "https://fleurdenuit.ch/de/products/collier-elea-dore-jaune", 2);
INSERT INTO Produkte (Produktname, Preis, Link, HauptkategorieID) VALUES ("Perlenkette Elea", "119", "https://fleurdenuit.ch/de/products/collier-elea-dore-jaune", 2);
INSERT INTO Produkte (Produktname, Preis, Link, HauptkategorieID) VALUES ("Perlenkette Elea", "119", "https://fleurdenuit.ch/de/products/collier-elea-dore-jaune", 2);
INSERT INTO Produkte (Produktname, Preis, Link, HauptkategorieID) VALUES ("Rundpanzerkette Yuna", "199", "https://fleurdenuit.ch/de/products/collier-yuna-argente", 2);
INSERT INTO Produkte (Produktname, Preis, Link, HauptkategorieID) VALUES ("Rundpanzerkette Yuna", "199", "https://fleurdenuit.ch/de/products/collier-yuna-argente", 2);
INSERT INTO Produkte (Produktname, Preis, Link, HauptkategorieID) VALUES ("Rundpanzerkette Yuna", "199", "https://fleurdenuit.ch/de/products/collier-yuna-argente", 2);
INSERT INTO Produkte (Produktname, Preis, Link, HauptkategorieID) VALUES ("Halskette Anna", "139", "https://fleurdenuit.ch/de/products/collier-anna-dore-peche", 2);
INSERT INTO Produkte (Produktname, Preis, Link, HauptkategorieID) VALUES ("Halskette Anna", "139", "https://fleurdenuit.ch/de/products/collier-anna-dore-peche", 2);
INSERT INTO Produkte (Produktname, Preis, Link, HauptkategorieID) VALUES ("Halskette Anna", "139", "https://fleurdenuit.ch/de/products/collier-anna-dore-peche", 2);
INSERT INTO Produkte (Produktname, Preis, Link, HauptkategorieID) VALUES ("Kugelkette Mila", "99", "https://fleurdenuit.ch/de/products/collier-mila-dore-jaune", 2);
INSERT INTO Produkte (Produktname, Preis, Link, HauptkategorieID) VALUES ("Kugelkette Mila", "99", "https://fleurdenuit.ch/de/products/collier-mila-dore-jaune", 2);
INSERT INTO Produkte (Produktname, Preis, Link, HauptkategorieID) VALUES ("Kugelkette Mila", "99", "https://fleurdenuit.ch/de/products/collier-mila-dore-jaune", 2);

-- Produktkategorien 

INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (1, 1);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (1, 23);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (1, 32);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (1, 34);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (2, 1);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (2, 23);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (2, 30);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (2, 34);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (3, 1);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (3, 23);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (3, 31);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (3, 34);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (4, 6);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (4, 23);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (4, 30);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (4, 34);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (5, 6);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (5, 23);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (5, 32);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (5, 34);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (6, 6);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (6, 23);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (6, 31);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (6, 34);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (7, 3);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (7, 27);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (7, 30);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (7, 40);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (8, 3);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (8, 27);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (8, 32);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (8, 40);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (9, 3);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (9, 27);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (9, 31);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (9, 40);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (10, 2);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (10, 22);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (10, 31);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (10, 38);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (11, 2);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (11, 22);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (11, 30);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (11, 38);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (12, 2);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (12, 22);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (12, 32);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (12, 38);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (13, 12);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (13, 18);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (13, 31);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (13, 39);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (14, 12);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (14, 18);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (14, 30);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (14, 39);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (15, 12);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (15, 18);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (15, 32);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (15, 39);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (16, 11);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (16, 17);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (16, 31);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (16, 35);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (17, 11);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (17, 17);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (17, 30);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (17, 35);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (18, 11);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (18, 17);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (18, 32);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (18, 35);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (19, 4);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (19, 24);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (19, 30);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (19, 40);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (20, 4);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (20, 24);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (20, 31);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (20, 40);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (21, 4);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (21, 24);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (21, 32);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (21, 40);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (22, 14);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (22, 28);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (22, 32);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (22, 37);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (23, 14);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (23, 28);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (23, 30);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (23, 37);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (24, 14);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (24, 28);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (24, 31);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (24, 37);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (25, 5);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (25, 19);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (25, 30);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (26, 5);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (26, 20);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (26, 30);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (27, 5);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (27, 21);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (27, 30);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (28, 16);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (28, 19);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (28, 32);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (29, 16);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (29, 20);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (29, 32);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (30, 16);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (30, 21);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (30, 32);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (31, 10);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (31, 19);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (31, 31);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (32, 10);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (32, 20);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (32, 31);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (33, 10);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (33, 21);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (33, 31);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (34, 9);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (34, 19);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (34, 30);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (35, 9);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (35, 20);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (35, 30);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (36, 9);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (36, 21);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (36, 30);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (37, 13);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (37, 25);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (37, 30);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (37, 34);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (38, 13);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (38, 26);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (38, 30);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (38, 34);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (39, 13);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (39, 29);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (39, 30);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (39, 34);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (40, 15);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (40, 25);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (40, 32);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (40, 36);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (41, 15);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (41, 26);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (41, 32);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (41, 36);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (42, 15);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (42, 29);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (42, 32);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (42, 36);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (43, 7);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (43, 25);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (43, 31);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (43, 33);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (44, 7);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (44, 26);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (44, 31);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (44, 33);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (45, 7);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (45, 29);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (45, 31);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (45, 33);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (46, 8);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (46, 25);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (46, 30);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (46, 33);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (47, 8);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (47, 26);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (47, 30);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (47, 33);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (48, 8);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (48, 29);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (48, 30);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (48, 33);


INSERT INTO Kunden (Nachname, Vorname, Emailadresse, Lieferadresse) VALUES 
('Muster','Rosa','rosa.muster@gmail.com','Musterstrasse 4 2032 Musterhausen'),
('Test','Peter','peter.test@gmail.com','Teststrasse 2 6403 Testhausen');

INSERT INTO Kontaktformular (Betreff, Nachricht, Telefon, FK_KundenID ) VALUES 
('Falsche Farbe geliefert','Hallo Zusammen, mir wurde die falsche Farbe geleifert. Ich möchte mein Ear Cuf in Gold und nicht in Rosegold. Könnt ihr das bitte ändern? Gruss Rosa','0783043034', '1'),
('Anfrage Produkt','Hallo Zusammen, könnte ich die Perlenkette Elea für meine Frau auch etwas kürzer haben? Gruss Peter ','0794537692', '2');

INSERT INTO Kunden_Kontaktformulare (KundenID, KontaktformularID) VALUES (2, 1);
INSERT INTO Kunden_Kontaktformulare (KundenID, KontaktformularID) VALUES (1, 2);



/*
SELECT * FROM Hauptkategorien;	
SELECT * FROM Kategorien;	
SELECT * FROM Produkte;	
SELECT * FROM Produkte_Kategorien;
SELECT * FROM Kunden;
SELECT * FROM Kontaktformular;
SELECT * FROM Kunden_Kontaktformulare;
*/


SELECT Produkte.Produktname, Produkte.Preis, Kategorien.Name, Kategorien.Wert FROM Produkte_Kategorien, Produkte, Kategorien WHERE Produkte.ID =10
AND Produkte_Kategorien.KategorieID =Kategorien.ID AND Produkte_Kategorien.ProduktID =Produkte.ID;



SELECT Produkte.Produktname, Produkte.Preis, Hauptkategorien.Name
FROM Produkte, Hauptkategorien 
WHERE Produkte.HauptkategorieID =Hauptkategorien.ID
ORDER BY Produktname ASC; 


SELECT Kunden_Kontaktformulare.KundenID, Kunden_Kontaktformulare.KontaktformularID
FROM Kunden_Kontaktformulare, Kunden
WHERE Kunden.ID =  Kunden_Kontaktformulare.KundenID;