create database park_3;

use park_3;

create table vrsta(
sifra int not null primary key,
naziv varchar(50) not null
);

drop table vrsta;

create table Nacionalnipark(
sifra int not null primary key,
naziv varchar(50) not null,
aktivnost varchar(50) not null
);

drop table Nacionalnipark;

create table ParkPrirode(
sifra int not null primary key,
naziv varchar(50) not null,
aktivnost varchar(50) not null
);

drop table ParkPrirode;

drop table vrsta;

create table zivotinja(
sifra int not null primary key,
imeZivotinje varchar(50) not null,
porodica varchar(50) not null,
obitavaliste varchar(50) not null
);
--constraint PK_zivotinja primary key clustered (park_sifra, staniste_sifra)

drop table zivotinja;

create table lokacija(
sifra int not null primary key,
adresa varchar(50) not null
);

create table dogadaj(
sifra int not null primary key,
aktivnost int references park(sifra) not null,
atrakcija varchar(50) not null
);

create table korisnik(
sifra int not null primary key,
ime varchar(50) not null,
prezime varchar(50) not null,
datumRodenja datetime
);
posjeta int references posjeta(sifra)
select * from korisnik;
alter table posjeta alter column korisnik int not null references korisnik(sifra);
alter table korisnik alter column datumRodenja varchar(50) not null;


drop table korisnik;

create table park(
sifra int not null primary key,
vrsta int references vrsta(sifra),
aktivnost varchar(50) not null
);

references posjeta(sifra),

drop table park;
drop table dogadaj;

constraint UC_dogadaj unique (sifra, aktivnost)
foreign key

drop database park_1;

drop table lokacija;

drop table dogadaj;

drop table korisnik;

create table posjeta(
park int not null references park(sifra),
korisnik int not null references korisnik(sifra),
datum varchar(50) not null
);

alter table posjeta alter column korisnik int not null references korisnik(sifra)
alter table posjeta alter column park int

park int not null references park(sifra),
korisnik int not null references korisnik(sifra),


drop table posjeta;

alter table posjeta alter column korisnik references park(sifra)

create table staniste(
sifra int not null primary key,
zivotinja int references zivotinja(sifra),
park int references park(sifra),
zupanija varchar(50) not null
);



drop table staniste;