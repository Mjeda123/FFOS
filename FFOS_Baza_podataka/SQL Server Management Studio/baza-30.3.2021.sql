--select * from autor
--where ime='August' and prezime='Šenoa';

--select * from katalog where autor=2;

--select * from izdavac where sifra=3;

--select a.ime, a.prezime, b.naslov,
--c.naziv as izdavac, d.naziv as mjesto
--from autor a 
--inner join katalog b on b.autor=a.sifra
--inner join izdavac c on b.izdavac=c.sifra
--inner join mjesto d on b.mjesto=d.sifra
--where naslov like '%ljubav%';



