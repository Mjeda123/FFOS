--use master;

--create database iprezime_n;

--use iprezime_n;

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
--postanskibroj varchar(10),
--drzava varchar(50) default 'Hrvatska'
--);

--create table katalog(
--sifra int not null primary key,
--autor int references autor(sifra),
--naslov varchar(50) not null check(len(naslov)>3),
--izdavac int references izdavac(sifra),
--mjesto int references mjesto(sifra)
--)

--drop table mjesto;
--drop table katalog;

--create index naziv_index on katalog(naslov);

--alter table autor add primary key (sifra);
