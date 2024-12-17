
use park_3;

select * from zivotinja;

insert into zivotinja (sifra, imeZivotinje, porodica, obitavaliste)
values
(1,'Ris','sisavac','šume'),
(2,'Planinski žutokrug','gmazovi','planine'),
(3,'Visovaèki glavoèiæ','zrakoperke','jezero Visovac'),
(4,'Zelena krastaèa','vodozemci','more'),
(5,'Škanjac osaš','ptice','šume'),
(6,'Barska kornjaèa','gmazovi','more'),
(7,'Krška gušterica','gmazovi','šume'),
(8,'Dinarski voluhar','sisavac','planine'),
(9,'Orao štekavac','ptice','šume'),
(10,'Veliki potkovnjak','sisavac','špilje'),
(11,'Prstac','mekušci','more'),
(12,'Crni daždevnjak','vodozemac','planine'),
(13,'Vuk','sisavac','šume'),
(14,'Jegulja','zrakoperke','jezera'),
(15,'Bijele rode','ptice','sela'),
(16,'Obièna èanèara','gmazovi','planine'),
(17,'Divokoza','sisavac','planine'),
(18,'Lasica','sisavac','šume'),
(19,'Sredozemni galeb','ptice','otoci'),
(20,'Sova jastrebaèa','ptice','šume');

select * from zivotinja;
delete zivotinja;

select * from vrsta;
insert into vrsta (sifra, naziv)
values
(1,'Nacionalni park Risnjak'),
(2,'Nacionalni park Paklenica'),
(3,'Nacionalni park Krka'),
(4,'Nacionalni park Kornati'),
(5,'Nacionalni park Plitvièka jezera'),
(6,'Nacionalni park Brijuni'),
(7,'Nacionalni park Mljet'),
(8,'Nacionalni park Sjeverni Velebit'),
(9,'Park prirode Kopaèki rit'),
(10,'Park prirode Papuk'),
(11,'Park prirode Telašæica'),
(12,'Park prirode Uèka'),
(13,'Park prirode Velebit'),
(14,'Park prirode Vransko jezero'),
(15,'Park prirode Lonjsko polje'),
(16,'Park prirode Dinara'),
(17,'Park prirode Biokovo'),
(18,'Park prirode Medvednica'),
(19,'Park prirode Lastovsko otoèje'),
(20,'Park prirode Žumberak-Samoborsko gorje');
delete vrsta; 
select * from park;
select * from vrsta;

insert into staniste (sifra, zivotinja, park, zupanija)
values
(1,1,1,'Primorsko-goranska'),
(2,2,2,'Zadarska i Lièko-senjska'),
(3,3,3,'Šibensko-kninska'),
(4,4,4,'Šibensko-kninska'),
(5,5,5,'Lièko-senjska i Karlovaèka'),
(6,6,6,'Istarska'),
(7,7,7,'Dubrovaèko-neretvanska'),
(8,8,8,'Lièko-senjska'),
(9,9,9,'Osjeèko-baranjska'),
(10,10,10,'Virovitièko-podravska i Požeško-slavonska'),
(11,11,11,'Zadarska'),
(12,12,12,'Istarska i Primorsko-goranska'),
(13,13,13,'Lièko-senjska, Zadarska i Šibensko-kninska'),
(14,14,14,'Zadarska i Šibensko-kninska'),
(15,15,15,'Sisaèko-moslavaèka i Brodsko-posavska'),
(16,16,16,'Splitsko-dalmatinska i Šibensko-kninska'),
(17,17,17,'Splitsko-dalmatinska'),
(18,18,18,'Grad Zagreb, Zagrebaèka i Krapinsko-zagorska'),
(19,19,19,'Dubrovaèko-neretvanska'),
(20,20,20,'Zagrebaèka i Karlovaèka');

select * from staniste;
delete staniste;

insert into park (sifra, vrsta, aktivnost)
values
(1,1,'planinarenje'),
(2,2,'pouène staze'),
(3,3,'vožnja brodom'),
(4,4,'plivanje'),
(5,5,'voðene ture'),
(6,6,'promatranje životinja'),
(7,7,'veslanje kanuom'),
(8,8,'letenje s balonom'),
(9,9,'hodanje'),
(10,10,'škole u prirodi'),
(11,11,'vožnja biciklom'),
(12,12,'posjeæivanje špilja'),
(13,13,'alpinizam'),
(14,14,'ribolov'),
(15,15,'biciklizam'),
(16,16,'škola u prirodi'),
(17,17,'ugostiteljstvo i smještaj'),
(18,18,'jahanje'),
(19,19,'ronjenje'),
(20,20,'kampiranje');
delete park;
select * from park;

insert into korisnik (sifra, ime, prezime, datumRodenja)
values
(1,'Katarina','Horvat','1998-11-11'),
(2,'Zdravko','Mioèiæ','1975-07-20'),
(3,'Anamarija','Šuber','1986-04-24'),
(4,'Fran','Kosteliæ','2002-02-02'),
(5,'Luciano','Banduri','1964-06-27');
select * from korisnik;
delete korisnik;

insert into posjeta (park, korisnik, datum)
values
(1,4,'2022-10-05'),
(2,2,'2022-09-13'),
(3,5,'2023-05-15'),
(5,2,'2023-03-23'),
(6,4,'2023-07-10'),
(8,2,'2023-08-14'),
(9,3,'2022-09-08'),
(10,3,'2023-03-11'),
(12,4,'2023-04-21'),
(13,2,'2023-06-01'),
(14,5,'2022-08-17'),
(15,1,'2022-02-28'),
(16,5,'2023-07-15'),
(18,1,'2022-11-21'),
(20,1,'2023-01-30');

select * from posjeta;
delete posjeta;

--select duginaziv from artikli
--where sifra not in
--(select distinct artikl from artiklinaprimci);

--select * from vrsta
--where sifra not in
--(select distinct vrsta from park);

--select sifra from vrsta;
--select distinct vrsta from park;

--select sifra from park;
--select distinct park from posjeta;

select * from park
where sifra not in
(select distinct park from posjeta);

--select b.naslov, d.naziv
--from autor a
--inner join katalog b on a.sifra = b.autor
--inner join izdavac c on b.izdavac = c.sifra
--inner join mjesto d on b.mjesto = d.sifra
--where
--a.datumrodenja between '1973-01-01' and '1974-01-01'
--and c.aktivan=1;

select p.datum, v.naziv, k.ime, k.prezime
from korisnik k
inner join posjeta p on k.sifra=p.korisnik
inner join park r on p.park=r.sifra
inner join vrsta v on r.vrsta=v.sifra
where p.datum between '2022-10-05' and '2023-05-15';

--SELECT ime, prezime from autor
--WHERE sifra!=2 and datumRodenja between '1980-01-01' and
--'1980-02-01';

select sifra, imeZivotinje, porodica from zivotinja
where sifra!=2 and porodica like 'gmazovi';