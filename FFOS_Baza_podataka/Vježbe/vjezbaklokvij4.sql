--create database kolokvij_vjezba_4;

--use kolokvij_vjezba_4;

--create table ostavljena(
--sifra int primary key not null,
--modelnaocla varchar(43),
--introvertno bit,
--kuna decimal(14, 10),
--);

--create table mladic(
--sifra int primary key not null,
--kuna decimal(15, 9),
--lipa decimal(18, 5),
--nausnica int,
--stilfrizura varchar(49),
--vesta varchar(34) not null
--);

--create table zena(
--sifra int primary key not null,
--suknja varchar(39) not null,
--lipa decimal(18, 7),
--prstena int not null
--);

--create table punac(
--sifra int primary key not null,
--treciputa datetime,
--majica varchar(46),
--jmbag char(11) not null,
--novcica decimal(18, 7) not null,
--maraka decimal(12, 6) not null,
--ostavljena int references ostavljena(sifra) not null
--);

--create table zena_mladic(
--sifra int primary key not null,
--zena int references zena(sifra) not null,
--mladic int references mladic(sifra) not null
--);

--create table snasa(
--sifra int primary key not null,
--introvertno bit,
--treciputa datetime,
--haljina varchar(44) not null,
--zena int references zena(sifra) not null
--);

--create table becar(
--sifra int primary key not null,
--novcica decimal(14, 8),
--kratkamajica varchar(48) not null,
--bojaociju varchar(36) not null,
--snasa int references snasa(sifra) not null
--);


--create table prijatelj(
--sifra int primary key not null,
--eura decimal(16, 9),
--prstena int not null,
--gustoca decimal(16, 5),
--jmbag char(11) not null,
--suknja varchar(47) not null,
--becar int references becar(sifra) not null
--);

--insert into ostavljena (sifra, modelnaocla, introvertno, kuna)
--values
--(1, 'model1', 1, '10');

--insert into ostavljena (sifra, modelnaocla, introvertno, kuna)
--values
--(2, 'model2', 0, '20');

--insert into ostavljena (sifra, modelnaocla, introvertno, kuna)
--values
--(3, 'model3', 1, '30');

--select * from ostavljena;

--insert into mladic (sifra, kuna, lipa, nausnica, stilfrizura, vesta)
--values
--(1, '19', '0.44', 11, 'stil1', 'vesta1');

--insert into mladic (sifra, kuna, lipa, nausnica, stilfrizura, vesta)
--values
--(2, '43', '0.55', 22, 'stil2', 'vesta2');

--insert into mladic (sifra, kuna, lipa, nausnica, stilfrizura, vesta)
--values
--(3, '78', '0.89', 33, 'stil3', 'vesta3');

--select * from mladic;

--insert into zena (sifra, suknja, lipa, prstena)
--values
--(1, 'suknja1', '0.44', 11);

--insert into zena (sifra, suknja, lipa, prstena)
--values
--(2, 'suknja2', '0.55', 787);

--insert into zena (sifra, suknja, lipa, prstena)
--values
--(3, 'suknja3', '0.56', 89634);

--select * from zena;

--insert into punac (sifra, treciputa, majica, jmbag, novcica, maraka, ostavljena)
--values
--(1, '2020-04-05', 'majica1', '23555', '11', '0.8', 1);

--insert into punac (sifra, treciputa, majica, jmbag, novcica, maraka, ostavljena)
--values
--(2, '2022-04-05', 'majica2', '23552', '22', '0.2', 2);

--insert into punac (sifra, treciputa, majica, jmbag, novcica, maraka, ostavljena)
--values
--(3, '2023-04-05', 'majica3', '23535', '33', '0.3', 3);

--select * from punac;

--insert into zena_mladic (sifra, zena, mladic)
--values
--(1, 1, 1);

--insert into zena_mladic (sifra, zena, mladic)
--values
--(2, 2, 2);

--insert into zena_mladic (sifra, zena, mladic)
--values
--(3, 3, 3);

--select * from zena_mladic;

--insert into snasa (sifra, introvertno, treciputa, haljina, zena)
--values
--(1, 1, '2030-09-09', 'haljina1', 1);

--insert into snasa (sifra, introvertno, treciputa, haljina, zena)
--values
--(2, 0, null, 'haljina2', 2);

--insert into snasa (sifra, introvertno, treciputa, haljina, zena)
--values
--(3, 1, '2030-09-09', 'haljina3', 3);

--select * from snasa;

--delete snasa;

--insert into becar (sifra, novcica, kratkamajica, bojaociju, snasa)
--values
--(1, '1.0', 'kratk1', 'plava', 1);

--insert into becar (sifra, novcica, kratkamajica, bojaociju, snasa)
--values
--(2, '2.0', 'kratk2', 'smeða', 2);

--insert into becar (sifra, novcica, kratkamajica, bojaociju, snasa)
--values
--(3, '3.0', 'kratk3', 'zelene', 3);

--select * from becar;

--insert into prijatelj (sifra, eura, prstena, gustoca, jmbag, suknja, becar)
--values
--(1, '10.0', 86757, '42.00', '45346', 'suknja1', 1);

--insert into prijatelj (sifra, eura, prstena, gustoca, jmbag, suknja, becar)
--values
--(2, '22.0', 855757, '67.00', '45364', 'suknja2', 2);

--insert into prijatelj (sifra, eura, prstena, gustoca, jmbag, suknja, becar)
--values
--(3, '33.0', 8653557, '987.00', '4534335', 'suknja3', 3);

--select * from  prijatelj;

--update punac set majica='Osijek';
--select * from punac;

--delete prijatelj where prstena>17;
--select * from snasa
--select haljina from snasa
--where sifra=2 and treciputa is null;

select 
