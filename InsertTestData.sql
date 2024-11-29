use bundesliga;

-- Inserting data into Stadion
INSERT INTO Stadion (StadionID, Stadionname, Ort, PLZ, Strasse, Hausnummer, AnzahlPlaetze) VALUES
    (1, 'Red Bull Arena', 'Salzburg', '5020', 'Am Stadion', '1', 30000),
    (2, 'Allianz Stadion', 'Wien', '1020', 'Keplerplatz', '5', 28000),
    (3, 'Generalikampfbahn', 'Wien', '1100', 'Horngasse', '1', 25000),
    (4, 'Merkur Arena', 'Graz', '8010', 'Liebenauer Hauptstraße', '2', 20000),
    (5, 'Linzer Stadion', 'Linz', '4020', 'Stadionplatz', '7', 22000),
    (6, 'Tivoli Stadion Tirol', 'Innsbruck', '6020', 'Stadionweg', '3', 15000),
    (7, 'Cashpoint Arena', 'Altach', '6844', 'Sportplatzstraße', '6', 8500),
    (8, 'Keine Angabe', 'Ried im Innkreis', '4910', 'Keine Angabe', '0', 10000),
    (9, 'Lavanttal Arena', 'Wolfsberg', '9400', 'Lavamündstraße', '39', 7000),
    (10, 'Profertil Arena', 'Hartberg', '8230', 'Stadionstraße', '13', 7500);

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
    (5, 'Goiginger', 'Thomas', 4),
    (6, 'Schmid', 'Matthias', 4),
    (7, 'Huber', 'Markus', 4),
    (8, 'Mayerhofer', 'Julia', 4),
    (9, 'Koch', 'Sophie', 4),
    (10, 'Fischer', 'Simon', 4);

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
    (5, 'Sabine', 'Kreuzer'),
    (6, 'Johannes', 'Lechner'),
    (7, 'Max', 'Mayer'),
    (8, 'Anna', 'Schmidt'),
    (9, 'Mark', 'Davis'),
    (10, 'Julia', 'Weber');

INSERT INTO Schiedrichterfunktion (FunktionsID, Bezeichnung) VALUES
    (1, 'Hauptschiedsrichter'),
    (2, 'Linienrichter');


-- Inserting data into Mannschaft
INSERT INTO Mannschaft (MannschaftsID, Mannschaftsname, HeimstadionID, Ort, Plz, Strasse, Hnr) VALUES
    (1, 'Red Bulls', 1, 'Salzburg', '5020', 'Am Stadion', '1'),
    (2, 'Rapid Wien', 2, 'Wien', '1020', 'Keplerplatz', '5'),
    (3, 'Austria Wien', 3, 'Wien', '1100', 'Horngasse', '1'),
    (4, 'Sturm Graz', 4, 'Graz', '8010', 'Liebenauer Hauptstraße', '2'),
    (5, 'LASK Linz', 5, 'Linz', '4020', 'Stadionplatz', '7'),
    (6, 'FC Wacker Innsbruck', 6, 'Innsbruck', '6020', 'Stadionweg', '3'),
    (7, 'SCR Altach', 7, 'Altach', '6844', 'Sportplatzstraße', '6'),
    (8, 'SV Ried', 8, 'Ried im Innkreis', '4910', 'Keine Angabe', '0'),
    (9, 'Wolfsberger AC', 9, 'Wolfsberg', '9400', 'Lavamündstraße', '39'),
    (10, 'TSV Hartberg', 10, 'Hartberg', '8230', 'Stadionstraße', '13');

-- Inserting data into Mannschaftskader
INSERT INTO Mannschaftskader (KaderID, MannschaftsID, PersonenID, vonDat, bisDat) VALUES
    (1, 1, 1, '2023-01-01', NULL),
    (2, 2, 2, '2023-01-01', NULL),
    (3, 3, 3, '2023-01-01', NULL),
    (4, 4, 4, '2023-01-01', NULL),
    (5, 5, 5, '2023-01-01', NULL),
    (6, 6, 6, '2023-01-01', NULL),
    (7, 7, 7, '2023-01-01', NULL),
    (8, 8, 8, '2023-01-01', NULL),
    (9, 9, 9, '2023-01-01', NULL),
    (10, 10, 10, '2023-01-01', NULL);

-- Inserting data into Spiel
INSERT INTO Spiel (SpielID, HeimmannschaftID, GaestemannschaftID, StadionID, SpielDatum, Heimtore, Gaestetore, Datum) VALUES
    (1, 1, 2, 1, '2024-05-01', 2, 1, '2024-05-01'),
    (2, 3, 4, 3, '2024-05-03', 1, 0, '2024-05-03'),
    (3, 5, 1, 5, '2024-05-05', 0, 2, '2024-05-05'),
    (4, 2, 3, 2, '2024-05-07', 3, 3, '2024-05-07'),
    (5, 4, 5, 4, '2024-05-09', 2, 1, '2024-05-09'),
    (6, 6, 7, 6, '2024-05-11', 2, 0, '2024-05-11'),
    (7, 8, 9, 8, '2024-05-12', 1, 2, '2024-05-12'),
    (8, 9, 10, 9, '2024-05-13', 3, 1, '2024-05-13'),
    (9, 10, 6, 10, '2024-05-14', 0, 2, '2024-05-14'),
    (10, 7, 8, 7, '2024-05-15', 2, 2, '2024-05-15');

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
    (4, 5),
    (6, 6),
    (6, 7),
    (6, 8),
    (7, 8),
    (7, 9),
    (7, 10),
    (8, 9),
    (8, 10),
    (8, 6),
    (9, 10),
    (9, 6),
    (9, 7),
    (10, 7),
    (10, 8),
    (10, 9);

-- Inserting data into Tor
INSERT INTO Tor (SpielID, KaderID, Zeitpunkt) VALUES
    (1, 2, '2024-05-01 15:30:00'),
    (2, 4, '2024-05-03 16:00:00'),
    (4, 4, '2024-05-07 17:15:00'),
    (4, 4, '2024-05-07 17:30:00'),
    (3, 5, '2024-05-09 18:00:00'),
    (6, 6, '2024-05-11 15:30:00'),
    (7, 9, '2024-05-12 16:00:00'),
    (8, 9, '2024-05-13 15:30:00'),
    (8, 9, '2024-05-13 15:45:00'),
    (8, 10, '2024-05-13 16:00:00'),
    (9, 6, '2024-05-14 15:30:00'),
    (9, 7, '2024-05-14 16:00:00'),
    (10, 7, '2024-05-15 15:30:00'),
    (10, 8, '2024-05-15 16:00:00');

-- Inserting data into Strafe
INSERT INTO Strafe (SpielID, KaderID, Zeitpunkt, KartenID) VALUES
    (1, 1, '2024-05-01 14:45:00', 1),
    (2, 2, '2024-05-03 15:00:00', 2),
    (3, 3, '2024-05-05 15:30:00', 3),
    (4, 5, '2024-05-09 17:00:00', 2),
    (6, 6, '2024-05-11 15:00:00', 1),
    (7, 7, '2024-05-12 15:30:00', 2),
    (8, 8, '2024-05-13 15:00:00', 1),
    (8, 9, '2024-05-13 15:15:00', 2),
    (9, 10, '2024-05-14 15:30:00', 3),
    (10, 6, '2024-05-15 15:45:00', 2);
INSERT INTO Strafe (SpielID, KaderID, Zeitpunkt, KartenID) VALUES
    (10, 5, '2024-05-15 15:45:00', 2);

# drop database bundesliga;
