create database student;

use student;

create table fakultet(
sifra int not null primary key,
naziv varchar(50) not null,
adresa varchar(50),
grad varchar(50) not null
);

create table studij(
sifra int not null primary key,
naziv varchar(50) not null,
fakultet int references fakultet(sifra),
brojUpisanih varchar(50)
);

drop table studij;

create table student(
sifra int not null primary key,
ime varchar(50) not null,
prezime varchar(50) not null,
datumrodenja datetime,
studij int references studij(sifra),
fakultet int references fakultet(sifra)
);

drop table student;
