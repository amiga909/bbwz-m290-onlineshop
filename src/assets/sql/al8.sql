CREATE TABLE Hauptkategorien (
  ID INTEGER NOT NULL AUTO_INCREMENT PRIMARY KEY,  
  Name VARCHAR(255) NOT NULL UNIQUE
);

CREATE TABLE Warenkörbe (
  ID INTEGER NOT NULL AUTO_INCREMENT PRIMARY KEY,
  Zahlungsmethode VARCHAR (255) NOT NULL,
  Preis INTEGER (15) NOT NULL,
  Gutscheine BOOLEAN,
  Versandkosten INTEGER(10) NOT NULL,
  Lieferungsart VARCHAR (255) NOT NULL
);


CREATE TABLE Produkte (
  ID INTEGER NOT NULL AUTO_INCREMENT PRIMARY KEY, 
  Produktname VARCHAR(512) NOT NULL,
  Preis INTEGER(10) NOT NULL,
  Link VARCHAR(1024),
  HauptkategorieID INTEGER NOT NULL REFERENCES Hauptkategorien (ID)
);

CREATE TABLE Kategorien (
  ID INTEGER NOT NULL AUTO_INCREMENT PRIMARY KEY,
  Name VARCHAR(255) NOT NULL,
  Wert VARCHAR(255) 
);

-- n:m Beziehung "Kategorien beschreiben Produkte"
CREATE TABLE Produkte_Kategorien (
  ID INTEGER NOT NULL AUTO_INCREMENT PRIMARY KEY,
  ProduktID INTEGER NOT NULL, 
  KategorieID INTEGER NOT NULL
);

CREATE TABLE Kunden (
  ID INTEGER NOT NULL AUTO_INCREMENT PRIMARY KEY,
  Vorname VARCHAR (255) NOT NULL,
  Nachname VARCHAR (255) NOT NULL,
  Lieferadresse VARCHAR (255) NOT NULL,
  Email VARCHAR (255) UNIQUE NOT NULL
  );
  
CREATE TABLE Bestellungen (
  ID INTEGER NOT NULL AUTO_INCREMENT PRIMARY KEY,
  Bestelldatum DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,
  WarenkorbID INTEGER (10) REFERENCES Warenkörbe (ID)
  );

-- Tabelle für die Zusatzanforderungen (Warenkörbe ist weiter oben, da diese bei Bestellungen schon referenziert wird)
CREATE TABLE Logins (
  ID INTEGER NOT NULL AUTO_INCREMENT PRIMARY KEY,
  Nutzername VARCHAR (100) NOT NULL UNIQUE,
  Passwort VARCHAR (255) NOT NULL,
  WarenkorbID INTEGER (10) REFERENCES Warenkörbe (WarenkorbID)
 );


-- Beziehungstabellen für die Zusatzanforderungen

CREATE TABLE Kunden_Logins (
  ID INTEGER NOT NULL AUTO_INCREMENT PRIMARY KEY,
  KundeID INTEGER NOT NULL,
  LoginID INTEGER NOT NULL
);


CREATE TABLE Produkte_Warenkörbe (
  ID INTEGER NOT NULL AUTO_INCREMENT PRIMARY KEY,
  ProduktID INTEGER NOT NULL,
  WarenkorbID INTEGER NOT NULL
);

-- Einfüllen der Daten

-- Hauptkategorien 

INSERT INTO Hauptkategorien (Name) VALUES ("Action & Abenteuer");
INSERT INTO Hauptkategorien (Name) VALUES ("Drama");
INSERT INTO Hauptkategorien (Name) VALUES ("Fantasy & Science Fiction");
INSERT INTO Hauptkategorien (Name) VALUES ("Horror & Thriller");
INSERT INTO Hauptkategorien (Name) VALUES ("Kinderfilme");
INSERT INTO Hauptkategorien (Name) VALUES ("Komödie");

-- Kategorien 

INSERT INTO Kategorien (Name, Wert) VALUES ("FSK-Freigabe", "0");
INSERT INTO Kategorien (Name, Wert) VALUES ("FSK-Freigabe", "12");
INSERT INTO Kategorien (Name, Wert) VALUES ("FSK-Freigabe", "16");
INSERT INTO Kategorien (Name, Wert) VALUES ("FSK-Freigabe", "18");
INSERT INTO Kategorien (Name, Wert) VALUES ("FSK-Freigabe", "6");
INSERT INTO Kategorien (Name, Wert) VALUES ("Medium", "Blu-ray");
INSERT INTO Kategorien (Name, Wert) VALUES ("Medium", "DVD");
INSERT INTO Kategorien (Name, Wert) VALUES ("Medium", "Videokassette");
INSERT INTO Kategorien (Name, Wert) VALUES ("Spieldauer in min", "101");
INSERT INTO Kategorien (Name, Wert) VALUES ("Spieldauer in min", "102");
INSERT INTO Kategorien (Name, Wert) VALUES ("Spieldauer in min", "103");
INSERT INTO Kategorien (Name, Wert) VALUES ("Spieldauer in min", "105");
INSERT INTO Kategorien (Name, Wert) VALUES ("Spieldauer in min", "1132");
INSERT INTO Kategorien (Name, Wert) VALUES ("Spieldauer in min", "114");
INSERT INTO Kategorien (Name, Wert) VALUES ("Spieldauer in min", "117");
INSERT INTO Kategorien (Name, Wert) VALUES ("Spieldauer in min", "119");
INSERT INTO Kategorien (Name, Wert) VALUES ("Spieldauer in min", "127");
INSERT INTO Kategorien (Name, Wert) VALUES ("Spieldauer in min", "128");
INSERT INTO Kategorien (Name, Wert) VALUES ("Spieldauer in min", "132");
INSERT INTO Kategorien (Name, Wert) VALUES ("Spieldauer in min", "133");
INSERT INTO Kategorien (Name, Wert) VALUES ("Spieldauer in min", "137");
INSERT INTO Kategorien (Name, Wert) VALUES ("Spieldauer in min", "149");
INSERT INTO Kategorien (Name, Wert) VALUES ("Spieldauer in min", "158");
INSERT INTO Kategorien (Name, Wert) VALUES ("Spieldauer in min", "315");
INSERT INTO Kategorien (Name, Wert) VALUES ("Spieldauer in min", "535");
INSERT INTO Kategorien (Name, Wert) VALUES ("Spieldauer in min", "672");
INSERT INTO Kategorien (Name, Wert) VALUES ("Spieldauer in min", "80");
INSERT INTO Kategorien (Name, Wert) VALUES ("Spieldauer in min", "84");
INSERT INTO Kategorien (Name, Wert) VALUES ("Spieldauer in min", "86");
INSERT INTO Kategorien (Name, Wert) VALUES ("Spieldauer in min", "91");
INSERT INTO Kategorien (Name, Wert) VALUES ("Spieldauer in min", "98");
INSERT INTO Kategorien (Name, Wert) VALUES ("Produktionsland", "DE, IT, ES");
INSERT INTO Kategorien (Name, Wert) VALUES ("Produktionsland", "Neuseeland");
INSERT INTO Kategorien (Name, Wert) VALUES ("Produktionsland", "UK");
INSERT INTO Kategorien (Name, Wert) VALUES ("Produktionsland", "USA");
INSERT INTO Kategorien (Name, Wert) VALUES ("Produktionsland", "Japan");
INSERT INTO Kategorien (Name, Wert) VALUES ("Musical-Film", "false");
INSERT INTO Kategorien (Name, Wert) VALUES ("Musical-Film", "true");

-- Produkte 

INSERT INTO Produkte (Produktname, Preis, Link, HauptkategorieID) VALUES ("72 Stunden - the Next three days", "7.9", "72 Stunden - The Next Three Days - DVD - online kaufen | Ex Libris", 1);
INSERT INTO Produkte (Produktname, Preis, Link, HauptkategorieID) VALUES ("72 Stunden - the Next three days", "9.9", "", 1);
INSERT INTO Produkte (Produktname, Preis, Link, HauptkategorieID) VALUES ("72 Stunden - the Next three days", "12.9", "", 1);
INSERT INTO Produkte (Produktname, Preis, Link, HauptkategorieID) VALUES ("Catch me!", "18.9", "Catch Me! - auf Blu-ray - online kaufen | Ex Libris", 6);
INSERT INTO Produkte (Produktname, Preis, Link, HauptkategorieID) VALUES ("Catch me!", "14.9", "", 6);
INSERT INTO Produkte (Produktname, Preis, Link, HauptkategorieID) VALUES ("Catch me!", "10.9", "", 6);
INSERT INTO Produkte (Produktname, Preis, Link, HauptkategorieID) VALUES ("Cult of Chucky", "9.9", "Cult of Chucky - DVD - online kaufen | Ex Libris", 4);
INSERT INTO Produkte (Produktname, Preis, Link, HauptkategorieID) VALUES ("Cult of Chucky", "10.9", "", 4);
INSERT INTO Produkte (Produktname, Preis, Link, HauptkategorieID) VALUES ("Cult of Chucky", "7.9", "", 4);
INSERT INTO Produkte (Produktname, Preis, Link, HauptkategorieID) VALUES ("Das Wandelnde Schloss", "10.9", "Das wandelnde Schloss - DVD - online kaufen | Ex Libris", 3);
INSERT INTO Produkte (Produktname, Preis, Link, HauptkategorieID) VALUES ("Das Wandelnde Schloss", "15.9", "", 3);
INSERT INTO Produkte (Produktname, Preis, Link, HauptkategorieID) VALUES ("Das Wandelnde Schloss", "4.5", "", 3);
INSERT INTO Produkte (Produktname, Preis, Link, HauptkategorieID) VALUES ("Der letzte Mohikaner", "22.9", "https://www.exlibris.ch/de/suche/?qs=Der%20Letzte%20Mohikaner", 1);
INSERT INTO Produkte (Produktname, Preis, Link, HauptkategorieID) VALUES ("Der letzte Mohikaner", "41.9", "", 1);
INSERT INTO Produkte (Produktname, Preis, Link, HauptkategorieID) VALUES ("Der letzte Mohikaner", "48.9", "", 1);
INSERT INTO Produkte (Produktname, Preis, Link, HauptkategorieID) VALUES ("Die Eiskönigin 2", "9.9", "Die Eiskönigin 2 - DVD - online kaufen | Ex Libris", 5);
INSERT INTO Produkte (Produktname, Preis, Link, HauptkategorieID) VALUES ("Die Eiskönigin 2", "13.9", "", 5);
INSERT INTO Produkte (Produktname, Preis, Link, HauptkategorieID) VALUES ("Die Eiskönigin 2", "14.9", "", 5);
INSERT INTO Produkte (Produktname, Preis, Link, HauptkategorieID) VALUES ("Die glorreichen Sieben", "7.9", "https://www.exlibris.ch/de/filme/film-dvd/chris-pratt/die-glorreichen-sieben/id/4030521746589", 1);
INSERT INTO Produkte (Produktname, Preis, Link, HauptkategorieID) VALUES ("Die glorreichen Sieben", "10.9", "", 1);
INSERT INTO Produkte (Produktname, Preis, Link, HauptkategorieID) VALUES ("Die glorreichen Sieben", "12.9", "", 1);
INSERT INTO Produkte (Produktname, Preis, Link, HauptkategorieID) VALUES ("Drachenzähmen Leicht gemacht 1", "10.9", "Drachenzähmen leicht gemacht - DVD - online kaufen | Ex Libris", 5);
INSERT INTO Produkte (Produktname, Preis, Link, HauptkategorieID) VALUES ("Drachenzähmen Leicht gemacht 1", "13.9", "", 5);
INSERT INTO Produkte (Produktname, Preis, Link, HauptkategorieID) VALUES ("Drachenzähmen Leicht gemacht 1", "18.9", "", 5);
INSERT INTO Produkte (Produktname, Preis, Link, HauptkategorieID) VALUES ("Harry Potter - Complete Collection", "46.9", "https://www.exlibris.ch/de/filme/film-dvd/daniel-radcliffe/harry-potter-the-complete-collection/id/5051890315960", 3);
INSERT INTO Produkte (Produktname, Preis, Link, HauptkategorieID) VALUES ("Harry Potter - Complete Collection", "58.7", "", 3);
INSERT INTO Produkte (Produktname, Preis, Link, HauptkategorieID) VALUES ("Harry Potter - Complete Collection", "35.8", "", 3);
INSERT INTO Produkte (Produktname, Preis, Link, HauptkategorieID) VALUES ("Herr der Ringe Trilogie", "22.9", "Der Herr der Ringe - DVD - online kaufen | Ex Libris", 3);
INSERT INTO Produkte (Produktname, Preis, Link, HauptkategorieID) VALUES ("Herr der Ringe Trilogie", "30", "", 3);
INSERT INTO Produkte (Produktname, Preis, Link, HauptkategorieID) VALUES ("Herr der Ringe Trilogie Extended", "32.9", "", 3);
INSERT INTO Produkte (Produktname, Preis, Link, HauptkategorieID) VALUES ("Jennifers Body", "12.45", "https://www.melando.ch/de/gebrauchte-filme-kaufen/jennifers-body-jungs-nach-ihrem-geschmack-blu-ray-45482", 4);
INSERT INTO Produkte (Produktname, Preis, Link, HauptkategorieID) VALUES ("Jennifers Body", "5.9", "", 4);
INSERT INTO Produkte (Produktname, Preis, Link, HauptkategorieID) VALUES ("Jennifers Body Extended Version", "11.5", "", 4);
INSERT INTO Produkte (Produktname, Preis, Link, HauptkategorieID) VALUES ("Kindsköpfe", "8.9", "Kindöpfe - auf Blu-ray - online kaufen | Ex Libris", 6);
INSERT INTO Produkte (Produktname, Preis, Link, HauptkategorieID) VALUES ("Kindsköpfe", "6.9", "", 6);
INSERT INTO Produkte (Produktname, Preis, Link, HauptkategorieID) VALUES ("Kindsköpfe", "10.9", "", 6);
INSERT INTO Produkte (Produktname, Preis, Link, HauptkategorieID) VALUES ("Les Misérables", "10.9", "https://www.exlibris.ch/de/filme/bd-blu-ray/anne-hathaway/les-miserables/id/5050582933703", 2);
INSERT INTO Produkte (Produktname, Preis, Link, HauptkategorieID) VALUES ("Les Misérables", "9.9", "", 2);
INSERT INTO Produkte (Produktname, Preis, Link, HauptkategorieID) VALUES ("Les Misérables", "7.9", "", 2);
INSERT INTO Produkte (Produktname, Preis, Link, HauptkategorieID) VALUES ("Master and Commander - bis ans Ende der Welt", "14.9", "Master & Commander - Bis Ans Ende Der Welt - auf Blu-ray - online kaufen | Ex Libris", 1);
INSERT INTO Produkte (Produktname, Preis, Link, HauptkategorieID) VALUES ("Master and Commander - bis ans Ende der Welt", "12.9", "", 1);
INSERT INTO Produkte (Produktname, Preis, Link, HauptkategorieID) VALUES ("Master and Commander - bis ans Ende der Welt", "15.9", "", 1);
INSERT INTO Produkte (Produktname, Preis, Link, HauptkategorieID) VALUES ("Mission Impossible 1", "8.9", "Mission: Impossible - DVD - online kaufen | Ex Libris", 1);
INSERT INTO Produkte (Produktname, Preis, Link, HauptkategorieID) VALUES ("Mission Impossible 1", "10.9", "", 1);
INSERT INTO Produkte (Produktname, Preis, Link, HauptkategorieID) VALUES ("Mission Impossible 1", "12.9", "", 1);
INSERT INTO Produkte (Produktname, Preis, Link, HauptkategorieID) VALUES ("Nachts im Museum Trilogie", "17.9", "https://www.exlibris.ch/de/suche/?q=nachts%20im%20museum", 6);
INSERT INTO Produkte (Produktname, Preis, Link, HauptkategorieID) VALUES ("Nachts im Museum Trilogie", "19.9", "", 6);
INSERT INTO Produkte (Produktname, Preis, Link, HauptkategorieID) VALUES ("Nachts im Museum Trilogie", "21.9", "", 6);
INSERT INTO Produkte (Produktname, Preis, Link, HauptkategorieID) VALUES ("Promising Young Woman", "18.9", "Promising Young Woman - Blu-ray - auf Blu-ray - online kaufen | Ex Libris", 2);
INSERT INTO Produkte (Produktname, Preis, Link, HauptkategorieID) VALUES ("Promising Young Woman", "12.9", "", 2);
INSERT INTO Produkte (Produktname, Preis, Link, HauptkategorieID) VALUES ("Promising Young Woman", "4.9", "", 2);
INSERT INTO Produkte (Produktname, Preis, Link, HauptkategorieID) VALUES ("Robin Hood", "10.9", "https://www.exlibris.ch/de/filme/film-dvd/brian-bedford/robin-hood/id/8717418517182", 5);
INSERT INTO Produkte (Produktname, Preis, Link, HauptkategorieID) VALUES ("Robin Hood", "12.9", "", 5);
INSERT INTO Produkte (Produktname, Preis, Link, HauptkategorieID) VALUES ("Robin Hood", "9.9", "", 5);
INSERT INTO Produkte (Produktname, Preis, Link, HauptkategorieID) VALUES ("Robin Hood", "9.9", "https://www.exlibris.ch/de/filme/film-dvd/russell-crowe/robin-hood/id/5050582775372", 1);
INSERT INTO Produkte (Produktname, Preis, Link, HauptkategorieID) VALUES ("Robin Hood", "12.9", "", 1);
INSERT INTO Produkte (Produktname, Preis, Link, HauptkategorieID) VALUES ("Robin Hood", "11.9", "", 1);
INSERT INTO Produkte (Produktname, Preis, Link, HauptkategorieID) VALUES ("Robin Hood", "16.9", "https://www.exlibris.ch/de/filme/film-dvd/kevin-costner/robin-hood-koenig-der-diebe/id/9007150065218", 1);
INSERT INTO Produkte (Produktname, Preis, Link, HauptkategorieID) VALUES ("Robin Hood", "19.9", "", 1);
INSERT INTO Produkte (Produktname, Preis, Link, HauptkategorieID) VALUES ("Robin Hood", "18.9", "", 1);
INSERT INTO Produkte (Produktname, Preis, Link, HauptkategorieID) VALUES ("Spider-Man: A new Universe", "9.9", "https://www.exlibris.ch/de/suche/?q=spider-mann%20a%20new%20universe", 3);
INSERT INTO Produkte (Produktname, Preis, Link, HauptkategorieID) VALUES ("Spider-Man: A new Universe", "10.9", "", 3);
INSERT INTO Produkte (Produktname, Preis, Link, HauptkategorieID) VALUES ("Spider-Man: A new Universe", "12.9", "", 3);
INSERT INTO Produkte (Produktname, Preis, Link, HauptkategorieID) VALUES ("Star Trek Into Darkness", "11.9", "https://www.exlibris.ch/de/filme/bd-blu-ray/benedict-cumberbatch/star-trek-into-darkness-br/id/4010884296228", 3);
INSERT INTO Produkte (Produktname, Preis, Link, HauptkategorieID) VALUES ("Star Trek Into Darkness", "9.9", "", 3);
INSERT INTO Produkte (Produktname, Preis, Link, HauptkategorieID) VALUES ("Star Trek Into Darkness", "9.9", "", 3);
INSERT INTO Produkte (Produktname, Preis, Link, HauptkategorieID) VALUES ("Sterben für Anfänger", "11.9", "https://www.exlibris.ch/de/filme/film-dvd/matthew-macfadyen/sterben-fuer-anfaenger/id/4010324026309", 6);
INSERT INTO Produkte (Produktname, Preis, Link, HauptkategorieID) VALUES ("Sterben für Anfänger", "13.9", "", 6);
INSERT INTO Produkte (Produktname, Preis, Link, HauptkategorieID) VALUES ("Sterben für Anfänger", "10.9", "", 6);
INSERT INTO Produkte (Produktname, Preis, Link, HauptkategorieID) VALUES ("The Greatest Showman", "12.9", "Greatest Showman - auf Blu-ray - online kaufen | Ex Libris", 2);
INSERT INTO Produkte (Produktname, Preis, Link, HauptkategorieID) VALUES ("The Greatest Showman", "16.9", "", 2);
INSERT INTO Produkte (Produktname, Preis, Link, HauptkategorieID) VALUES ("The Greatest Showman", "19.9", "", 2);

-- Produktkategorien 

INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (1, 3);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (1, 7);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (1, 18);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (1, 35);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (1, 37);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (2, 3);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (2, 6);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (2, 18);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (2, 35);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (2, 37);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (3, 3);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (3, 8);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (3, 18);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (3, 35);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (3, 37);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (4, 2);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (4, 6);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (4, 9);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (4, 35);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (4, 37);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (5, 2);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (5, 7);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (5, 9);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (5, 35);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (5, 37);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (6, 2);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (6, 8);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (6, 9);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (6, 35);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (6, 37);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (7, 4);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (7, 7);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (7, 30);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (7, 35);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (7, 37);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (8, 4);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (8, 6);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (8, 30);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (8, 35);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (8, 37);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (9, 4);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (9, 8);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (9, 30);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (9, 35);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (9, 37);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (10, 5);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (10, 7);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (10, 16);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (10, 36);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (10, 37);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (11, 5);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (11, 6);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (11, 16);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (11, 36);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (11, 37);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (12, 5);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (12, 8);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (12, 16);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (12, 36);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (12, 37);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (13, 3);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (13, 7);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (13, 28);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (13, 32);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (13, 37);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (14, 3);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (14, 6);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (14, 28);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (14, 32);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (14, 37);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (15, 3);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (15, 8);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (15, 28);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (15, 32);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (15, 37);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (16, 1);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (16, 7);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (16, 11);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (16, 35);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (16, 38);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (17, 1);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (17, 6);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (17, 11);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (17, 35);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (17, 38);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (18, 1);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (18, 8);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (18, 11);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (18, 35);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (18, 38);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (19, 3);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (19, 7);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (19, 17);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (19, 35);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (19, 37);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (20, 3);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (20, 6);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (20, 17);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (20, 35);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (20, 37);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (21, 3);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (21, 8);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (21, 17);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (21, 35);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (21, 37);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (22, 5);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (22, 7);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (22, 31);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (22, 35);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (22, 37);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (23, 5);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (23, 6);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (23, 31);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (23, 35);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (23, 37);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (24, 5);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (24, 8);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (24, 31);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (24, 35);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (24, 37);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (25, 2);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (25, 7);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (25, 13);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (25, 34);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (25, 37);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (26, 2);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (26, 6);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (26, 13);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (26, 34);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (26, 37);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (27, 2);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (27, 8);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (27, 13);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (27, 34);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (27, 37);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (28, 2);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (28, 7);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (28, 25);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (28, 33);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (28, 37);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (29, 2);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (29, 8);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (29, 25);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (29, 33);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (29, 37);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (30, 2);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (30, 6);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (30, 26);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (30, 33);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (30, 37);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (31, 4);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (31, 6);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (31, 31);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (31, 35);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (31, 37);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (32, 4);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (32, 8);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (32, 31);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (32, 35);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (32, 37);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (33, 3);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (33, 7);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (33, 11);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (33, 35);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (33, 37);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (34, 1);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (34, 6);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (34, 10);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (34, 35);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (34, 37);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (35, 1);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (35, 7);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (35, 10);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (35, 35);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (35, 37);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (36, 1);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (36, 8);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (36, 10);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (36, 35);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (36, 37);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (37, 2);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (37, 6);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (37, 23);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (37, 34);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (37, 38);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (38, 2);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (38, 7);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (38, 23);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (38, 34);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (38, 38);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (39, 2);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (39, 8);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (39, 23);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (39, 34);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (39, 38);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (40, 2);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (40, 6);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (40, 20);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (40, 35);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (40, 37);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (41, 2);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (41, 7);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (41, 20);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (41, 35);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (41, 37);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (42, 2);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (42, 8);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (42, 20);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (42, 35);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (42, 37);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (43, 2);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (43, 7);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (43, 12);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (43, 35);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (43, 37);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (44, 2);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (44, 6);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (44, 12);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (44, 35);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (44, 37);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (45, 2);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (45, 8);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (45, 12);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (45, 35);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (45, 37);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (46, 5);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (46, 7);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (46, 24);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (46, 35);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (46, 37);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (47, 5);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (47, 6);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (47, 24);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (47, 35);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (47, 37);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (48, 5);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (48, 8);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (48, 24);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (48, 35);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (48, 37);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (49, 3);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (49, 6);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (49, 14);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (49, 35);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (49, 37);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (50, 3);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (50, 7);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (50, 14);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (50, 35);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (50, 37);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (51, 3);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (51, 8);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (51, 14);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (51, 35);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (51, 37);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (52, 1);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (52, 7);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (52, 27);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (52, 35);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (52, 38);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (53, 1);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (53, 6);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (53, 27);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (53, 35);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (53, 38);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (54, 1);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (54, 8);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (54, 27);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (54, 35);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (54, 38);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (55, 2);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (55, 7);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (55, 22);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (55, 34);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (55, 37);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (56, 2);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (56, 6);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (56, 22);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (56, 34);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (56, 37);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (57, 2);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (57, 8);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (57, 22);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (57, 34);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (57, 37);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (58, 2);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (58, 7);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (58, 21);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (58, 35);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (58, 37);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (59, 2);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (59, 6);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (59, 21);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (59, 35);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (59, 37);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (60, 2);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (60, 8);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (60, 21);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (60, 35);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (60, 37);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (61, 5);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (61, 7);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (61, 15);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (61, 35);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (61, 37);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (62, 5);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (62, 6);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (62, 15);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (62, 35);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (62, 37);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (63, 5);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (63, 8);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (63, 15);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (63, 35);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (63, 37);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (64, 2);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (64, 6);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (64, 19);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (64, 35);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (64, 37);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (65, 2);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (65, 7);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (65, 19);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (65, 35);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (65, 37);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (66, 2);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (66, 8);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (66, 19);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (66, 35);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (66, 37);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (67, 5);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (67, 7);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (67, 29);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (67, 34);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (67, 37);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (68, 5);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (68, 6);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (68, 29);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (68, 34);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (68, 37);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (69, 5);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (69, 8);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (69, 29);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (69, 34);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (69, 37);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (70, 5);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (70, 6);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (70, 12);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (70, 35);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (70, 38);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (71, 5);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (71, 7);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (71, 12);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (71, 35);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (71, 38);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (72, 5);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (72, 8);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (72, 12);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (72, 35);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (72, 38);

/*Manuelle Dateneingabe für die Tabellen der Zusatzanforderungen, so dass mit diesen Tests gemacht werden können */

-- Kunden
 INSERT INTO Kunden (Vorname, Nachname, Lieferadresse, Email) VALUES ("Susi", "Müller", "Dorfstrasse 1", "susie.mueller@hotmail.com");
  
 INSERT INTO Kunden (Vorname, Nachname, Lieferadresse, Email) VALUES ("Harry", "Polter", "Lingerweg 6", "harr09.poll@gmx.com");
 
  INSERT INTO Kunden (Vorname, Nachname, Lieferadresse, Email) VALUES ("Kari", "Brunner", "Emmenstrasse 12", "kari.brunner12031966@gmail.com");
  
  INSERT INTO Kunden (Vorname, Nachname, Lieferadresse, Email) VALUES ("Frauke", "Stör", "Eisenweg 33", "frau-stor@gmail.ch");
   
  INSERT INTO Kunden (Vorname, Nachname, Lieferadresse, Email) VALUES ("Max", "Muster", "Klagestrasse 69", "max.muster@hotmail.ch");
    
  INSERT INTO Kunden (Vorname, Nachname, Lieferadresse, Email) VALUES ("Ben", "Lister", "Ortsweg 23", "benlis@gmx.ch");
  
  -- Logins
  INSERT INTO Logins (Nutzername, Passwort, WarenkorbID) VALUES ("benuli","abc123", 3);
INSERT INTO Logins (Nutzername, Passwort) VALUES ("sister11","passwort");
INSERT INTO Logins (Nutzername, Passwort, WarenkorbID) VALUES ("max2020","aPo8X?u", 1);

   -- Warenkörbe
 INSERT INTO Warenkörbe (Zahlungsmethode, Preis, Gutscheine, Versandkosten, Lieferungsart) VALUES ("Bar", 10, TRUE, 0, "Post");
INSERT INTO Warenkörbe (Zahlungsmethode, Preis, Gutscheine, Versandkosten, Lieferungsart) VALUES ("Rechnung", 24, FALSE, 9, "Post");
INSERT INTO Warenkörbe (Zahlungsmethode, Preis, Gutscheine, Versandkosten, Lieferungsart) VALUES ("Kreditkarte", 62, TRUE, 0, "Abholer");

-- Beziehungen Kunden_Logins
INSERT INTO Kunden_Logins (KundeID, LoginID) VALUES (5, 3);
INSERT INTO Kunden_Logins (KundeID, LoginID) VALUES (6, 1);
  
 
-- Beziehungen Produkte_Warenkörbe 
INSERT INTO Produkte_Warenkörbe (ProduktID, WarenkorbID) VALUES (10, 1);

INSERT INTO Produkte_Warenkörbe (ProduktID, WarenkorbID) VALUES (63, 2);
INSERT INTO Produkte_Warenkörbe (ProduktID, WarenkorbID) VALUES (64, 2);

INSERT INTO Produkte_Warenkörbe (ProduktID, WarenkorbID) VALUES (49, 3);
INSERT INTO Produkte_Warenkörbe (ProduktID, WarenkorbID) VALUES (30, 3);
INSERT INTO Produkte_Warenkörbe (ProduktID, WarenkorbID) VALUES (16, 3);


-- Optimierungen: Index

CREATE INDEX Produktname ON Produkte (Produktname);
CREATE INDEX Kategorienname ON Kategorien (Name);




/*
SELECT * FROM Hauptkategorien;	
SELECT * FROM Kategorien;	
SELECT * FROM Produkte;	
SELECT * FROM Produkte_Kategorien;	
*/


-- Test Hauptkategorien
SELECT Produkte.Produktname, Produkte.Preis, Hauptkategorien.Name FROM Produkte, Hauptkategorien
 WHERE Produkte.HauptkategorieID = Hauptkategorien.ID 
ORDER BY Produkte.Produktname ASC;


-- Test Kategorien
SELECT Produkte.Produktname, Produkte.Preis, Kategorien.Name, Kategorien.Wert FROM Produkte, Kategorien, Produkte_Kategorien
WHERE Produkte.ID = 10 AND Produkte_Kategorien.KategorieID = Kategorien.ID AND Produkte_Kategorien.ProduktID = Produkte.ID;



 /* Test Logins: Wir geben die registrierten Kunden (Nutzernamen) mit zugehörigen Kundendaten (Vor und Nachname) aus */
SELECT Logins.Nutzername, Kunden.Vorname, Kunden.Nachname FROM Logins, Kunden, Kunden_Logins
WHERE Kunden.ID = Kunden_Logins.KundeID AND Logins.ID = Kunden_Logins.LoginID
ORDER BY Logins.Nutzername DESC;

/* Test Anzeige für Inhalt Warenkorb 3: Es werden die Produkte mit Preis, Medium und die entsprechende Warenkorb ID augegeben. 
Die Spaltennamen der hinteren 3 Spalten werden dabei jeweils verändert und nicht  gem. DB-Namen angezeigt*/
SELECT Produkte.Produktname, Produkte.Preis AS "Preis in CHF", Kategorien.Wert AS "Medium", Warenkörbe.ID AS "Warenkorb Nr." 
FROM Produkte, Warenkörbe, Produkte_Warenkörbe, Produkte_Kategorien, Kategorien 

WHERE Produkte.ID = Produkte_Warenkörbe.ProduktID AND Warenkörbe.ID = Produkte_Warenkörbe.WarenkorbID AND Warenkörbe.ID = 3 AND Kategorien.Name = "Medium" AND Produkte_Kategorien.ProduktID = Produkte.ID
AND Produkte_Kategorien.KategorieID = Kategorien.ID

ORDER BY Produkte.Produktname ASC;