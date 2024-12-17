--create database kolokvij_vjezba_3;

--use kolokvij_vjezba_3;

--create table cura(
--sifra int primary key not null,
--dukserica varchar(49),
--maraka decimal(13, 7),
--drugiputa datetime,
--majica varchar(49),
--novcica decimal(15, 8),
--ogrlica int not null
--);

--create table brat(
--sifra int primary key not null,
--jmbag char(11),
--ogrlica int not null,
--ekstrovertno bit not null
--);

--create table prijatelj(
--sifra int primary key not null,
--kuna decimal(16, 10),
--haljina varchar(37),
--lipa decimal(13, 10),
--dukserica varchar(31),
--indiferentno bit not null
--);

--create table svekar(
--sifra int primary key not null,
--novcica decimal(16, 8) not null,
--suknja varchar(44) not null,
--bojakose varchar(36),
--prstena int,
--narukvica int not null,
--cura int references cura(sifra) not null
--);

--create table prijatelj_brat(
--sifra int primary key not null,
--prijatelj int references prijatelj(sifra) not null,
--brat int references brat(sifra) not null
--);

--create table ostavljena(
--sifra int primary key not null,
--kuna decimal(17, 5),
--lipa decimal(15, 6),
--majica varchar(36),
--modelnaocla varchar(31) not null,
--prijatelj int references prijatelj(sifra)
--);

--create table snasa(
--sifra int primary key not null,
--introvertno bit,
--kuna decimal(15, 6) not null,
--eura decimal(12, 9) not null,
--treciputa datetime,
--ostavljena int references ostavljena(sifra) not null
--);

--insert into cura (sifra, dukserica, maraka, drugiputa, majica, novcica, ogrlica)
--values
--(1, 'duks1', 12.2, '2020-02-02', 'majica1', 0.1, 1);

--insert into cura (sifra, dukserica, maraka, drugiputa, majica, novcica, ogrlica)
--values
--(2, 'duks2', 13.3, '2020-03-03', 'majica2', 0.2, 2);

--insert into cura (sifra, dukserica, maraka, drugiputa, majica, novcica, ogrlica)
--values
--(3, 'duks3', 14.4, '2020-04-04', 'majica3', 0.3, 3);

--select * from cura;

--insert into brat (sifra, jmbag, ogrlica, ekstrovertno)
--values
--(1, '12355', 14, 1);

--insert into brat (sifra, jmbag, ogrlica, ekstrovertno)
--values
--(2, '13355', 13, 0);

--insert into brat (sifra, jmbag, ogrlica, ekstrovertno)
--values
--(3, '15355', 11, 1);

--select * from brat;

--insert into prijatelj (sifra, kuna, haljina, lipa, dukserica, indiferentno)
--values
--(1, '12.33', 'haljina1', '0.20', 'dukserica1', 1);

--insert into prijatelj (sifra, kuna, haljina, lipa, dukserica, indiferentno)
--values
--(2, '13.33', 'haljina2', '0.34', 'dukserica2', 0);

--insert into prijatelj (sifra, kuna, haljina, lipa, dukserica, indiferentno)
--values
--(3, '14.33', 'haljina3', '0.75', 'dukserica3', 1);

--select * from prijatelj;

--insert into svekar (sifra, novcica, suknja, bojakose, prstena, narukvica, cura)
--values
--(1, '23.33', 'suknja1', 'plava', 20, 22, 1);

--insert into svekar (sifra, novcica, suknja, bojakose, prstena, narukvica, cura)
--values
--(2, '44.33', 'suknja2', 'smeða', 30, 33, 2);

--insert into svekar (sifra, novcica, suknja, bojakose, prstena, narukvica, cura)
--values
--(3, '55.33', 'suknja3', 'crna', 40, 44, 3);

--select * from svekar;

--insert into prijatelj_brat (sifra, prijatelj, brat)
--values
--(1, 1, 1);

--insert into prijatelj_brat (sifra, prijatelj, brat)
--values
--(2, 2, 2);

--insert into prijatelj_brat (sifra, prijatelj, brat)
--values
--(3, 3, 3);

--select * from prijatelj_brat;

--insert into ostavljena (sifra, kuna, lipa, majica, modelnaocla, prijatelj)
--values
--(1, '12.00', '0.55', 'majica1', 'naoèale1', 1);

--insert into ostavljena (sifra, kuna, lipa, majica, modelnaocla, prijatelj)
--values
--(2, '22.00', '0.22', 'majica2', 'naoèale2', 2);

--insert into ostavljena (sifra, kuna, lipa, majica, modelnaocla, prijatelj)
--values
--(3, '33.00', '0.33', 'majica3', 'naoèale3', 3);

--select * from ostavljena;

--insert into snasa (sifra, introvertno, kuna, eura, treciputa, ostavljena)
--values
--(1, 1, '12', '2', '2020-05-05', 1);

--insert into snasa (sifra, introvertno, kuna, eura, treciputa, ostavljena)
--values
--(2, 0, '22', '4', '2020-06-06', 2);

--insert into snasa (sifra, introvertno, kuna, eura, treciputa, ostavljena)
--values
--(3, 1, '33', '6', '2020-07-07', 3);

--select * from snasa;

--update svekar set suknja='Osijek';

--select * from svekar

--create table punica(
--sifra int primary key not null,
--asocijalno bit,
--kratkamajica varchar(44),
--kuna decimal(13, 8) not null,
--vesta varchar(32) not null,
--snasa int references snasa(sifra)
--);

--insert into punica (sifra, asocijalno, kratkamajica, kuna, vesta, snasa)
--values
--(1, 1, 'AB', '6.0', 'vesta1', 3);

--insert into punica (sifra, asocijalno, kratkamajica, kuna, vesta, snasa)
--values
--(2, 0, 'BC', '3.0', 'vesta2', 2);

--insert into punica (sifra, asocijalno, kratkamajica, kuna, vesta, snasa)
--values
--(3, 1, 'CB', '5.0', 'vesta3', 1);

--select * from punica;

--delete punica where kratkamajica='AB';

--update ostavljena set majica='35' 
--where sifra=1;

--select * from ostavljena;

select majica from ostavljena
where (lipa!='9' and lipa!='10' and lipa!='20' and lipa!='30' or lipa!='35');

--update ostavljena set lipa='35' 
--where sifra=1;