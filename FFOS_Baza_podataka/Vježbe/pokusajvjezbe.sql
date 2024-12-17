create database kolokvij_vjezba_1;

use kolokvij_vjezba_1;

use master;

drop database kolokvij_vjezba_1;

create table punac( 
sifra int not null primary key,
ogrlica int,
gustoca decimal(14, 9),
hlace varchar(41) not null
);

create table svekar( 
sifra int not null primary key,
bojaociju varchar(40),
prstena int,
dukserica varchar(41),
lipa decimal(13, 8),
eura decimal(12, 7),
majica varchar(35)
);

create table sestra( 
sifra int not null primary key,
introvertno bit,
haljina varchar(31) not null,
maraka decimal(16, 6),
hlace varchar(46) not null,
narukvica int not null,
majica varchar(35)
);

create table cura( 
sifra int not null primary key,
novcica decimal(16, 5) not null,
gustoca decimal(18, 6) not null,
lipa decimal(13, 10),
ogrlica int not null,
bojakose varchar(38),
suknja varchar(36),
punac int references punac(sifra)
);

create table sestra_svekar( 
sifra int not null primary key,
sestra int references sestra(sifra) not null,
svekar int references svekar(sifra) not null
);

create table zena( 
sifra int not null primary key,
treciputa datetime,
hlace varchar(46),
kratkamajica varchar(31) not null,
jmbag char(11) not null,
bojaociju varchar(39) not null,
haljina varchar(44),
sestra int references sestra(sifra) not null
);

create table muskarac( 
sifra int not null primary key,
bojaociju varchar(50) not null,
hlace varchar(30),
modelnaocala varchar(43),
maraka decimal(14, 5) not null,
zena int references zena(sifra) not null
);

create table mladic( 
sifra int not null primary key,
suknja varchar(50) not null,
kuna decimal(16, 8) not null,
drugiputa datetime,
asocijalno bit,
ekstrovertno bit not null,
dukserica varchar(48) not null,
muskarac int references muskarac(sifra)
);

insert into zena (sifra, treciputa, hlace, kratkamajica, jmbag, bojaociju, haljina, sestra)
values (1,'2004-04-12','d','d','d','d','d',2);

(2,'2005-11-16','s','s','s','s','s',2),
(3,'2006-05-24','m','m','m','m','m',3);

insert into zena (sifra, bojaociju, hlace, modelnaocala, maraka, zena)
values
(1,'smeða','denim','gf','12.11',1),
(2,'plava','trava','er','23.56',2),
(3,'zelena','mjas','ui','44.89',3);

insert into sestra (sifra, introvertno, haljina, maraka, hlace, narukvica, majica)
values (1,1,'sestra','1.1','denim',1,'zgof');

insert into sestra (sifra, introvertno, haljina, maraka, hlace, narukvica, majica)
values (2,1,'dana','2.2','star',2,'ser');

insert into sestra (sifra, introvertno, haljina, maraka, hlace, narukvica, majica)
values (3,0,'tref','3.3','idem',3,'sed');

select * from sestra;

delete sestra;

select * from muskarac;

insert into svekar (sifra, bojaociju, prstena, dukserica, lipa, eura, majica)
values (1,'plava',1,'èvrsta','0.55','0.05','crvena');

insert into svekar (sifra, bojaociju, prstena, dukserica, lipa, eura, majica)
values (2,'smeða',2,'duboka','0.45','0.04','velika');

insert into svekar (sifra, bojaociju, prstena, dukserica, lipa, eura, majica)
values (3,'zelena',3,'topla','0.75','0.10','mala');

select * from svekar;

insert into sestra_svekar (sifra, sestra, svekar)
values (1,1,1);

insert into sestra_svekar (sifra, sestra, svekar)
values (2,2,2);

insert into sestra_svekar (sifra, sestra, svekar)
values (3,3,3);

select * from sestra_svekar;

delete sestra_svekar
delete svekar
delete sestra

insert into mladic (sifra, bojaociju, prstena, dukserica, lipa, eura, majica)
values (3,'zelena',3,'topla','0.75','0.10','mala');