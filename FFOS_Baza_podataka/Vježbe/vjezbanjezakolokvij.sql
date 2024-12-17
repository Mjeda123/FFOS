create database amjeda_vk11;

use amjeda_vk11;

create table izdavac(
sifra int primary key not null,
naziv nvarchar(50) not null,
aktivan bit
);

create table autor(
sifra int primary key not null,
ime nvarchar(50) not null,
prezime nvarchar(50) not null,
datumrodenja datetime
);

create table katalog(
sifra int primary key not null,
naslov nvarchar(50) not null,
UDK nvarchar(50),
ISBN nvarchar(50)
);

create table IzdavaciZapisa(
katalozniZapis int not null references katalog(sifra),
izdavac int not null references izdavac(sifra),
financijskiProracun decimal(18,2)
);

drop table IzdavaciZapisa;

create table AutoriZapisa(
kataloznizapis int not null references katalog(sifra),
autor int not null references autor(sifra),
komentar nvarchar(500)
);

drop table IzdavaciZapisa;

insert into autor (sifra, ime, prezime, datumrodenja)
values
(1, 'Marko', 'Maruliæ', '1970-03-12')

insert into autor (sifra, ime, prezime, datumrodenja)
values
(2, 'Ivana', 'Brliæ', '1886-04-12')

insert into autor (sifra, ime, prezime, datumrodenja)
values
(3, 'Andrej', 'Mjeda', '1997-06-12');

select * from autor;

insert into izdavac (sifra, naziv, aktivan)
values
(3, 'knjiga1', 1);

insert into izdavac (sifra, naziv, aktivan)
values
(2, 'knjiga2', 0);

insert into izdavac (sifra, naziv, aktivan)
values
(1, 'knjiga3', 1);

select * from izdavac;

insert into katalog (sifra, naslov, UDK, ISBN)
values
(1, 'knjiga3','984.82','9780546');


insert into katalog (sifra, naslov, UDK, ISBN)
values
(2, 'knjiga2','985.75','9880566');

insert into katalog (sifra, naslov, UDK, ISBN)
values
(3, 'knjiga1','945.15','9660222');

select * from katalog;


insert into IzdavaciZapisa (katalozniZapis,izdavac,financijskiProracun)
values
(2, 2, 18.2);

insert into IzdavaciZapisa (katalozniZapis,izdavac,financijskiProracun)
values
(1, 1, 18.1);

insert into IzdavaciZapisa (katalozniZapis,izdavac,financijskiProracun)
values
(3, 3, 18.3);

select * from IzdavaciZapisa;

update IzdavaciZapisa set katalozniZapis=1 where sifra=1;

update autor set prezime='Brliè' where sifra=2;

select * from autor;

delete autor where sifra=1;

select naziv from izdavac
where aktivan=1;

select a.prezime
from autor a
inner join AutoriZapisa z on a.sifra=z.autor
inner join katalog k on z.kataloznizapis=k.sifra
inner join IzdavaciZapisa i on i.katalozniZapis=k.sifra
inner join izdavac d on i.izdavac=d.sifra
where UDK like '5%';

select k.naslov
from izdavac i
inner join IzdavaciZapisa z on i.sifra=z.izdavac
inner join katalog k on z.kataloznizapis=k.sifra
where i.aktivan=1;





