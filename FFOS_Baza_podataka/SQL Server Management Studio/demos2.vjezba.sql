use amjeda_4;

select ime, datumrodenja as datum from autor;
select * from autor where sifra=15312;

select * from autor where sifra!=15312;
select * from autor where sifra>15312;
select * from autor where sifra>=15312 or datumrodenja is null;
select * from autor where sifra>=15312 and datumrodenja is null;
select * from autor where sifra>=15312 and datumrodenja is not null;

select * from autor where ime like 'm%';
--poèinje sa m a završava s a
select * from autor where ime like 'm%a';
select * from autor where ime like 'm%e%a';

select ime from autor where sifra in (1,2,15312);

select top 10 ime,prezime from autor;

select top 40 autor, naslov from katalog;

select * from autor;

update autor set ime='Ivan',prezime='Ivaniæ' where sifra=3;
select * from autor where sifra=3;


select a.ime, a.prezime, k.naslov, i.naziv, i.aktivan, m.naziv, m.drzava
from autor a
inner join katalog k on a.sifra = k.autor
inner join izdavac i on k.izdavac = i.sifra
inner join mjesto m on m.sifra = k.mjesto
where i.aktivan=1;

select a.ime, a.prezime, k.naslov, i.naziv as naziv_izdavaca, i.aktivan, 
m.naziv as ime_mjesta, m.drzava
from autor a
inner join katalog k on a.sifra = k.autor
inner join izdavac i on k.izdavac = i.sifra
inner join mjesto m on m.sifra = k.mjesto
where i.aktivan=1;