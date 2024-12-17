--create database knj;

--use knj;

--create table osobe(
--sifra int primary key,
--ime varchar(50),
--prezime varchar(50),
--adresa varchar(50),
--email varchar(50)
--);

--create table vlasnik(
--sifra int primary key,
--knjiga int
--);

--create table clan(
--sifra int primary key,
--clbroj int
--);

--create table knjige(
--sifra int primary key,
--naslov varchar(50),
--pisac varchar(50),
--vlasnik int references vlasnik(sifra),
--clan int references clan(sifra),
--datumpos datetime,
--datumvrac datetime

--);

--drop table clan;
--drop table osobe;
--drop table vlasnik;