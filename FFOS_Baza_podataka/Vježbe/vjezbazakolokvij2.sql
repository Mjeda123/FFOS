create database kolokvij_vjezba_2;

use kolokvij_vjezba_2;

create table svekar(
sifra int primary key not null,
stilfrizura varchar(48),
ogrlica int not null,
asocijalno bit not null
);

create table zarucnica(
sifra int primary key not null,
narukvica int,
bojakose varchar(37) not null,
novcica decimal(15, 9),
lipa decimal(15, 8) not null,
indifiretno bit not null
);

create table decko(
sifra int primary key not null,
indifiretno bit,
vesta varchar(34),
asocijalno bit not null
);

create table prijatelj(
sifra int primary key not null,
modelnaocala varchar(37),
treciputa datetime not null,
ekstrovertno bit not null,
prviputa datetime,
svekar int references svekar(sifra) not null
);

create table decko_zarucnica(
sifra int primary key not null,
decko int references decko(sifra) not null,
zarucnica int references zarucnica(sifra) not null
);

create table cura(
sifra int primary key not null,
haljina varchar(33) not null,
drugiputa datetime not null,
suknja varchar(38),
narukvica int,
introvertno bit,
majica varchar(40) not null,
decko int references decko(sifra)
);

create table neprijatelj(
sifra int primary key not null,
majica varchar(32),
haljina varchar(43) not null,
lipa decimal(16, 8),
modelnaocla varchar(49) not null,
kuna decimal(12, 6) not null,
jmbag char(11),
cura int references cura(sifra)
);

create table brat(
sifra int primary key not null,
suknja varchar(47),
ogrlica int not null,
asocijalno bit not null,
neprijatelj int references neprijatelj(sifra) not null
);


insert into prijatelj (sifra, modelnaocala, treciputa, ekstrovertno, prviputa, svekar)
values
(1, 'model1', '2020-04-30', 1, '2020-03-12', 1)

insert into prijatelj (sifra, modelnaocala, treciputa, ekstrovertno, prviputa, svekar)
values
(2, 'model2', '2020-04-30', 0, '2020-03-12', 2)

insert into prijatelj (sifra, modelnaocala, treciputa, ekstrovertno, prviputa, svekar)
values
(3, 'model3', '2020-04-30', 0, '2020-03-12', 3)

select * from prijatelj;


insert into svekar (sifra, stilfrizura, ogrlica, asocijalno)
values
(1, 'mohawk', 1, 1)
insert into svekar (sifra, stilfrizura, ogrlica, asocijalno)
values
(2, 'normalna', 2, 0)
insert into svekar (sifra, stilfrizura, ogrlica, asocijalno)
values
(3, 'emo', 3, 1);

select * from svekar;

insert into brat (sifra, suknja, ogrlica, asocijalno, neprijatelj)
values
(3, 'emo', 3, 1);

insert into decko (sifra, indifiretno, vesta, asocijalno)
values
(1, 1, 'bijela', 0);

insert into decko (sifra, indifiretno, vesta, asocijalno)
values
(2, 0, 'crvena', 0);

insert into decko (sifra, indifiretno, vesta, asocijalno)
values
(3, 1, 'žarka', 1);

select * from decko;

insert into cura (sifra, haljina, drugiputa, suknja, narukvica, introvertno, majica, decko)
values
(1, 'crvena1', '2020-12-12', 'modelq', 1, 1, 'bijela', 1);
insert into cura (sifra, haljina, drugiputa, suknja, narukvica, introvertno, majica, decko)
values
(2, 'crvena2', '2020-11-11', 'modelw', 2, 0, 'bijela', 2);
insert into cura (sifra, haljina, drugiputa, suknja, narukvica, introvertno, majica, decko)
values
(3, 'crvena3', '2020-10-10', null, 3, 1, 'bijela', 3);

select * from cura;
delete cura;

insert into neprijatelj (sifra, majica, haljina, lipa, modelnaocla, kuna, jmbag, cura)
values
(1, 'zelena', 'žuta', '0.75', 'model1', '10.0', '11223', 1);
insert into neprijatelj (sifra, majica, haljina, lipa, modelnaocla, kuna, jmbag, cura)
values
(2, 'ruša', 'smed', '0.8', 'model2', '16.0', '1544', 2);
insert into neprijatelj (sifra, majica, haljina, lipa, modelnaocla, kuna, jmbag, cura)
values
(3, 'tuz', 'nar', '0.1', 'model3', '22.0', '9787', 3);

select * from neprijatelj;

insert into brat (sifra, suknja, ogrlica, asocijalno, neprijatelj)
values
(1, 'rzu', 1, 1, 1);
insert into brat (sifra, suknja, ogrlica, asocijalno, neprijatelj)
values
(2, 'rzu', 14, 0, 2);
insert into brat (sifra, suknja, ogrlica, asocijalno, neprijatelj)
values
(3, 'rzu', 3, 1, 3);

select * from brat;

delete brat where ogrlica!=14;

insert into decko_zarucnica (sifra, decko, zarucnica)
values
(1, 1, 1);
insert into decko_zarucnica (sifra, decko, zarucnica)
values
(2, 1, 2);
insert into decko_zarucnica (sifra, decko, zarucnica)
values
(3, 3, 3);

delete decko_zarucnica;
insert into zarucnica (sifra, narukvica, bojakose, novcica, lipa, indifiretno)
values
(1, 1455, 'plava', '2.0', '0.50',1);

insert into zarucnica (sifra, narukvica, bojakose, novcica, lipa, indifiretno)
values
(2, 1566, 'smeða', '1.0', '0.75',2);
insert into zarucnica (sifra, narukvica, bojakose, novcica, lipa, indifiretno)
values
(3, 1756, 'crna', '1.0', '0.01',3);

select * from zarucnica;

select sifra, suknja from cura
where sifra=3;

select sifra, vesta, asocijalno from decko
where sifra=2;