/*
    # -> primary key
    ! -> unique
    * -> not null
*/

create database if not exists Bundesliga;

use Bundesliga;

drop table if exists Mannschaft;

create table  Mannschaft(
    MannschaftsID int primary key,
    Mannschaftsname varchar(60) not null,
    HeimstadionID int not null,
    Ort varchar(60) not null,
    Plz char(4) not null,
    Strasse varchar(60) not null,
    Hnr varchar(4) not null
);

drop table if exists Mannschaftskader;

create table Mannschaftskader(
    KaderID int primary key,
    MannschaftsID int not null unique,
    PersonenID int not null unique,
    vonDat date not null,
    bisDat date
);

drop table if exists Person;

create table Person(
    PersonenID int primary key,
    Nachname varchar(60) not null,
    Vorname varchar(60) not null,
    FunktionsID int not null
);

drop table if exists Vereinsfunktion;

create table Vereinsfunktion(
    FunktionsID int primary key,
    Bezeichnung varchar(60) not null unique
);

drop table if exists Aufgestellt;

create table Aufgestellt(
    SpielID int,
    KaderID int,
    INDEX idx_KaderID (KaderID),
    PRIMARY KEY (SpielID, KaderID)
);

drop table if exists Tor;

create table Tor(
    SpielID int,
    KaderID int,
    Zeitpunkt timestamp,
    primary key (SpielID, KaderID, Zeitpunkt)
);

drop table if exists Strafe;

create table Strafe(
    SpielID int,
    KaderID int,
    Zeitpunkt timestamp,
    KartenID int not null,
    primary key (SpielID, KaderID, Zeitpunkt)
);

drop table if exists Karte;

create table Karte(
    KartenID int primary key,
    Farbe varchar(20) unique
);

drop table if exists Spiel;

create table Spiel(
    SpielID int primary key,
    HeimmannschaftID int not null unique,
    GaestemannschaftID int not null unique,
    StadionID int not null unique,
    SpielDatum date not null,
    Heimtore int,
    Gaestetore int,
    Datum date not null,
    constraint UQ_SpielDatum unique (HeimmannschaftID, GaestemannschaftID, StadionID)
);

drop table if exists Stadion;

create table Stadion(
    StadionID int primary key,
    Stadionname varchar(60) not null unique,
    Ort varchar(60) not null,
    PLZ varchar(60) not null,
    Strasse varchar(60) not null,
    Hausnummer varchar(4) not null,
    AnzahlPlaetze int not null
);

drop table if exists Spielleitung;

create table Spielleitung(
    SchiedsrichterNr int,
    SpielID int,
    FunktionsID int not null,
    PRIMARY KEY (SchiedsrichterNr, SpielID)
);

drop table if exists Schiedsrichter;

create table Schiedsrichter(
    SchiedsrichterNr int primary key,
    Vorname varchar(60) not null,
    Nachname varchar(60) not null
);

drop table if exists Schiedrichterfunktion;

create table Schiedrichterfunktion(
    FunktionsID int primary key,
    Bezeichnung varchar(60) not null unique
);

-- adding the foreign keys

alter table Spielleitung add constraint FK_SchiedsrichterNr foreign key (SchiedsrichterNr)
    REFERENCES Schiedsrichter(SchiedsrichterNr);

alter table Spiel add constraint FK_HeimmannschaftID foreign key (HeimmannschaftID)
    REFERENCES Mannschaft(MannschaftsID);

alter table Spiel add constraint FK_GaestemannschaftID foreign key (GaestemannschaftID)
    REFERENCES Mannschaft(MannschaftsID);

alter table Spiel add constraint FK_StadionID foreign key (StadionID)
    REFERENCES Stadion(StadionID);

alter table Spielleitung add constraint FK_SpielID foreign key (SpielID)
    REFERENCES Spiel(SpielID);

alter table Spielleitung add constraint FK_FunktionsID2 foreign key (FunktionsID)
    REFERENCES Schiedrichterfunktion(FunktionsID);

alter table Strafe add constraint FK_SpielID3 foreign key (SpielID)
    REFERENCES Aufgestellt(SpielID);

alter table Strafe add constraint FK_KaderID1 foreign key (KaderID)
    REFERENCES Aufgestellt(KaderID);

alter table Strafe add constraint FK_KartenID foreign key (KartenID)
    REFERENCES Karte(KartenID);

alter table Aufgestellt add constraint FK_SpielID2 foreign key (SpielID)
    REFERENCES Spiel(SpielID);

alter table Tor add constraint FK_SpielID1 foreign key (SpielID)
    REFERENCES Aufgestellt(SpielID);

alter table Tor add constraint FK_KaderID2 foreign key (KaderID)
    REFERENCES Aufgestellt(KaderID);

alter table Aufgestellt add constraint FK_KaderID foreign key (KaderID)
    REFERENCES Mannschaftskader(KaderID);

alter table Person add constraint FK_FunktionsID1 FOREIGN KEY (FunktionsID)
    REFERENCES Vereinsfunktion(FunktionsID);

alter table Mannschaftskader add constraint FK_PersonenID foreign key (PersonenID)
    REFERENCES Person(PersonenID);

alter table Mannschaftskader add constraint FK_MannschaftsID foreign key (MannschaftsID)
    REFERENCES Mannschaft(MannschaftsID);

alter table Mannschaft add constraint FK_HeimstadionID FOREIGN KEY (HeimstadionID)
    REFERENCES Stadion(StadionID);

# drop database Bundesliga;
