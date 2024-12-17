--create database kolokvij_vjezba_10;
--use kolokvij_vjezba_10;

--create table svekar(
--sifra int not null primary key,
--bojaociju varchar(40) not null,
--prsten int,
--dukserica varchar(41),
--lipa decimal(13, 8),
--eura decimal(12, 7),
--majica varchar(35)
--);

--create table sestra(
--sifra int not null primary key,
--introvertno bit,
--haljina varchar(31) not null,
--maraka decimal(16, 6),
--hlace varchar(46) not null,
--narukvica int not null
--);

--create table sestra_svekar(
--sifra int not null primary key,
--sestra int references sestra(sifra) not null,
--svekar int references svekar(sifra) not null
--);

--create table zena(
--sifra int not null primary key,
--treciputa datetime,
--hlace varchar(46),
--kratkamajica varchar(31) not null,
--jmbag char(11) not null,
--bojaociju varchar(39) not null,
--haljina varchar(44),
--sestra int references sestra(sifra) not null
--);

--create table muskarac(
--sifra int primary key not null,
--bojaociju varchar(50) not null,
--hlace varchar(30),
--modelnaocala varchar(43),
--maraka decimal(14, 5) not null,
--zena int references zena(sifra)
--);

--create table mladic(
--sifra int not null primary key,
--suknja varchar(50) not null,
--kuna decimal(16,8) not null,
--drugiputa datetime,
--asocijalno bit,
--ekstrovertno bit not null,
--dukserica varchar(48) not null,
--muskarac int references muskarac(sifra)
--);

--create table punac(
--sifra int not null primary key,
--ogrlica int,
--gustoca decimal(14,9),
--hlace varchar(41) not null
--);

--create table cura(
--sifra int not null primary key,
--novcica decimal(16,5) not null,
--gustoca decimal(18,6) not null default 15.77,
--lipa decimal(13,10),
--ogrlica int not null,
--bojakose varchar(38),
--suknja varchar(36),
--punac int references punac(sifra)
--);

--select * from muskarac;
--select * from zena;
--select * from sestra_svekar;
--select * from sestra;
--select * from svekar;

--insert into svekar(sifra,bojaociju,prsten,dukserica,lipa,eura,majica)
--values (1,'smeða',3,'zelena',55.33,30.25,'bijela M');

--insert into svekar(sifra,bojaociju,prsten,dukserica,lipa,eura,majica)
--values (2,'zelena',1,'bijela',58.33,10.25,'crna M');

--insert into svekar(sifra,bojaociju,prsten,dukserica,lipa,eura,majica)
--values (3,'plava',10,'ljubièasta',12.33,100.25,'žuta M');


--insert into sestra(sifra,introvertno,haljina,maraka,hlace,narukvica)
--values (8,1,'cvjetna xs', 777.8, 'crne 38', 5);

--insert into sestra(sifra,introvertno,haljina,maraka,hlace,narukvica)
--values (1,0,'crna xs', 77.8, 'bijele 38', 1);

--insert into sestra(sifra,introvertno,haljina,maraka,hlace,narukvica)
--values (9,0,'crvena xs', 354.8, 'zelene 38', 15);

--insert into sestra(sifra,introvertno,haljina,maraka,hlace,narukvica)
--values (88,1,'banana boja', 354.8, 'zelene 38', 15);

--insert into sestra_svekar(sifra, sestra, svekar)
--values (1, 8, 3);

--insert into sestra_svekar(sifra, sestra, svekar)
--values (2, 1, 2);

--insert into sestra_svekar(sifra, sestra, svekar)
--values (6, 9, 1);

--insert into zena(sifra, treciputa,hlace,kratkamajica,jmbag,bojaociju, 
--haljina,sestra)
--values (1, '2023-11-07','crne m', 'zelena', '78463572897', 'zelena','plava',8);

--insert into zena(sifra, treciputa,hlace,kratkamajica,jmbag,bojaociju, 
--haljina,sestra)
--values (5, '2024-01-17','bijele m', 'plava', '90987678987', 'smeða','žuta',8);

--insert into zena(sifra, treciputa,hlace,kratkamajica,jmbag,bojaociju, 
--haljina,sestra)
--values (125, '2020-01-17','ana nešto', 'plava', '90987678987', 'smeða','žuta',8);

--insert into zena(sifra, treciputa,hlace,kratkamajica,jmbag,bojaociju, 
--haljina,sestra)
--values (10, '2021-05-27','sive m', 'bijela', '33367678987', 'smeða','bijela',9);

--insert into muskarac(sifra, bojaociju,hlace,modelnaocala,maraka,zena)
--values (99, 'plava', 'crne L', 'crne', 345.89, 10);

--insert into muskarac(sifra, bojaociju,hlace,modelnaocala,maraka,zena)
--values (2, 'smeða', 'sive L', 'bijele', 35.89, 5);

--insert into muskarac(sifra, bojaociju,hlace,modelnaocala,maraka,zena)
--values (7, 'plave', 'bijele L', 'sivi', 675.90, 1);

--select * from mladic;

--insert into mladic(sifra, suknja,kuna,drugiputa,asocijalno,ekstrovertno,dukserica,muskarac)
--values (1, 'crna',16.88,'2023-01-01',0,1,'plava', 7);

--insert into mladic(sifra, suknja,kuna,drugiputa,asocijalno,ekstrovertno,dukserica,muskarac)
--values (2, 'plava',14.08,'2023-01-01',0,1,'plava', 99);

--insert into mladic(sifra, suknja,kuna,drugiputa,asocijalno,ekstrovertno,dukserica,muskarac)
--values (3, 'žuta',15.78,'2020-01-01',1,0,'crna', 2);

--delete mladic where kuna>15.78;

--select kratkamajica from zena where hlace like '%ana%';

-- Prikažite dukserica iz tablice svekar, asocijalno iz tablice mladic te
--hlace iz tablice muskarac uz uvjet da su vrijednosti kolone hlace iz
--tablice zena poèinju slovom a te da su vrijednosti kolone haljina iz
--tablice sestra sadrže niz znakova ba. Podatke posložite po hlace iz
--tablice muskarac silazno.


--select a.dukserica, f.asocijalno, e.hlace
--from svekar a
--inner join sestra_svekar b on a.sifra=b.svekar
--inner join sestra c on c.sifra=b.sestra
--inner join zena d on d.sestra=c.sifra
--inner join muskarac e on d.sifra=e.zena
--inner join mladic f on f.muskarac=e.sifra
--where d.hlace like 'a%' AND c.haljina like '%ba%'
--order by e.hlace desc;


