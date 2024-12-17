--drop database amjeda_1;

--create database amjeda_1;

--use amjeda_1;

--use master;


--create table autor( 
--sifra int not null primary key,
--ime varchar(50) not null,
--prezime varchar(50) not null,
--datumrodenja datetime 
--);

--create table izdavac(
--sifra int not null primary key,
--naziv varchar(100) not null,
--aktivan bit
--);

--create table mjesto(
--sifra int not null primary key,
--naziv varchar(50) not null,
--postanskibroj varchar(20),
--drzava varchar(50) default 'Hrvatska'
--);

--drop table mjesto;

create table katalog(
sifra int not null primary key,
autor int references autor(sifra),
naslov varchar(100) not null check(len(naslov)>0),
izdavac int references izdavac(sifra),
mjesto int references mjesto(sifra)
);


