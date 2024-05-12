use bundesliga;

-- Inserting data into Mannschaft (Teams)
INSERT INTO Stadion (StadionID, Stadionname, Ort, PLZ, Strasse, Hausnummer, AnzahlPlaetze) VALUES
                                                                                               (1, 'Tivoli Stadion', 'Innsbruck', '6020', 'Olympiastraße', '1', 15000),
                                                                                               (2, 'Merkur Arena', 'Graz', '8020', 'Grieskai', '42', 16000),
                                                                                               (3, 'Profertil Arena', 'Hartberg', '8230', 'Stadionweg', '6', 5000);

-- Inserting data into Mannschaftskader (Team Squad)
INSERT INTO Vereinsfuntion (FunktionsID, Bezeichnung) VALUES
                                                          (1, 'Coach'),
                                                          (2, 'Assistant Coach');

-- Inserting data into Person
INSERT INTO Person (PersonenID, Nachname, Vorname, FunktionsID) VALUES
                                                                    (1, 'Müller', 'Stefan', 1),
                                                                    (2, 'Schmidt', 'Julia', 1),
                                                                    (3, 'Hoffmann', 'Michael', 1),
                                                                    (4, 'Fischer', 'Sabine', 1),
                                                                    (5, 'Schneider', 'Peter', 1),
                                                                    (6, 'Wolf', 'Andrea', 1);

-- Inserting data into Vereinsfuntion (Club Functions)
INSERT INTO Karte (KartenID, Farbe) VALUES
                                        (1, 'Gelb'),
                                        (2, 'Rot');

-- Inserting data into Stadion (Stadiums)
INSERT INTO Schiedsrichter (SchiedsrichterNr, Vorname, Nachname) VALUES
                                                                     (1, 'Sarah', 'Miller'),
                                                                     (2, 'Thomas', 'Wilson'),
                                                                     (3, 'Laura', 'Taylor');

INSERT INTO Schiedrichterfunktion (FunktionsID, Bezeichnung) VALUES
(1, 'Haupt-Schiedsrichter'),
(2, 'Linienrichter');


-- Inserting data into Spielleitung (Match Officials)
INSERT INTO Mannschaft (MannschaftsID, Mannschaftsname, HeimstadionID, Ort, Plz, Strasse, Hnr) VALUES
(1, 'FC Wacker Innsbruck', 1, 'Innsbruck', '6020', 'Stadionstraße', '1'),
(2, 'SK Sturm Graz', 2, 'Graz', '8020', 'Grieskai', '42'),
(3, 'TSV Hartberg', 3, 'Hartberg', '8230', 'Stadionweg', '6');

-- Inserting data into Schiedsrichter (Referees)
INSERT INTO Mannschaftskader (KaderID, MannschaftsID, PersonenID, vonDat, bisDat) VALUES
(1, 1, 1, '2023-01-01', '2023-12-31'), -- FC Wacker Innsbruck
(2, 2, 3, '2023-01-01', '2023-12-31'), -- SK Sturm Graz
(3, 3, 5, '2023-01-01', '2023-12-31'); -- TSV Hartberg

-- Inserting data into Spiel (Matches)
INSERT INTO Spiel (SpielID, HeimmannschaftID, GaestemannschaftID, StadionID, SpielDatum, Heimtore, Gaestetore, Datum) VALUES
                                                                                                                          (1, 1, 2, 1, '2023-05-04', 1, 2, '2023-05-04'),
                                                                                                                          (2, 2, 3, 2, '2023-05-05', 2, 1, '2023-05-05'),
                                                                                                                          (3, 3, 1, 3, '2023-05-06', 0, 1, '2023-05-06');

-- Inserting data into Aufgestellt (Lineups)
INSERT INTO Spielleitung (SchiedsrichterNr, SpielID, FunktionsID) VALUES
(1, 1, 1),
(2, 2, 1),
(3, 3, 2);

-- Inserting data into Tor (Goals)
INSERT INTO Aufgestellt (SpielID, KaderID) VALUES
(1, 1),
(3, 3),
(2, 2);

-- Inserting data into Strafe (Penalties)
INSERT INTO Tor (SpielID, KaderID, Zeitpunkt) VALUES
(1, 3, '2023-05-04 13:00:00'),
(1, 2, '2023-05-04 14:30:00'),
(2, 2, '2023-05-05 12:45:00');

-- Inserting data into Karte (Cards)
INSERT INTO Strafe (SpielID, KaderID, Zeitpunkt, KartenID) VALUES
(1, 3, '2023-05-04 13:15:00', 1),
(2, 2, '2023-05-05 14:00:00', 2),
(3, 1, '2023-05-06 15:35:00', 1);

# delete from aufgestellt;








