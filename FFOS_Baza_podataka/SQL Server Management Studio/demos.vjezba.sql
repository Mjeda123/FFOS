--use master;
--create database demos_1;
--use demos_1;

--create table knjizara(
--sifra int primary key not null,
--naziv varchar(50) not null,
--mjesto varchar(50) not null,
--ulica varchar(50) not null
--);

--create table zanr(
--sifra int primary key not null,
--naziv varchar(50) not null
--);

--create table izdavac(
--sifra int primary key not null,
--naziv varchar(50) not null,
--drzava varchar(50) not null,
--aktivan bit
--);

--create table knjiga(
--sifra int primary key not null,
--naziv varchar(50) not null,
--zanr int references zanr(sifra),
--datumObjave datetime,
--knjizara int references knjizara(sifra),
--izdavac int references izdavac(sifra)
--);

insert into knjizara(sifra,naziv,mjesto,ulica)
values (1,'Školska knjiga','Osijek','Ulica Nešto nešto');
select * from knjizara;

insert into knjizara(sifra,naziv,mjesto,ulica)
values (2,'Verbum','Zagreb','Ulica blabla');

insert into zanr(sifra,naziv)
values (2,'horor');
select * from zanr;

insert into zanr(sifra,naziv)
values (1,'ljubavni');
select * from zanr;

insert into izdavac(sifra,naziv,drzava,aktivan)
values (1,'NK','Hrvatska',1);
select * from izdavac;

insert into knjiga(sifra,naziv,zanr,datumObjave,knjizara,izdavac)
values (1,'Sjena vjetra',2,'2001-09-20',1,1);
select * from knjiga;