--create database  tjakopec_1;
--use master;
--drop database tjakopec_1;

--use tjakopec_1;

--create table autor(
--sifra int not null primary key,
--ime varchar(50) not null,
--prezime varchar(50) not null,
--datumrodenja datetime
--);

--create table izdavac(
--sifra int not null primary key,
--naziv varchar(50) not null,
--aktivan bit
--);

--create table mjesto(
--sifra int not null primary key,
--naziv varchar(50) not null,
--postanskibroj varchar(20),
--drzava varchar(50) not null default 'Hrvatska'
--);

create table katalog(
sifra int not null primary key,
autor int references autor(sifra), --tip podatka je int jer je sifra u tablici u autor int
naslov varchar(255) not null, 
izdavac int references izdavac(sifra),
mjesto int references mjesto(sifra)
);

--drop table katalog;

--alter table autor alter column
--sifra int not null;

--alter table autor add primary key (sifra);

--use master;