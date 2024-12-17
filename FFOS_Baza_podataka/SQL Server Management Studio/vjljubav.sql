create database ljubav_1;

drop database ljubav;

use ljubav_1;

create table decko(
sifra int not null primary key,
prviPuta datetime,
modelNaocala varchar(50),
nausnica int,
zena int references zena(sifra)
);

--alter table decko alter column zena int references zena(sifra);

--zena int references zena(sifra)

drop table decko;

create table zena(
sifra int not null primary key,
novcica decimal(14, 8) not null,
narukvica int not null,
dukserica varchar(50) not null,
haljina varchar(50),
hlace varchar(50),
brat int references brat(sifra)
);

--narukvica varchar(50) not null,

drop table zena;

create table brat(
sifra int not null primary key,
nausnica int not null,
treciPuta datetime not null,
narukvica int not null,
hlace varchar(50),
prijatelj int references prijatelj(sifra)
);

drop table brat;

create table prijatelj(
sifra int not null primary key,
haljina varchar(50),
prsten int not null,
introvertno bit,
stilFrizura varchar(50) not null
);

drop table prijatelj;

create table prijatelj_ostavljena(
sifra int not null primary key,
prijatelj int references prijatelj(sifra),
ostavljena int references ostavljena(sifra)
);

drop table prijatelj_ostavljena;

create table ostavljena(
sifra int not null primary key,
prviPuta datetime not null,
kratkaMajica varchar(50) not null,
drugiPuta datetime,
marka decimal(14, 10)
);

drop table ostavljena;

