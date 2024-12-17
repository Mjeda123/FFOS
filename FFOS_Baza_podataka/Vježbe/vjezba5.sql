use svastara;

--VJE�BA ZA ZAGRIJAVANJE - vje�ba 5
--izlistaj sve �upanije (22 rezultata)
select naziv from Zupanije;

--izlistaj sve op�ine (546 rezultata)
select naziv from Opcine;

--izlistajte sve kupce kojima adresa sadr�i broj 86 i nepoznato im je mjesto stanovanja i
--ime im po�inje s slovom s (10 rezultata)
select ime, prezime from Kupci 
where adresa like '%86%' 
and 
mjesto is null 
and 
ime like 's%';
--adresa mora sadr�avati broj 86, zato se taj broj stavlja izme�u postotka, mjesto stanovanja je nepoznato 
--odnosno ima null vrijednost, a ime po�inje slovom S i zato se na po�etak stavlja s, a iza %
--4. zadatak rije�ite sami!

--IDEMO IZVU�I SMISLENE PODATKE
--Izlistajte nazive op�ina koje se nalaze u osje�ko-baranjskoj �upaniji
--tablica Zupanije je u tablici Opcine vanjski klju� - da bi ovaj zadatak rije�ili prvo treba
--vidjeti pod kojom je �ifrom OB� u tablici Zupanije
select * from Zupanije;
--OBZ je pod sifrom 14
select naziv from Opcine where zupanija=14;
--42 rezultata

--Postoji li u zadarskoj �upaniji mjesta koja po�inje s slovom a?
--tablica Zupanije povezana je s tablicom Opcine tako sto je ona u toj tablici vanjski klju�
--tablica Opcine povezana je sa tablicom Mjesta
--ALI, tablice Zupanije i Mjesto nisu me�usobno povezane - ZATO NAM TREBA INNER JOIN
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

--ZADACI ZA VJE�BU - kraj vjezbe 5
--Izlistaj sve dobavlja�e iz Osje�ko baranjske �upanije (12 rezultata)
--Dobavljac nije direktno povezan sa Zupanijama, pa treba raditi inner join
select d.naziv, z.naziv
from Dobavljaci d
inner join Mjesta m on m.sifra=d.mjesto
inner join Opcine o on o.sifra=m.opcina
inner join Zupanije z on z.sifra=o.zupanija
where z.naziv='Osje�ko-baranjska �upanija';
--z.naziv nije potrebno pisati gore kod selecta, ali sam ja dodala �isto da vidite da su svi iz OBZ-a

--izlistajte sva mjesta u op�ini Popovac u Osje�ko baranjskoj �upaniji (3 rezultata)
select m.naziv as mjesto, o.naziv as opcina, z.naziv as zupanija
from Mjesta m
inner join Opcine o on o.sifra=m.opcina
inner join Zupanije z on z.sifra=o.zupanija
where o.naziv='Popovac' and z.naziv='Osje�ko-baranjska �upanija';
--kod selecta nije nu�no pisati o.naziv i z.naziv, ali sam stavila da vidite da su se uvjeti ispunili

--2. sami rije�ite

--izlistajte sve kupce koji u jmbg nemaju broj 7 i �ive u zadarskoj �upaniji--isto probajte sami--mali HINT - trebate napraviti inner join i krenuti od tablice kupci, treba spojiti tu tablicu sa racuni, racuni sa proizvodinaprimci i tako dalje--dokle god se ne do�e do tablice zupanije-- ne treba spajati tablice uslugenasastavnici i usluge--uvjeti - naziv zupanije ='Zadarska �upanije', a jmbg not like '%7%'--4. sami rije�ite