--use master;

--create database album_n;

--use album_n;

--create table autor(
--sifra int not null primary key,
--ime varchar(50) not null,
--prezime varchar(50) not null
--);

--drop table autor;

--create table nagrade(
--sifra int not null primary key,
--naziv varchar(50) not null
--);

--create table pjesme(
--sifra int not null primary key,
--naziv varchar(50) not null,
--autor int references autor(sifra),
--godina datetime,
--nagrada int references nagrade(sifra)
--);

--drop table nagrade;
--drop table pjesme;
