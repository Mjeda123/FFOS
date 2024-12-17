create database film;

use film;

create table nagrade(
sifra int not null primary key,
naziv varchar(50) not null
);

create table zanrovi(
sifra int not null primary key,
naziv varchar(50) not null
);

create table redatelji(
sifra int not null primary key,
ime varchar(50) not null,
prezime varchar(50) not null,
drzava varchar(50)
);

create table glumci(
sifra int not null primary key,
ime varchar(50) not null,
prezime varchar(50) not null,
datumRodenja datetime,
drzava varchar(50)
);

create table filmovi(
sifra int not null primary key,
naslov varchar(50) not null,
godina datetime not null,
zanr int references zanrovi(sifra),
ocjena varchar(50),
glavniGlumac int references glumci(sifra),
sporedniGlumac int references glumci(sifra),
redatelj int references redatelji(sifra),
nagrada int references nagrade(sifra)
);