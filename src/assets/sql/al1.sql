-- SCHEMA --
CREATE TABLE Hauptkategorien (
  ID INTEGER NOT NULL AUTO_INCREMENT PRIMARY KEY, 
  Name VARCHAR(255) NOT NULL
);
CREATE TABLE Kategorien (
  ID INTEGER NOT NULL AUTO_INCREMENT PRIMARY KEY, 
  Name VARCHAR(255) NOT NULL, 
  Wert VARCHAR(255)
);
CREATE TABLE Produkte (
  ID INTEGER NOT NULL AUTO_INCREMENT PRIMARY KEY, 
  Produktname VARCHAR(512) NOT NULL, 
  Preis INTEGER(10) NOT NULL, 
  Link VARCHAR(1024), 
  HauptkategorieID INTEGER NOT NULL
);

-- n:m Beziehung "Kategorien beschreiben Produkte"
CREATE TABLE Produkte_Kategorien (
  ID INTEGER NOT NULL AUTO_INCREMENT PRIMARY KEY, 
  ProduktID INTEGER NOT NULL, 
  KategorieID INTEGER NOT NULL, 
  FOREIGN KEY (ProduktID) REFERENCES Produkte(ID), 
  FOREIGN KEY (KategorieID) REFERENCES Kategorien(ID)
);

CREATE TABLE Kunden (
  ID INTEGER PRIMARY KEY AUTO_INCREMENT NOT NULL UNIQUE, 
  Vorname VARCHAR(255) NOT NULL, 
  Nachname VARCHAR(255) NOT NULL, 
  Email VARCHAR(255) NOT NULL, 
  Adresse VARCHAR(255) NOT NULL, 
  PLZ INTEGER(255) NOT NULL, 
  Ort VARCHAR(255) NOT NULL
);

CREATE TABLE Bestellungen (
  ID INTEGER PRIMARY KEY AUTO_INCREMENT NOT NULL UNIQUE,
  KundenID INTEGER NOT NULL,
  Bestellungsstatus VARCHAR(255) NOT NULL,
  FOREIGN KEY (KundenID) REFERENCES Kunden(ID)
);

CREATE TABLE Kunden_Bestellungen (
  ID INTEGER NOT NULL AUTO_INCREMENT PRIMARY KEY, 
  KundenID INTEGER NOT NULL, 
  BestellungenID INTEGER NOT NULL, 
  FOREIGN KEY (KundenID) REFERENCES Kunden(ID), 
  FOREIGN KEY (BestellungenID) REFERENCES Bestellungen(ID)
  );
  
  -- n:m Beziehung
CREATE TABLE Kunden_Produkte (
  ID INTEGER NOT NULL AUTO_INCREMENT PRIMARY KEY, 
  KundenID INTEGER NOT NULL, 
  ProduktID INTEGER NOT NULL, 
  FOREIGN KEY (KundenID) REFERENCES Kunden(ID), 
  FOREIGN KEY (ProduktID) REFERENCES Produkte(ID)
);
  
-- n:m Beziehung
CREATE TABLE Produkte_Bestellungen (
  ID INTEGER NOT NULL AUTO_INCREMENT PRIMARY KEY, 
  ProduktID INTEGER NOT NULL, 
  BestellungenID INTEGER NOT NULL, 
  FOREIGN KEY (ProduktID) REFERENCES Produkte(ID), 
  FOREIGN KEY (BestellungenID) REFERENCES Bestellungen(ID)
);

-- Hauptkategorien 

INSERT INTO Hauptkategorien (Name) VALUES ("Anime DVDs");
INSERT INTO Hauptkategorien (Name) VALUES ("Dakimakura");
INSERT INTO Hauptkategorien (Name) VALUES ("Figuren");
INSERT INTO Hauptkategorien (Name) VALUES ("Lightnovels");
INSERT INTO Hauptkategorien (Name) VALUES ("Manga");

-- Kategorien 

INSERT INTO Kategorien (Name, Wert) VALUES ("Franchise", "Akame Ga Kill!");
INSERT INTO Kategorien (Name, Wert) VALUES ("Franchise", "Attack on Titan");
INSERT INTO Kategorien (Name, Wert) VALUES ("Franchise", "Black Rock Shooter");
INSERT INTO Kategorien (Name, Wert) VALUES ("Franchise", "Chainsawman");
INSERT INTO Kategorien (Name, Wert) VALUES ("Franchise", "Date a Live");
INSERT INTO Kategorien (Name, Wert) VALUES ("Franchise", "Date a live");
INSERT INTO Kategorien (Name, Wert) VALUES ("Franchise", "Death Note");
INSERT INTO Kategorien (Name, Wert) VALUES ("Franchise", "Demon Slayer");
INSERT INTO Kategorien (Name, Wert) VALUES ("Franchise", "Food Wars");
INSERT INTO Kategorien (Name, Wert) VALUES ("Franchise", "Genshin Impact (Mihoyo)");
INSERT INTO Kategorien (Name, Wert) VALUES ("Franchise", "Ghibli Universe");
INSERT INTO Kategorien (Name, Wert) VALUES ("Franchise", "Ive got reincarnated as a slime");
INSERT INTO Kategorien (Name, Wert) VALUES ("Franchise", "Jujutsu Kaisen");
INSERT INTO Kategorien (Name, Wert) VALUES ("Franchise", "Konosuba");
INSERT INTO Kategorien (Name, Wert) VALUES ("Franchise", "My Hero Academia");
INSERT INTO Kategorien (Name, Wert) VALUES ("Franchise", "Nekopara");
INSERT INTO Kategorien (Name, Wert) VALUES ("Franchise", "No Game No Life");
INSERT INTO Kategorien (Name, Wert) VALUES ("Franchise", "No Game no Life");
INSERT INTO Kategorien (Name, Wert) VALUES ("Franchise", "Overlord");
INSERT INTO Kategorien (Name, Wert) VALUES ("Franchise", "Sword art online");
INSERT INTO Kategorien (Name, Wert) VALUES ("Franchise", "The Rising of the Shield Hero");
INSERT INTO Kategorien (Name, Wert) VALUES ("Franchise", "V-Tuber");
INSERT INTO Kategorien (Name, Wert) VALUES ("Franchise", "Weathering with you");
INSERT INTO Kategorien (Name, Wert) VALUES ("Franchise", "Your Name");
INSERT INTO Kategorien (Name, Wert) VALUES ("Genre", "Action");
INSERT INTO Kategorien (Name, Wert) VALUES ("Genre", "Action/Adventure/Comdey");
INSERT INTO Kategorien (Name, Wert) VALUES ("Genre", "Action/Adventure/Shounen");
INSERT INTO Kategorien (Name, Wert) VALUES ("Genre", "Action/Dark Fantasy/Horror");
INSERT INTO Kategorien (Name, Wert) VALUES ("Genre", "Action/Fantasy");
INSERT INTO Kategorien (Name, Wert) VALUES ("Genre", "Action/Superpower/Fantasy");
INSERT INTO Kategorien (Name, Wert) VALUES ("Genre", "Adventure/Action/Shounen");
INSERT INTO Kategorien (Name, Wert) VALUES ("Genre", "Adventure/Fanatsy");
INSERT INTO Kategorien (Name, Wert) VALUES ("Genre", "Adventure/Fantasy");
INSERT INTO Kategorien (Name, Wert) VALUES ("Genre", "Adventure/Fantasy/Comedy");
INSERT INTO Kategorien (Name, Wert) VALUES ("Genre", "Body Pillow");
INSERT INTO Kategorien (Name, Wert) VALUES ("Genre", "Comedy/Gourmet");
INSERT INTO Kategorien (Name, Wert) VALUES ("Genre", "Drama");
INSERT INTO Kategorien (Name, Wert) VALUES ("Genre", "Drama/Action/Adventure");
INSERT INTO Kategorien (Name, Wert) VALUES ("Genre", "Drama/Adventure");
INSERT INTO Kategorien (Name, Wert) VALUES ("Genre", "Drama/Adventure/Comedy");
INSERT INTO Kategorien (Name, Wert) VALUES ("Genre", "Drama/Adventure/Mystery");
INSERT INTO Kategorien (Name, Wert) VALUES ("Genre", "Superpower");
INSERT INTO Kategorien (Name, Wert) VALUES ("Genre", "Superpower/Action/Adventure");
INSERT INTO Kategorien (Name, Wert) VALUES ("Studio/Publisher", "AIC");
INSERT INTO Kategorien (Name, Wert) VALUES ("Studio/Publisher", "Bones");
INSERT INTO Kategorien (Name, Wert) VALUES ("Studio/Publisher", "CoMix Wave Films");
INSERT INTO Kategorien (Name, Wert) VALUES ("Studio/Publisher", "Eight Bit");
INSERT INTO Kategorien (Name, Wert) VALUES ("Studio/Publisher", "FIGMA");
INSERT INTO Kategorien (Name, Wert) VALUES ("Studio/Publisher", "Good Smile Company");
INSERT INTO Kategorien (Name, Wert) VALUES ("Studio/Publisher", "J. C. Staff");
INSERT INTO Kategorien (Name, Wert) VALUES ("Studio/Publisher", "Kinema Citrus");
INSERT INTO Kategorien (Name, Wert) VALUES ("Studio/Publisher", "MAPPA");
INSERT INTO Kategorien (Name, Wert) VALUES ("Studio/Publisher", "Madhouse");
INSERT INTO Kategorien (Name, Wert) VALUES ("Studio/Publisher", "Pop Up Parade");
INSERT INTO Kategorien (Name, Wert) VALUES ("Studio/Publisher", "Shirokuma");
INSERT INTO Kategorien (Name, Wert) VALUES ("Studio/Publisher", "Studio Deen");
INSERT INTO Kategorien (Name, Wert) VALUES ("Studio/Publisher", "Studio Ghibli");
INSERT INTO Kategorien (Name, Wert) VALUES ("Studio/Publisher", "Ufotable");

-- Produkte 

INSERT INTO Produkte (Produktname, Preis, Link, HauptkategorieID) VALUES ("Chocola und Vanilla Body Pillow", "49.9", "https://dakimakura.ch/shop/dakimakura/47-chocola-und-vanilla-nekopara-2473900000001.html", 2);
INSERT INTO Produkte (Produktname, Preis, Link, HauptkategorieID) VALUES ("Black Rock Shooter Body Pillow", "49.9", "https://dakimakura.ch/shop/dakimakura/82-black-rock-shooter-black-rock-shooter-2473430000007.html", 2);
INSERT INTO Produkte (Produktname, Preis, Link, HauptkategorieID) VALUES ("Akame Body Pillow", "49.9", "https://dakimakura.ch/shop/dakimakura/21-akame-akame-ga-kill-2471600000000.html", 2);
INSERT INTO Produkte (Produktname, Preis, Link, HauptkategorieID) VALUES ("Gawr Gura Body Pillow", "49.9", "https://dakimakura.ch/shop/dakimakura/438-gura-vtube-2474800000009.html", 2);
INSERT INTO Produkte (Produktname, Preis, Link, HauptkategorieID) VALUES ("Hu Tao Body Pillow", "49.9", "https://dakimakura.ch/shop/dakimakura/449-hu-tao-genshin-impact-2472680000003.html", 2);
INSERT INTO Produkte (Produktname, Preis, Link, HauptkategorieID) VALUES ("Yoshino Body Pillow", "49.9", "https://dakimakura.ch/shop/dakimakura/290-yoshino-date-a-live-2477600000002.html", 2);
INSERT INTO Produkte (Produktname, Preis, Link, HauptkategorieID) VALUES ("Your Name", "26", "https://www.jeeg.ch/Your-Name-Gestern-heute-und-fuer-immer-Blu-Ray", 1);
INSERT INTO Produkte (Produktname, Preis, Link, HauptkategorieID) VALUES ("Weathering with you", "12", "https://www.jeeg.ch/Weathering-With-You-Das-Maedchen-das-die-Sonne-beruehrte-Blu-Ray", 1);
INSERT INTO Produkte (Produktname, Preis, Link, HauptkategorieID) VALUES ("Spirited away", "10", "https://www.exlibris.ch/de/filme/film-dvd/sprecherbr-rumi-hragi/chihiros-reise-ins-zauberland/id/0828765328999", 1);
INSERT INTO Produkte (Produktname, Preis, Link, HauptkategorieID) VALUES ("Das wandelnde Schloss", "14", "https://www.exlibris.ch/de/filme/film-dvd/sprecherbr-chieko-baisho/das-wandelnde-schloss/id/0828767511597", 1);
INSERT INTO Produkte (Produktname, Preis, Link, HauptkategorieID) VALUES ("Mein Nachbar Totoro", "10", "https://www.exlibris.ch/de/filme/film-dvd/noriko-hidaka/mein-nachbar-totoro/id/0828767511696", 1);
INSERT INTO Produkte (Produktname, Preis, Link, HauptkategorieID) VALUES ("Prinzessin Mononoke", "12", "https://www.exlibris.ch/de/filme/film-dvd/deutsche-sprecherbr-alexander-brem/prinzessin-mononoke/id/0828765639798", 1);
INSERT INTO Produkte (Produktname, Preis, Link, HauptkategorieID) VALUES ("Rengoku Kyojuro", "120", "https://www.jeeg.ch/Demon-Slayer-Kimetsu-no-Yaiba-Pop-Up-Parade-PVC-Statue-Kyojuro-Rengoku-17-cm", 3);
INSERT INTO Produkte (Produktname, Preis, Link, HauptkategorieID) VALUES ("Shiro Nai", "64.9", "https://www.jeeg.ch/No-Game-No-Life-Statue-1-7-Shiro-Alice-in-Wonderland-Ver-24-cm", 3);
INSERT INTO Produkte (Produktname, Preis, Link, HauptkategorieID) VALUES ("Kirigaya Kirito", "29.9", "https://www.jeeg.ch/Sword-Art-Online-Progressive-Aria-of-a-Starless-Night-Pop-Up-Parade-Statue-Kirito-18-cm", 3);
INSERT INTO Produkte (Produktname, Preis, Link, HauptkategorieID) VALUES ("Mydoria Izuku", "72.9", "https://www.jeeg.ch/My-Hero-Academia-PVC-Statue-1-4-Izuku-Midoriya-35-cm", 3);
INSERT INTO Produkte (Produktname, Preis, Link, HauptkategorieID) VALUES ("Ackermann Levi", "49.9", "https://www.jeeg.ch/FIGMA-Attack-on-Titan-Levi", 3);
INSERT INTO Produkte (Produktname, Preis, Link, HauptkategorieID) VALUES ("Yatogami Tohka", "149.9", "https://www.allblue-world.de/shop/o-s/statuen-buesten-figuren/8662/date-a-live-tohka-yatogami-statue-good-smile-company", 3);
INSERT INTO Produkte (Produktname, Preis, Link, HauptkategorieID) VALUES ("No Game no Life", "16.9", "https://www.jeeg.ch/No-Game-No-Life-vol-1-Light-Novel", 4);
INSERT INTO Produkte (Produktname, Preis, Link, HauptkategorieID) VALUES ("Overlord", "16.9", "https://www.jeeg.ch/Overlord-Der-untote-Koenig-Bd-1-Light-Novel", 4);
INSERT INTO Produkte (Produktname, Preis, Link, HauptkategorieID) VALUES ("Date a Live", "14.9", "https://www.jeeg.ch/Date-A-Live-vol-1-Light-Novel", 4);
INSERT INTO Produkte (Produktname, Preis, Link, HauptkategorieID) VALUES ("Death Note", "12.9", "https://www.jeeg.ch/Death-Note-Light-up-the-new-World-Novel", 4);
INSERT INTO Produkte (Produktname, Preis, Link, HauptkategorieID) VALUES ("Konosuba", "14.9", "https://www.jeeg.ch/Kono-Suba-Oh-Meine-nutzlose-Goettin-Bd-1-Light-Novel", 4);
INSERT INTO Produkte (Produktname, Preis, Link, HauptkategorieID) VALUES ("The Rising of the Shield Hero", "16.9", "https://www.jeeg.ch/The-Rising-of-the-Shield-Hero-Bd-1-Light-Novel", 4);
INSERT INTO Produkte (Produktname, Preis, Link, HauptkategorieID) VALUES ("Attack on Titan BD. 1", "29.9", "https://www.jeeg.ch/Attack-on-Titan-Lost-Girls-Bd-1", 5);
INSERT INTO Produkte (Produktname, Preis, Link, HauptkategorieID) VALUES ("Food Wars BD. 1", "29.9", "https://www.jeeg.ch/Food-Wars-Shokugeki-no-Soma-Bd-1", 5);
INSERT INTO Produkte (Produktname, Preis, Link, HauptkategorieID) VALUES ("Chainsawman BD. 1", "9.9", "https://www.jeeg.ch/Chainsaw-Man-Bd-5", 5);
INSERT INTO Produkte (Produktname, Preis, Link, HauptkategorieID) VALUES ("Demon Slayer BD. 1", "14.5", "https://www.jeeg.ch/Demon-Slayer-Kimetsu-no-Yaiba-Bd-1", 5);
INSERT INTO Produkte (Produktname, Preis, Link, HauptkategorieID) VALUES ("Jujutsu Kaisen BD. 1", "10.5", "https://www.jeeg.ch/Jujutsu-Kaisen-Bd-1", 5);
INSERT INTO Produkte (Produktname, Preis, Link, HauptkategorieID) VALUES ("My Hero Academia BD. 1", "9.9", "https://www.jeeg.ch/My-Hero-Academia-Team-Up-Mission-Bd-1", 5);
INSERT INTO Produkte (Produktname, Preis, Link, HauptkategorieID) VALUES ("That Time I Got Reincarnated as a Slime BD. 1", "18.5", "https://www.exlibris.ch/de/buecher-buch/english-books/fuse/that-time-i-got-reincarnated-as-a-slime-1/id/9781632365064", 5);

-- Produktkategorien 

INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (1, 16);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (1, 35);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (2, 3);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (2, 35);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (3, 1);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (3, 35);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (4, 22);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (4, 35);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (4, 55);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (5, 10);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (5, 35);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (6, 5);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (6, 35);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (7, 24);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (7, 39);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (7, 46);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (8, 23);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (8, 39);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (8, 46);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (9, 11);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (9, 39);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (9, 57);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (10, 11);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (10, 33);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (10, 57);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (11, 11);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (11, 33);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (11, 57);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (12, 11);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (12, 33);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (12, 57);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (13, 8);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (13, 25);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (13, 54);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (14, 17);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (14, 25);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (15, 20);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (15, 37);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (15, 54);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (16, 15);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (16, 42);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (17, 2);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (17, 25);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (17, 48);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (18, 6);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (18, 25);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (18, 49);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (19, 18);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (19, 26);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (19, 53);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (20, 19);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (20, 27);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (20, 53);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (21, 5);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (21, 40);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (21, 44);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (22, 7);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (22, 41);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (22, 53);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (23, 14);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (23, 34);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (23, 56);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (24, 21);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (24, 30);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (24, 51);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (25, 2);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (25, 28);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (25, 52);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (26, 9);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (26, 36);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (26, 50);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (27, 4);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (27, 29);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (27, 52);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (28, 8);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (28, 38);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (28, 58);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (29, 13);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (29, 31);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (29, 52);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (30, 15);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (30, 43);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (30, 45);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (31, 12);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (31, 32);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (31, 47);

-- Kunden
INSERT INTO Kunden (
  ID, Vorname, Nachname, Email, Adresse, 
  PLZ, Ort
) 
VALUES 
  (
    1, "Manfred", "Mustermann", "manfred.mustermann@muster.ch", 
    "Musterstrasse 1", "1000", "Musterhausen"
  );
INSERT INTO Kunden (
  ID, Vorname, Nachname, Email, Adresse, 
  PLZ, Ort
) 
VALUES 
  (
    2, "Erika", "Mustermann", "erika.mustermann@muster.ch", 
    "Musterstrasse 3", "5410", "Musterville"
  );
INSERT INTO Kunden (
  ID, Vorname, Nachname, Email, Adresse, 
  PLZ, Ort
) 
VALUES 
  (
    3, "Philipp", "Heer", "philipp.heer@muster.ch", 
    "Hofstrasse 4", "8421", "Lostorf"
  );
INSERT INTO Kunden (
  ID, Vorname, Nachname, Email, Adresse, 
  PLZ, Ort
) 
VALUES 
  (
    4, "Mariano", "Pfister", "mariano.pfister@muster.ch", 
    "Surseestrasse 5", "6210", "Sursee"
  );
INSERT INTO Kunden (
  ID, Vorname, Nachname, Email, Adresse, 
  PLZ, Ort
) 
VALUES 
  (
    5, "Jeremy", "Hegele", "jeremy.Hegele@muster.ch", 
    "Bernhof 2", "6206", "Neuenkirch"
  );
  
-- Bestellungen
INSERT INTO Bestellungen (ID, KundenID, Bestellungsstatus) 
VALUES 
  (1, 1, "Pendent");
INSERT INTO Bestellungen (ID, KundenID, Bestellungsstatus)  
VALUES 
  (2, 2, "Ausgelöst");
INSERT INTO Bestellungen (ID, KundenID, Bestellungsstatus) 
VALUES 
  (3, 3, "Versendet");
INSERT INTO Bestellungen (ID, KundenID, Bestellungsstatus) 
VALUES 
  (4, 4, "Abgeschlossen");
INSERT INTO Bestellungen (ID, KundenID, Bestellungsstatus)  
VALUES 
  (5, 5, "Erhalten");
  
-- Kunden_Bestellungen
INSERT INTO Kunden_Bestellungen (KundenID, BestellungenID) VALUES (1, 1);
INSERT INTO Kunden_Bestellungen (KundenID, BestellungenID) VALUES (2, 2);
INSERT INTO Kunden_Bestellungen (KundenID, BestellungenID) VALUES (3, 3);
INSERT INTO Kunden_Bestellungen (KundenID, BestellungenID) VALUES (4, 4);
INSERT INTO Kunden_Bestellungen (KundenID, BestellungenID) VALUES (5, 5);

-- Kunden_Produkte
INSERT INTO Kunden_Produkte (KundenID, ProduktID) VALUES (1, 1);
INSERT INTO Kunden_Produkte (KundenID, ProduktID) VALUES (2, 2);
INSERT INTO Kunden_Produkte (KundenID, ProduktID) VALUES (3, 3);
INSERT INTO Kunden_Produkte (KundenID, ProduktID) VALUES (4, 4);
INSERT INTO Kunden_Produkte (KundenID, ProduktID) VALUES (5, 5);
  
-- Produkte_Bestellungen
INSERT INTO Produkte_Bestellungen (ProduktID, BestellungenID) VALUES (1, 1);
INSERT INTO Produkte_Bestellungen (ProduktID, BestellungenID) VALUES (2, 2);
INSERT INTO Produkte_Bestellungen (ProduktID, BestellungenID) VALUES (3, 3);
INSERT INTO Produkte_Bestellungen (ProduktID, BestellungenID) VALUES (4, 4);
INSERT INTO Produkte_Bestellungen (ProduktID, BestellungenID) VALUES (5, 5);


 

SELECT * FROM Hauptkategorien;	
SELECT * FROM Kategorien;	
SELECT * FROM Produkte;	
SELECT * FROM Produkte_Kategorien;
SELECT * FROM Kunden;
SELECT * FROM Kunden_Bestellungen;
SELECT * FROM Kunden_Produkte;
SELECT * FROM Bestellungen;
SELECT * FROM Produkte_Bestellungen;

/* Test: Hauptkategorien (Feature 2)
SELECT Produkte.Produktname, Produkte.Preis, Hauptkategorien.Name
FROM Produkte, Hauptkategorien
WHERE Produkte.HauptkategorieID = Hauptkategorien.ID;
*/

/*  Test: Kategorien (Feature 3)
SELECT Produkte.Produktname, Produkte.Preis, Kategorien.Name, Kategorien.Wert
FROM Produkte, Produkte_Kategorien, Kategorien
WHERE Produkte_Kategorien.ProduktID = Produkte.ID
AND Produkte_Kategorien.KategorieID = Kategorien.ID
AND Produkte.ID = 10;
*/