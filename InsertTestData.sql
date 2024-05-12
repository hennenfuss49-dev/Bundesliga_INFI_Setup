use bundesliga;

-- Inserting data into Stadion
INSERT INTO Stadion (StadionID, Stadionname, Ort, PLZ, Strasse, Hausnummer, AnzahlPlaetze) VALUES
    (1, 'Red Bull Arena', 'Salzburg', '5020', 'Am Stadion', '1', 30000),
    (2, 'Allianz Stadion', 'Wien', '1020', 'Keplerplatz', '5', 28000),
    (3, 'Generalikampfbahn', 'Wien', '1100', 'Horngasse', '1', 25000),
    (4, 'Merkur Arena', 'Graz', '8010', 'Liebenauer Hauptstraße', '2', 20000),
    (5, 'Linzer Stadion', 'Linz', '4020', 'Stadionplatz', '7', 22000);

-- Inserting data into Vereinsfuntion
INSERT INTO Vereinsfunktion (FunktionsID, Bezeichnung) VALUES
    (1, 'Manager'),
    (2, 'Trainer'),
    (3, 'Co-Trainer'),
    (4, 'Kapitän');

-- Inserting data into Person
INSERT INTO Person (PersonenID, Nachname, Vorname, FunktionsID) VALUES
    (1, 'Alaba', 'David', 1),
    (2, 'Monschein', 'Christoph', 2),
    (3, 'Zulj', 'Peter', 2),
    (4, 'Yeboah', 'Kelvin', 3),
    (5, 'Goiginger', 'Thomas', 4);

INSERT INTO Person(PersonenID, Nachname, Vorname, FunktionsID) VALUES
    (6, 'Person2', 'Person2', 1),
    (7, 'Yeboah', 'Kelvin', 4);

-- Inserting data into Karte
INSERT INTO Karte (KartenID, Farbe) VALUES
    (1, 'Gelb'),
    (2, 'Rot'),
    (3, 'Rotgelb');

-- Inserting data into Schiedsrichter
INSERT INTO Schiedsrichter (SchiedsrichterNr, Vorname, Nachname) VALUES
    (1, 'Stefan', 'Johannessen'),
    (2, 'Markus', 'Hameter'),
    (3, 'Michael', 'Hofer'),
    (4, 'Andreas', 'Eisner'),
    (5, 'Sabine', 'Kreuzer');

INSERT INTO Schiedrichterfunktion (FunktionsID, Bezeichnung) VALUES
    (1, 'Hauptschiedsrichter'),
    (2, 'Linienrichter');


-- Inserting data into Mannschaft
INSERT INTO Mannschaft (MannschaftsID, Mannschaftsname, HeimstadionID, Ort, Plz, Strasse, Hnr) VALUES
    (1, 'Red Bulls', 1, 'Salzburg', '5020', 'Am Stadion', '1'),
    (2, 'Rapid Wien', 2, 'Wien', '1020', 'Keplerplatz', '5'),
    (3, 'Austria Wien', 3, 'Wien', '1100', 'Horngasse', '1'),
    (4, 'Sturm Graz', 4, 'Graz', '8010', 'Liebenauer Hauptstraße', '2'),
    (5, 'LASK Linz', 5, 'Linz', '4020', 'Stadionplatz', '7');

-- Inserting data into Mannschaftskader
INSERT INTO Mannschaftskader (KaderID, MannschaftsID, PersonenID, vonDat, bisDat) VALUES
    (1, 1, 1, '2023-01-01', NULL),
    (2, 2, 2, '2023-01-01', NULL),
    (3, 3, 3, '2023-01-01', NULL),
    (4, 4, 4, '2023-01-01', NULL),
    (5, 5, 5, '2023-01-01', NULL);

-- Inserting data into Spiel
INSERT INTO Spiel (SpielID, HeimmannschaftID, GaestemannschaftID, StadionID, SpielDatum, Heimtore, Gaestetore, Datum) VALUES
    (1, 1, 2, 1, '2024-05-01', 2, 1, '2024-05-01'),
    (2, 3, 4, 3, '2024-05-03', 1, 0, '2024-05-03'),
    (3, 5, 1, 5, '2024-05-05', 0, 2, '2024-05-05'),
    (4, 2, 3, 2, '2024-05-07', 3, 3, '2024-05-07'),
    (5, 4, 5, 4, '2024-05-09', 2, 1, '2024-05-09');

-- Inserting data into Spielleitung
INSERT INTO Spielleitung (SchiedsrichterNr, SpielID, FunktionsID) VALUES
    (1, 1, 1),
    (2, 1, 2),
    (3, 2, 1),
    (4, 2, 2),
    (5, 3, 1),
    (1, 3, 2),
    (2, 4, 1),
    (3, 4, 2),
    (4, 5, 1),
    (5, 5, 2);

INSERT INTO Spielleitung (SchiedsrichterNr, SpielID, FunktionsID) VALUES
    (3, 1, 1),
    (4, 1, 2);


-- Inserting data into Aufgestellt
INSERT INTO Aufgestellt (SpielID, KaderID) VALUES
    (1, 1),
    (1, 2),
    (1, 3),
    (2, 4),
    (2, 5),
    (3, 1),
    (3, 2),
    (3, 3),
    (4, 4),
    (4, 5);

-- Inserting data into Tor
INSERT INTO Tor (SpielID, KaderID, Zeitpunkt) VALUES
    (1, 2, '2024-05-01 15:30:00'),
    (2, 4, '2024-05-03 16:00:00'),
    (4, 4, '2024-05-07 17:15:00'),
    (4, 4, '2024-05-07 17:30:00'),
    (3, 5, '2024-05-09 18:00:00');

-- Inserting data into Strafe
INSERT INTO Strafe (SpielID, KaderID, Zeitpunkt, KartenID) VALUES
    (1, 1, '2024-05-01 14:45:00', 1),
    (2, 2, '2024-05-03 15:00:00', 2),
    (3, 3, '2024-05-05 15:30:00', 3),
    (4, 5, '2024-05-09 17:00:00', 2);

# drop database bundesliga;








