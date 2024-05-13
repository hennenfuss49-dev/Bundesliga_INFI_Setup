use bundesliga;

select Vorname, Nachname, Bezeichnung from vereinsfunktion f join person p using (funktionsid) join Mannschaftskader mk using (PersonenID) join Mannschaft m using (MannschaftsID) where Mannschaftsname = 'Sturm Graz'
group by Vorname, Nachname, Bezeichnung;