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
  Wert VARCHAR(1255) 
);

-- Kunden
CREATE TABLE Kunden (
  KundenID INTEGER NOT NULL AUTO_INCREMENT PRIMARY KEY,  
  Vorname VARCHAR(255),
  Nachname VARCHAR(1255), 
  Email VARCHAR (255)
);

-- Bestellungen
CREATE TABLE Bestellungen (
  BestellungID INTEGER NOT NULL AUTO_INCREMENT PRIMARY KEY,  
  KundenID VARCHAR(255),
  ProdukteID VARCHAR(1255) 
);

-- Bewertungen

CREATE TABLE Bewertungen ( 
  BewertungID InTEGER NOT NULL AUTO_INCREMENT PRIMARY KEY, 
  KundenID VARCHAR(255),
  ProdukteID VARCHAR(1255), 
  Bewertung VARCHAR (255) 
  );
  

-- n:m Beziehung "Kategorien beschreiben Produkte"
CREATE TABLE Produkte_Kategorien (
  ID INTEGER NOT NULL AUTO_INCREMENT PRIMARY KEY,
  ProduktID INTEGER, 
  KategorieID INTEGER
);


-- Hauptkategorien 

INSERT INTO Hauptkategorien (Name) VALUES ("Basketballschuh");
INSERT INTO Hauptkategorien (Name) VALUES ("Joggingschuh");
INSERT INTO Hauptkategorien (Name) VALUES ("Skatingschuh");

-- Kategorien 

INSERT INTO Kategorien (Name, Wert) VALUES ("Marke", "Adidas");
INSERT INTO Kategorien (Name, Wert) VALUES ("Marke", "Air Jordan");
INSERT INTO Kategorien (Name, Wert) VALUES ("Marke", "DC");
INSERT INTO Kategorien (Name, Wert) VALUES ("Marke", "Nike");
INSERT INTO Kategorien (Name, Wert) VALUES ("Marke", "Nike SB");
INSERT INTO Kategorien (Name, Wert) VALUES ("Marke", "Vans");
INSERT INTO Kategorien (Name, Wert) VALUES ("Grösse", "36");
INSERT INTO Kategorien (Name, Wert) VALUES ("Grösse", "37");
INSERT INTO Kategorien (Name, Wert) VALUES ("Grösse", "38");
INSERT INTO Kategorien (Name, Wert) VALUES ("Grösse", "39");
INSERT INTO Kategorien (Name, Wert) VALUES ("Grösse", "41");
INSERT INTO Kategorien (Name, Wert) VALUES ("Grösse", "42");
INSERT INTO Kategorien (Name, Wert) VALUES ("Grösse", "43");
INSERT INTO Kategorien (Name, Wert) VALUES ("Grösse", "44");
INSERT INTO Kategorien (Name, Wert) VALUES ("Material", "Leder");
INSERT INTO Kategorien (Name, Wert) VALUES ("Material", "Stoff");
INSERT INTO Kategorien (Name, Wert) VALUES ("Material", "Wildleder");
INSERT INTO Kategorien (Name, Wert) VALUES ("Farbe", "Ben & Jerry");
INSERT INTO Kategorien (Name, Wert) VALUES ("Farbe", "Dark Chocolate");
INSERT INTO Kategorien (Name, Wert) VALUES ("Farbe", "Koralle");
INSERT INTO Kategorien (Name, Wert) VALUES ("Farbe", "Schwarz");
INSERT INTO Kategorien (Name, Wert) VALUES ("Farbe", "blau");
INSERT INTO Kategorien (Name, Wert) VALUES ("Farbe", "div.");
INSERT INTO Kategorien (Name, Wert) VALUES ("Farbe", "oker");
INSERT INTO Kategorien (Name, Wert) VALUES ("Farbe", "schwarz");
INSERT INTO Kategorien (Name, Wert) VALUES ("Farbe", "weiss");
INSERT INTO Kategorien (Name, Wert) VALUES ("Farbe", "weiss/persian");
INSERT INTO Kategorien (Name, Wert) VALUES ("links", "https://restocks.net/de/p/air-jordan-15-retro-billie-eilish-w?size_id=23&valuta=CHF&country=CH&gclid=CjwKCAiAs92MBhAXEiwAXTi25x2jIDXmqGEnkdgi_4dCfdsJ3B_Kmf0EvD2203hAjsPJowNNCeHcMBoC0NgQAvD_BwE");
INSERT INTO Kategorien (Name, Wert) VALUES ("links", "https://restocks.net/de/p/nike-sb-dunk-low-what-the-paul?size_id=48&valuta=CHF&country=CH&gclid=CjwKCAiAs92MBhAXEiwAXTi2597QyS_GDBWdO2o7TLiKaSwrpTItf7Oa3hyvPh6CIXGT2bhQ0FoeIhoCNqIQAvD_BwE");
INSERT INTO Kategorien (Name, Wert) VALUES ("links", "https://stockx.com/air-jordan-1-retro-high-j-balvin");
INSERT INTO Kategorien (Name, Wert) VALUES ("links", "https://stockx.com/nike-sb-dunk-low-ben-jerrys-chunky-dunky-ff-packaging");
INSERT INTO Kategorien (Name, Wert) VALUES ("links", "https://www.blue-tomato.com/de-CH/product/DC-Switch+Skateschuhe-614704/?colid=dark+chocolate+wheat+gum");
INSERT INTO Kategorien (Name, Wert) VALUES ("links", "https://www.farfetch.com/de/shopping/men/jordan-air-jordan-8-retro-db-sneakers-item-14285861.aspx");
INSERT INTO Kategorien (Name, Wert) VALUES ("links", "https://www.nike.com/ch/t/lebron-witness-6-basketballschuh-ZW0zn5/CZ4052-100");
INSERT INTO Kategorien (Name, Wert) VALUES ("links", "https://www.nike.com/ch/t/lebron-witness-6-basketballschuh-ZW0zn5/CZ4052-101");
INSERT INTO Kategorien (Name, Wert) VALUES ("links", "https://www.nike.com/ch/t/lebron-witness-6-basketballschuh-ZW0zn5/CZ4052-102");
INSERT INTO Kategorien (Name, Wert) VALUES ("links", "https://www.nike.com/ch/t/lebron-witness-6-basketballschuh-ZW0zn5/CZ4052-103");
INSERT INTO Kategorien (Name, Wert) VALUES ("links", "https://www.skatedeluxe.ch/en/adidas-skateboarding-x-gonz-superstar-shoes-core-black-core-black-core-black_p148718?gclid=CjwKCAiAs92MBhAXEiwAXTi25_NS6Aubc-NVTb9T0kUxAve-v1us2uYhaeUfwsQ3dEJBOm4bnM-1ARoCw9kQAvD_BwE&cPath=216");
INSERT INTO Kategorien (Name, Wert) VALUES ("links", "https://www.skatedeluxe.ch/en/adidas-skateboarding-x-gonz-superstar-shoes-core-black-core-black-core-black_p148718?gclid=CjwKCAiAs92MBhAXEiwAXTi25_NS6Aubc-NVTb9T0kUxAve-v1us2uYhaeUfwsQ3dEJBOm4bnM-1ARoCw9kQAvD_BwE&cPath=217");
INSERT INTO Kategorien (Name, Wert) VALUES ("links", "https://www.skatedeluxe.ch/en/adidas-skateboarding-x-gonz-superstar-shoes-core-black-core-black-core-black_p148718?gclid=CjwKCAiAs92MBhAXEiwAXTi25_NS6Aubc-NVTb9T0kUxAve-v1us2uYhaeUfwsQ3dEJBOm4bnM-1ARoCw9kQAvD_BwE&cPath=218");
INSERT INTO Kategorien (Name, Wert) VALUES ("links", "https://www.skatedeluxe.ch/en/adidas-skateboarding-x-gonz-superstar-shoes-core-black-core-black-core-black_p148718?gclid=CjwKCAiAs92MBhAXEiwAXTi25_NS6Aubc-NVTb9T0kUxAve-v1us2uYhaeUfwsQ3dEJBOm4bnM-1ARoCw9kQAvD_BwE&cPath=219");
INSERT INTO Kategorien (Name, Wert) VALUES ("links", "https://www.skatedeluxe.ch/en/nike-sb-air-max-janoski-2-shoes-black-anthracite-white_p121134?price=150-180&cPath=216");
INSERT INTO Kategorien (Name, Wert) VALUES ("links", "https://www.skatedeluxe.ch/en/nike-sb-air-max-janoski-2-shoes-black-anthracite-white_p121134?price=150-180&cPath=217");
INSERT INTO Kategorien (Name, Wert) VALUES ("links", "https://www.skatedeluxe.ch/en/nike-sb-air-max-janoski-2-shoes-black-anthracite-white_p121134?price=150-180&cPath=218");
INSERT INTO Kategorien (Name, Wert) VALUES ("links", "https://www.skatedeluxe.ch/en/nike-sb-air-max-janoski-2-shoes-black-anthracite-white_p121134?price=150-180&cPath=219");
INSERT INTO Kategorien (Name, Wert) VALUES ("links", "https://www.skatedeluxe.ch/en/nike-sb-zoom-blazer-mid-premium-shoes-dark-wine-black-pink-oxford_p146716?gclid=CjwKCAiAs92MBhAXEiwAXTi25_NS6Aubc-NVTb9T0kUxAve-v1us2uYhaeUfwsQ3dEJBOm4bnM-1ARoCw9kQAvD_BwE&cPath=216");
INSERT INTO Kategorien (Name, Wert) VALUES ("links", "https://www.skatedeluxe.ch/en/nike-sb-zoom-blazer-mid-premium-shoes-dark-wine-black-pink-oxford_p146716?gclid=CjwKCAiAs92MBhAXEiwAXTi25_NS6Aubc-NVTb9T0kUxAve-v1us2uYhaeUfwsQ3dEJBOm4bnM-1ARoCw9kQAvD_BwE&cPath=217");
INSERT INTO Kategorien (Name, Wert) VALUES ("links", "https://www.skatedeluxe.ch/en/nike-sb-zoom-blazer-mid-premium-shoes-dark-wine-black-pink-oxford_p146716?gclid=CjwKCAiAs92MBhAXEiwAXTi25_NS6Aubc-NVTb9T0kUxAve-v1us2uYhaeUfwsQ3dEJBOm4bnM-1ARoCw9kQAvD_BwE&cPath=218");
INSERT INTO Kategorien (Name, Wert) VALUES ("links", "https://www.skatedeluxe.ch/en/nike-sb-zoom-blazer-mid-premium-shoes-dark-wine-black-pink-oxford_p146716?gclid=CjwKCAiAs92MBhAXEiwAXTi25_NS6Aubc-NVTb9T0kUxAve-v1us2uYhaeUfwsQ3dEJBOm4bnM-1ARoCw9kQAvD_BwE&cPath=219");
INSERT INTO Kategorien (Name, Wert) VALUES ("links", "https://www.skatedeluxe.ch/en/nike-sb-zoom-blazer-mid-shoes-summit-white-lobster_p148380?gclid=CjwKCAiAs92MBhAXEiwAXTi25_NS6Aubc-NVTb9T0kUxAve-v1us2uYhaeUfwsQ3dEJBOm4bnM-1ARoCw9kQAvD_BwE&cPath=216");
INSERT INTO Kategorien (Name, Wert) VALUES ("links", "https://www.skatedeluxe.ch/en/nike-sb-zoom-blazer-mid-shoes-summit-white-lobster_p148380?gclid=CjwKCAiAs92MBhAXEiwAXTi25_NS6Aubc-NVTb9T0kUxAve-v1us2uYhaeUfwsQ3dEJBOm4bnM-1ARoCw9kQAvD_BwE&cPath=217");
INSERT INTO Kategorien (Name, Wert) VALUES ("links", "https://www.skatedeluxe.ch/en/nike-sb-zoom-blazer-mid-shoes-summit-white-lobster_p148380?gclid=CjwKCAiAs92MBhAXEiwAXTi25_NS6Aubc-NVTb9T0kUxAve-v1us2uYhaeUfwsQ3dEJBOm4bnM-1ARoCw9kQAvD_BwE&cPath=218");
INSERT INTO Kategorien (Name, Wert) VALUES ("links", "https://www.skatedeluxe.ch/en/nike-sb-zoom-blazer-mid-shoes-summit-white-lobster_p148380?gclid=CjwKCAiAs92MBhAXEiwAXTi25_NS6Aubc-NVTb9T0kUxAve-v1us2uYhaeUfwsQ3dEJBOm4bnM-1ARoCw9kQAvD_BwE&cPath=219");
INSERT INTO Kategorien (Name, Wert) VALUES ("links", "https://www.skatedeluxe.ch/en/vans-wayvee-shoes-tyson-black-asphalt_p145371?gclid=CjwKCAiAs92MBhAXEiwAXTi25_NS6Aubc-NVTb9T0kUxAve-v1us2uYhaeUfwsQ3dEJBOm4bnM-1ARoCw9kQAvD_BwE&cPath=216");
INSERT INTO Kategorien (Name, Wert) VALUES ("links", "https://www.skatedeluxe.ch/en/vans-wayvee-shoes-tyson-black-asphalt_p145371?gclid=CjwKCAiAs92MBhAXEiwAXTi25_NS6Aubc-NVTb9T0kUxAve-v1us2uYhaeUfwsQ3dEJBOm4bnM-1ARoCw9kQAvD_BwE&cPath=217");
INSERT INTO Kategorien (Name, Wert) VALUES ("links", "https://www.skatedeluxe.ch/en/vans-wayvee-shoes-tyson-black-asphalt_p145371?gclid=CjwKCAiAs92MBhAXEiwAXTi25_NS6Aubc-NVTb9T0kUxAve-v1us2uYhaeUfwsQ3dEJBOm4bnM-1ARoCw9kQAvD_BwE&cPath=218");
INSERT INTO Kategorien (Name, Wert) VALUES ("links", "https://www.skatedeluxe.ch/en/vans-wayvee-shoes-tyson-black-asphalt_p145371?gclid=CjwKCAiAs92MBhAXEiwAXTi25_NS6Aubc-NVTb9T0kUxAve-v1us2uYhaeUfwsQ3dEJBOm4bnM-1ARoCw9kQAvD_BwE&cPath=219");
INSERT INTO Kategorien (Name, Wert) VALUES ("links", "https://www.zalando.ch/jordan-air-xxxv-low-basketballschuh-whitemulticolordeep-royal-blue-joc42a047-a11.html?size=44&allophones=0&wmc=SEM410_NB_GO._4127843883_699138180_130009805178.&opc=2211&mpp=google%7cv1%7c%7cpla-392044799172%7c%7c1003055%7c%7cg%7cc%7c%7c555139573388%7c%7cpla%7cJOC42A047-A110010000%7c392044799172%7c1%7c&gclid=CjwKCAiAs92MBhAXEiwAXTi25zl4GimhYzhluiTJHIvDDX_sa3eGO2KAnM-JW9lVisSPNefcOIzEOhoCgbEQAvD_BwE&gclsrc=aw.ds");
INSERT INTO Kategorien (Name, Wert) VALUES ("links", "https://www.zappos.com/p/adidas-running-alphabounce-1-black-scarlet-grey/product/9509765/color/622528");
INSERT INTO Kategorien (Name, Wert) VALUES ("links", "https://www.zappos.com/p/adidas-running-alphabounce-1-black-scarlet-grey/product/9509765/color/622529");
INSERT INTO Kategorien (Name, Wert) VALUES ("links", "https://www.zappos.com/p/adidas-running-alphabounce-1-black-scarlet-grey/product/9509765/color/622530");
INSERT INTO Kategorien (Name, Wert) VALUES ("links", "https://www.zappos.com/p/adidas-running-alphabounce-1-black-scarlet-grey/product/9509765/color/622531");

-- Produkte 

INSERT INTO Produkte (Produktname, Preis, Link, HauptkategorieID) VALUES ("Air Jordan 2 J balvin", "460", "", 1);
INSERT INTO Produkte (Produktname, Preis, Link, HauptkategorieID) VALUES ("Air Jordan 2 J balvin", "460", "", 1);
INSERT INTO Produkte (Produktname, Preis, Link, HauptkategorieID) VALUES ("Air Jordan 2 J balvin", "460", "", 1);
INSERT INTO Produkte (Produktname, Preis, Link, HauptkategorieID) VALUES ("Air Jordan 2 J balvin", "460", "", 1);
INSERT INTO Produkte (Produktname, Preis, Link, HauptkategorieID) VALUES ("Jordan AIR 8 Retro DB Sneaker", "2194", "", 1);
INSERT INTO Produkte (Produktname, Preis, Link, HauptkategorieID) VALUES ("Jordan AIR 8 Retro DB Sneaker", "2194", "", 1);
INSERT INTO Produkte (Produktname, Preis, Link, HauptkategorieID) VALUES ("Jordan AIR 8 Retro DB Sneaker", "2194", "", 1);
INSERT INTO Produkte (Produktname, Preis, Link, HauptkategorieID) VALUES ("Jordan AIR 8 Retro DB Sneaker", "2194", "", 1);
INSERT INTO Produkte (Produktname, Preis, Link, HauptkategorieID) VALUES ("Jordan AIR XXXV LOW", "120", "", 1);
INSERT INTO Produkte (Produktname, Preis, Link, HauptkategorieID) VALUES ("Jordan AIR XXXV LOW", "120", "", 1);
INSERT INTO Produkte (Produktname, Preis, Link, HauptkategorieID) VALUES ("Jordan AIR XXXV LOW", "120", "", 1);
INSERT INTO Produkte (Produktname, Preis, Link, HauptkategorieID) VALUES ("Jordan AIR XXXV LOW", "120", "", 1);
INSERT INTO Produkte (Produktname, Preis, Link, HauptkategorieID) VALUES ("Air Jordan 15 Retro Bilie Eilish (W)", "270", "", 1);
INSERT INTO Produkte (Produktname, Preis, Link, HauptkategorieID) VALUES ("Air Jordan 15 Retro Bilie Eilish (W)", "270", "", 1);
INSERT INTO Produkte (Produktname, Preis, Link, HauptkategorieID) VALUES ("Air Jordan 15 Retro Bilie Eilish (W)", "270", "", 1);
INSERT INTO Produkte (Produktname, Preis, Link, HauptkategorieID) VALUES ("Air Jordan 15 Retro Bilie Eilish (W)", "270", "", 1);
INSERT INTO Produkte (Produktname, Preis, Link, HauptkategorieID) VALUES ("LeBron Witness 6", "150", "", 1);
INSERT INTO Produkte (Produktname, Preis, Link, HauptkategorieID) VALUES ("LeBron Witness 6", "150", "", 1);
INSERT INTO Produkte (Produktname, Preis, Link, HauptkategorieID) VALUES ("LeBron Witness 6", "150", "", 1);
INSERT INTO Produkte (Produktname, Preis, Link, HauptkategorieID) VALUES ("LeBron Witness 6", "150", "", 1);
INSERT INTO Produkte (Produktname, Preis, Link, HauptkategorieID) VALUES ("Nike SB Dunk Low What The Paul", "429", "", 3);
INSERT INTO Produkte (Produktname, Preis, Link, HauptkategorieID) VALUES ("Nike SB Dunk Low What The Paul", "430", "", 3);
INSERT INTO Produkte (Produktname, Preis, Link, HauptkategorieID) VALUES ("Nike SB Dunk Low What The Paul", "431", "", 3);
INSERT INTO Produkte (Produktname, Preis, Link, HauptkategorieID) VALUES ("Nike SB Dunk Low What The Paul", "432", "", 3);
INSERT INTO Produkte (Produktname, Preis, Link, HauptkategorieID) VALUES ("Nike SB Dunk Low Ben & Jerrys Chunky Dunky", "1800", "", 3);
INSERT INTO Produkte (Produktname, Preis, Link, HauptkategorieID) VALUES ("Nike SB Dunk Low Ben & Jerrys Chunky Dunky", "1801", "", 3);
INSERT INTO Produkte (Produktname, Preis, Link, HauptkategorieID) VALUES ("Nike SB Dunk Low Ben & Jerrys Chunky Dunky", "1802", "", 3);
INSERT INTO Produkte (Produktname, Preis, Link, HauptkategorieID) VALUES ("Nike SB Dunk Low Ben & Jerrys Chunky Dunky", "1803", "", 3);
INSERT INTO Produkte (Produktname, Preis, Link, HauptkategorieID) VALUES ("ADIDAS SKATEBOARDING X GONZ SUPERSTAR SHOES", "110", "", 3);
INSERT INTO Produkte (Produktname, Preis, Link, HauptkategorieID) VALUES ("ADIDAS SKATEBOARDING X GONZ SUPERSTAR SHOES", "111", "", 3);
INSERT INTO Produkte (Produktname, Preis, Link, HauptkategorieID) VALUES ("ADIDAS SKATEBOARDING X GONZ SUPERSTAR SHOES", "112", "", 3);
INSERT INTO Produkte (Produktname, Preis, Link, HauptkategorieID) VALUES ("ADIDAS SKATEBOARDING X GONZ SUPERSTAR SHOES", "113", "", 3);
INSERT INTO Produkte (Produktname, Preis, Link, HauptkategorieID) VALUES ("NIKE SB ZOOM BLAZER MID SHOES (SUMMIT WHITE LOBSTER)", "95", "", 3);
INSERT INTO Produkte (Produktname, Preis, Link, HauptkategorieID) VALUES ("NIKE SB ZOOM BLAZER MID SHOES (SUMMIT WHITE LOBSTER)", "96", "", 3);
INSERT INTO Produkte (Produktname, Preis, Link, HauptkategorieID) VALUES ("NIKE SB ZOOM BLAZER MID SHOES (SUMMIT WHITE LOBSTER)", "97", "", 3);
INSERT INTO Produkte (Produktname, Preis, Link, HauptkategorieID) VALUES ("NIKE SB ZOOM BLAZER MID SHOES (SUMMIT WHITE LOBSTER)", "98", "", 3);
INSERT INTO Produkte (Produktname, Preis, Link, HauptkategorieID) VALUES ("NIKE SB ZOOM BLAZER MID PREMIUM SHOES (DARK WINE BLACK PINK OXFORD)", "110", "", 3);
INSERT INTO Produkte (Produktname, Preis, Link, HauptkategorieID) VALUES ("NIKE SB ZOOM BLAZER MID PREMIUM SHOES (DARK WINE BLACK PINK OXFORD)", "111", "", 3);
INSERT INTO Produkte (Produktname, Preis, Link, HauptkategorieID) VALUES ("NIKE SB ZOOM BLAZER MID PREMIUM SHOES (DARK WINE BLACK PINK OXFORD)", "112", "", 3);
INSERT INTO Produkte (Produktname, Preis, Link, HauptkategorieID) VALUES ("NIKE SB ZOOM BLAZER MID PREMIUM SHOES (DARK WINE BLACK PINK OXFORD)", "113", "", 3);
INSERT INTO Produkte (Produktname, Preis, Link, HauptkategorieID) VALUES ("VANS WAYVEE SHOES (TYSON BLACK ASPHALT)", "110", "", 3);
INSERT INTO Produkte (Produktname, Preis, Link, HauptkategorieID) VALUES ("VANS WAYVEE SHOES (TYSON BLACK ASPHALT)", "111", "", 3);
INSERT INTO Produkte (Produktname, Preis, Link, HauptkategorieID) VALUES ("VANS WAYVEE SHOES (TYSON BLACK ASPHALT)", "112", "", 3);
INSERT INTO Produkte (Produktname, Preis, Link, HauptkategorieID) VALUES ("VANS WAYVEE SHOES (TYSON BLACK ASPHALT)", "113", "", 3);
INSERT INTO Produkte (Produktname, Preis, Link, HauptkategorieID) VALUES ("NIKE SB AIR MAX JANOSKI 2 SHOES (BLACK ANTHRACITE WHITE)", "160", "", 3);
INSERT INTO Produkte (Produktname, Preis, Link, HauptkategorieID) VALUES ("NIKE SB AIR MAX JANOSKI 2 SHOES (BLACK ANTHRACITE WHITE)", "161", "", 3);
INSERT INTO Produkte (Produktname, Preis, Link, HauptkategorieID) VALUES ("NIKE SB AIR MAX JANOSKI 2 SHOES (BLACK ANTHRACITE WHITE)", "162", "", 3);
INSERT INTO Produkte (Produktname, Preis, Link, HauptkategorieID) VALUES ("NIKE SB AIR MAX JANOSKI 2 SHOES (BLACK ANTHRACITE WHITE)", "163", "", 3);
INSERT INTO Produkte (Produktname, Preis, Link, HauptkategorieID) VALUES ("DC SWITCH SKATESCHUHE", "75", "", 3);
INSERT INTO Produkte (Produktname, Preis, Link, HauptkategorieID) VALUES ("DC SWITCH SKATESCHUHE", "76", "", 3);
INSERT INTO Produkte (Produktname, Preis, Link, HauptkategorieID) VALUES ("DC SWITCH SKATESCHUHE", "77", "", 3);
INSERT INTO Produkte (Produktname, Preis, Link, HauptkategorieID) VALUES ("DC SWITCH SKATESCHUHE", "78", "", 3);
INSERT INTO Produkte (Produktname, Preis, Link, HauptkategorieID) VALUES ("adidas RunningAlphabounce 1", "100", "", 2);
INSERT INTO Produkte (Produktname, Preis, Link, HauptkategorieID) VALUES ("adidas RunningAlphabounce 2", "101", "", 2);
INSERT INTO Produkte (Produktname, Preis, Link, HauptkategorieID) VALUES ("adidas RunningAlphabounce 3", "102", "", 2);
INSERT INTO Produkte (Produktname, Preis, Link, HauptkategorieID) VALUES ("adidas RunningAlphabounce 4", "103", "", 2);

-- Produktkategorien 

INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (1, 2);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (1, 11);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (1, 16);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (1, 23);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (1, 30);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (2, 2);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (2, 12);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (2, 16);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (2, 23);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (2, 30);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (3, 2);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (3, 13);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (3, 16);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (3, 23);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (3, 30);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (4, 2);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (4, 14);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (4, 16);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (4, 23);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (4, 30);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (5, 2);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (5, 11);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (5, 15);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (5, 22);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (5, 33);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (6, 2);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (6, 12);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (6, 15);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (6, 22);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (6, 33);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (7, 2);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (7, 13);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (7, 15);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (7, 22);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (7, 33);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (8, 2);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (8, 14);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (8, 15);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (8, 22);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (8, 33);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (9, 2);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (9, 11);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (9, 15);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (9, 26);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (9, 58);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (10, 2);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (10, 12);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (10, 15);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (10, 26);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (10, 58);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (11, 2);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (11, 13);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (11, 15);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (11, 26);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (11, 58);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (12, 2);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (12, 14);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (12, 15);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (12, 26);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (12, 58);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (13, 2);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (13, 7);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (13, 15);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (13, 24);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (13, 28);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (14, 2);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (14, 8);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (14, 15);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (14, 24);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (14, 28);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (15, 2);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (15, 9);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (15, 15);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (15, 24);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (15, 28);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (16, 2);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (16, 10);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (16, 15);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (16, 24);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (16, 28);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (17, 4);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (17, 11);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (17, 16);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (17, 27);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (17, 34);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (18, 4);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (18, 12);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (18, 16);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (18, 27);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (18, 35);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (19, 4);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (19, 13);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (19, 16);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (19, 27);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (19, 36);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (20, 4);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (20, 14);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (20, 16);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (20, 27);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (20, 37);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (21, 5);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (21, 11);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (21, 15);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (21, 23);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (21, 29);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (22, 5);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (22, 12);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (22, 15);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (22, 23);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (22, 29);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (23, 5);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (23, 13);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (23, 15);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (23, 23);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (23, 29);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (24, 5);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (24, 14);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (24, 15);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (24, 23);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (24, 29);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (25, 5);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (25, 11);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (25, 15);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (25, 18);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (25, 31);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (26, 5);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (26, 12);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (26, 15);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (26, 18);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (26, 31);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (27, 5);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (27, 13);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (27, 15);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (27, 18);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (27, 31);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (28, 5);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (28, 14);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (28, 15);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (28, 18);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (28, 31);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (29, 1);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (29, 11);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (29, 15);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (29, 25);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (29, 38);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (30, 1);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (30, 12);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (30, 15);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (30, 25);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (30, 39);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (31, 1);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (31, 13);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (31, 15);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (31, 25);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (31, 40);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (32, 1);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (32, 14);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (32, 15);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (32, 25);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (32, 41);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (33, 5);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (33, 11);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (33, 17);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (33, 20);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (33, 50);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (34, 5);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (34, 12);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (34, 17);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (34, 20);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (34, 51);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (35, 5);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (35, 13);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (35, 17);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (35, 20);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (35, 52);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (36, 5);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (36, 14);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (36, 17);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (36, 20);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (36, 53);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (37, 5);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (37, 11);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (37, 17);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (37, 23);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (37, 46);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (38, 5);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (38, 12);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (38, 17);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (38, 23);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (38, 47);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (39, 5);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (39, 13);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (39, 17);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (39, 23);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (39, 48);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (40, 5);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (40, 14);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (40, 17);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (40, 23);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (40, 49);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (41, 6);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (41, 11);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (41, 17);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (41, 25);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (41, 54);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (42, 6);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (42, 12);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (42, 17);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (42, 25);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (42, 55);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (43, 6);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (43, 13);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (43, 17);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (43, 25);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (43, 56);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (44, 6);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (44, 14);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (44, 17);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (44, 25);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (44, 57);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (45, 5);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (45, 11);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (45, 16);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (45, 21);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (45, 42);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (46, 5);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (46, 12);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (46, 16);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (46, 21);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (46, 43);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (47, 5);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (47, 13);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (47, 16);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (47, 21);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (47, 44);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (48, 5);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (48, 14);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (48, 16);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (48, 21);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (48, 45);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (49, 3);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (49, 11);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (49, 15);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (49, 19);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (49, 32);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (50, 3);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (50, 12);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (50, 15);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (50, 19);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (50, 32);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (51, 3);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (51, 13);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (51, 15);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (51, 19);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (51, 32);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (52, 3);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (52, 14);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (52, 15);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (52, 19);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (52, 32);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (53, 1);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (53, 11);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (53, 16);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (53, 21);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (53, 59);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (54, 1);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (54, 12);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (54, 16);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (54, 21);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (54, 60);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (55, 1);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (55, 13);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (55, 16);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (55, 21);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (55, 61);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (56, 1);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (56, 14);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (56, 16);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (56, 21);
INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES (56, 62);

 -- Kunden
 INSERT INTO Kunden (KundenID, Vorname, Nachname, Email) VALUES (1, "Leonora", "Dorsey", "leonora.dorsey@gmail.com");
 INSERT INTO Kunden (KundenID, Vorname, Nachname, Email) VALUES (2, "Charles", "Grant", "charles.grant@gmail.com");
 INSERT INTO Kunden (KundenID, Vorname, Nachname, Email) VALUES (3, "Doris", "Wright", "doris.wright@gmail.com");
 INSERT INTO Kunden (KundenID, Vorname, Nachname, Email) VALUES (4, "Amanda", "Taylor", "amanda.taylor@gmail.com");
 
 -- Bestellungen
 INSERT INTO Bestellungen (BestellungID, KundenID, ProdukteID) VALUES (1, 1, 55);
 INSERT INTO Bestellungen (BestellungID, KundenID, ProdukteID) VALUES (2, 2, 5);
 INSERT INTO Bestellungen (BestellungID, KundenID, ProdukteID) VALUES (3, 3, 20);
 INSERT INTO Bestellungen (BestellungID, KundenID, ProdukteID) VALUES (4, 4, 34);
 INSERT INTO Bestellungen (BestellungID, KundenID, ProdukteID) VALUES (5, 2, 2);
 INSERT INTO Bestellungen (BestellungID, KundenID, ProdukteID) VALUES (6, 4, 54);
 INSERT INTO Bestellungen (BestellungID, KundenID, ProdukteID) VALUES (7, 3, 43);
 INSERT INTO Bestellungen (BestellungID, KundenID, ProdukteID) VALUES (8, 3, 23);
 INSERT INTO Bestellungen (BestellungID, KundenID, ProdukteID) VALUES (9, 1, 14);
 INSERT INTO Bestellungen (BestellungID, KundenID, ProdukteID) VALUES (10, 3, 29);
 
 -- Bewertungen 
INSERT INTO Bewertungen (BewertungID, KundenID, ProdukteID, Bewertung) VALUES (1, 1, 55, "Sehr Gut"); 
INSERT INTO Bewertungen (BewertungID, KundenID, ProdukteID, Bewertung) VALUES (2, 2, 5, "Gut"); 
INSERT INTO Bewertungen (BewertungID, KundenID, ProdukteID, Bewertung) VALUES (3, 3, 20, "Schlecht"); 
INSERT INTO Bewertungen (BewertungID, KundenID, ProdukteID, Bewertung) VALUES (4, 4, 34, "Genügend"); 
INSERT INTO Bewertungen (BewertungID, KundenID, ProdukteID, Bewertung) VALUES (5, 2, 2, "Sehr Gut"); 
INSERT INTO Bewertungen (BewertungID, KundenID, ProdukteID, Bewertung) VALUES (6, 4, 54, "Sehr Gut"); 
INSERT INTO Bewertungen (BewertungID, KundenID, ProdukteID, Bewertung) VALUES (7, 3, 43, "Schlecht"); 
INSERT INTO Bewertungen (BewertungID, KundenID, ProdukteID, Bewertung) VALUES (8, 3, 23, "Gut"); 
INSERT INTO Bewertungen (BewertungID, KundenID, ProdukteID, Bewertung) VALUES (9, 1, 14, "Sehr Gut"); 
INSERT INTO Bewertungen (BewertungID, KundenID, ProdukteID, Bewertung) VALUES (10, 3, 29, "Genügend"); 
 
 

 
SELECT * FROM Hauptkategorien;	
SELECT * FROM Kategorien;	
SELECT * FROM Produkte;	
SELECT * FROM Produkte_Kategorien;
SELECT * FROM Kunden;
SELECT * FROM Bestellungen;
SELECT * FROM Bewertungen; 

SELECT Produkte.Produktname, Produkte.Preis , Hauptkategorien.Name
FROM Produkte, Hauptkategorien
WHERE Produkte.HauptkategorieID = Hauptkategorien.ID;

SELECT Produkte.Produktname, Produkte.Preis, Kategorien.Name, Kategorien.Wert
FROM Produkte, Produkte_Kategorien, Kategorien
WHERE Produkte_Kategorien.ProduktID = Produkte.ID
AND Produkte_Kategorien.KategorieID = Kategorien.ID
AND Produkte.ID = 10;

 
 
 
 
 
 
             