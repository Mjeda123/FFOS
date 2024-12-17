create database vrtic;

use vrtic;

create table vrtic(
sifra int not null primary key,
naziv varchar(50) not null,
adresa varchar(50),
dijete int references dijete(sifra)
);

drop table vrtic;

create table djed(
sifra int not null primary key,
ime varchar(50) not null,
prezime varchar(50)not null
);

create table tata(
sifra int not null primary key,
ime varchar(50) not null,
prezime varchar(50)not null
);

create table baka(
sifra int not null primary key,
ime varchar(50) not null,
prezime varchar(50)not null
);

create table mama(
sifra int not null primary key,
ime varchar(50) not null,
prezime varchar(50)not null
);

create table dijete(
sifra int not null primary key,
ime varchar(50) not null,
prezime varchar(50)not null,
mama int references mama(sifra),
tata int references tata(sifra),
djed int references djed(sifra),
baka int references baka(sifra)
);

drop table dijete;
