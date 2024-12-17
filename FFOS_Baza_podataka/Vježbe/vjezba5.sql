use svastara;

--VJEŽBA ZA ZAGRIJAVANJE - vježba 5
--izlistaj sve županije (22 rezultata)
select naziv from Zupanije;

--izlistaj sve opæine (546 rezultata)
select naziv from Opcine;

--izlistajte sve kupce kojima adresa sadrži broj 86 i nepoznato im je mjesto stanovanja i
--ime im poèinje s slovom s (10 rezultata)
select ime, prezime from Kupci 
where adresa like '%86%' 
and 
mjesto is null 
and 
ime like 's%';
--adresa mora sadržavati broj 86, zato se taj broj stavlja izmeðu postotka, mjesto stanovanja je nepoznato 
--odnosno ima null vrijednost, a ime poèinje slovom S i zato se na poèetak stavlja s, a iza %
--4. zadatak riješite sami!

--IDEMO IZVUÆI SMISLENE PODATKE
--Izlistajte nazive opæina koje se nalaze u osjeèko-baranjskoj županiji
--tablica Zupanije je u tablici Opcine vanjski kljuè - da bi ovaj zadatak riješili prvo treba
--vidjeti pod kojom je šifrom OBŽ u tablici Zupanije
select * from Zupanije;
--OBZ je pod sifrom 14
select naziv from Opcine where zupanija=14;
--42 rezultata

--Postoji li u zadarskoj županiji mjesta koja poèinje s slovom a?
--tablica Zupanije povezana je s tablicom Opcine tako sto je ona u toj tablici vanjski kljuè
--tablica Opcine povezana je sa tablicom Mjesta
--ALI, tablice Zupanije i Mjesto nisu meðusobno povezane - ZATO NAM TREBA INNER JOIN
select m.naziv as mjesto
from Mjesta m
inner join Opcine o on o.sifra=m.opcina
inner join Zupanije z on z.sifra=o.zupanija
--ide uvjet where - mjesto mora biti u zadarskoj zupaniji i zbog toga moramo provesti select u toj tablici da
--vidimo pod kojom se sifrom nalazi ta zupanija
where m.naziv like 'a%' and z.sifra=13;
select * from Zupanije;
--0 rezultata, ne postoji mjesto na A u zadarskoj zupaniji

--Koji su sve kupci iz Osijek? (72 rezultata)
select * from Mjesta where naziv='Osijek';
select * from Kupci where mjesto=45691;

--ZADACI ZA VJEŽBU - kraj vjezbe 5
--Izlistaj sve dobavljaèe iz Osjeèko baranjske županije (12 rezultata)
--Dobavljac nije direktno povezan sa Zupanijama, pa treba raditi inner join
select d.naziv, z.naziv
from Dobavljaci d
inner join Mjesta m on m.sifra=d.mjesto
inner join Opcine o on o.sifra=m.opcina
inner join Zupanije z on z.sifra=o.zupanija
where z.naziv='Osjeèko-baranjska županija';
--z.naziv nije potrebno pisati gore kod selecta, ali sam ja dodala èisto da vidite da su svi iz OBZ-a

--izlistajte sva mjesta u opæini Popovac u Osjeèko baranjskoj županiji (3 rezultata)
select m.naziv as mjesto, o.naziv as opcina, z.naziv as zupanija
from Mjesta m
inner join Opcine o on o.sifra=m.opcina
inner join Zupanije z on z.sifra=o.zupanija
where o.naziv='Popovac' and z.naziv='Osjeèko-baranjska županija';
--kod selecta nije nužno pisati o.naziv i z.naziv, ali sam stavila da vidite da su se uvjeti ispunili

--2. sami riješite

--izlistajte sve kupce koji u jmbg nemaju broj 7 i žive u zadarskoj županiji--isto probajte sami--mali HINT - trebate napraviti inner join i krenuti od tablice kupci, treba spojiti tu tablicu sa racuni, racuni sa proizvodinaprimci i tako dalje--dokle god se ne doðe do tablice zupanije-- ne treba spajati tablice uslugenasastavnici i usluge--uvjeti - naziv zupanije ='Zadarska županije', a jmbg not like '%7%'--4. sami riješite