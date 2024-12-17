--select * from zivotinja;
--select * from vrsta;
--select * from park;
--select * from staniste;
--select * from korisnik;
--select * from posjeta;

--select sifra, imeZivotinje, porodica from zivotinja
--where sifra!=2 and porodica like 'gmazovi';

--select p.datum, v.naziv, k.ime, k.prezime
--from korisnik k
--inner join posjeta p on k.sifra=p.korisnik
--inner join park r on p.park=r.sifra
--inner join vrsta v on r.vrsta=v.sifra
--where p.datum between '2022-10-05' and '2023-05-15';

select * from park
where sifra not in
(select distinct park from posjeta);