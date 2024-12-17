--create database vjezba1;

--use vjezba1;

--create table Smjer(
--SifraSmjer int not null primary key,
--Naziv nvarchar(50),
--Trajanje int,
--Cijena money,
--Upisnina money
--);

--drop table smjer;

--create table Polaznik(
--SifraPolaznika int not null primary key,
--JMBG nchar(13) references Osoba(JMBG),
--platio bit
--);

--create table Osoba(
--JMBG nchar(13) not null primary key,
--Ime varchar(50),
--Prezime varchar(50),
--email varchar(50)
--);

--create table Predavac(
--SifraPredavaca int not null primary key,
--JMBG nchar(13) references Osoba(JMBG),
--pocetakRada datetime
--);

--create table Clan(
--sifraGrupe int references Grupa(SifraGrupe) not null,
--SifraPolaznika int references Polaznik(SifraPolaznika) not null,
--constraint PK_Clan primary key(sifraGrupe,SifraPolaznika)
--);

--drop table Polaznik;
--drop table Predavac;

--create table Grupa(
--SifraGrupe int not null primary key,
--SifraSmjera int references Smjer(SifraSmjer),
--SifraPredavaca int references Predavac(SifraPredavaca),
--Naziv nvarchar(50),
--BrojPolaznika int,
--DatumPocetka datetime
--);

--drop table Clan;