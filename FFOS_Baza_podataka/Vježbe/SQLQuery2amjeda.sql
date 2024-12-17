
--use amjeda_1;

select * from mjesto;

insert into mjesto (sifra, naziv, postanskibroj, drzava)
values (1,'Zagreb','10000','Hrvatska');

insert into mjesto (sifra, naziv)
values (2,'Kopenhagen');

insert into mjesto
values (3,'Rijeka',null,'Hrvatska');

insert into mjesto (naziv,sifra)
values ('osijek',4);

select * from autor;

insert into autor (sifra, ime, prezime, datumrodenja)
values
(1,'Ivana','Brli? Mažurani?','1874-04-18'),
(2,'August','Šenoa','1838-11-14'),
(3,'Robert','Preiši?',null);

select * from izdavac

insert into izdavac (sifra,naziv,aktivan)
values (1,'Lavendel og Rosmarin',1);

insert into izdavac (sifra,naziv,aktivan)
values (2,'Rije?',1);

insert into izdavac (sifra,naziv,aktivan)
values (3,'Hrvatska revija',1);

insert into izdavac (sifra,naziv,aktivan)
values (4,'Biblioteka ONLINE',0);

insert into izdavac (sifra,naziv,aktivan)
values (5,'Hrvatski pedagoški književni zbor',1);


select * from katalog;

insert into katalog (sifra, naslov, autor, izdavac,mjesto)
values (1,'Mir u duši',1,1,2);

insert into katalog (sifra, naslov, autor, izdavac,mjesto)
values (2,'Pri?e iz davnina',1,3,1);

insert into katalog (sifra, naslov, autor, izdavac,mjesto)
values (3,'?udnovate zgode šegrta Hlapui?a',1,5,1);

insert into katalog (sifra, naslov, autor, izdavac,mjesto)
values (4,'?uvaj se senjske ruke',2,2,3);

insert into katalog (sifra, naslov, autor, izdavac,mjesto)
values (5,'Zlatarevo zlato',2,2,3);

insert into katalog (sifra, naslov, autor, izdavac,mjesto)
values (6,'Kultura u predgra?u',3,4,4);

insert into autor (sifra, ime, prezime, datumrodenja)
values (7,'Andrej','Mjeda','1997-06-12');



select * from mjesto where sifra=4;

update mjesto set naziv='Osijek' where sifra=4;

select * from autor;

update autor set prezime='Periši?',
datumrodenja='1979-10-25' where sifra=3;


delete from autor where sifra=3;

select * from katalog where autor=3;

delete from katalog where sifra=6;