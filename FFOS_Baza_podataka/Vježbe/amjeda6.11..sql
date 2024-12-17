use amjeda_4;

select * from autor 
where ime='August' and prezime='Šenoa';

select naslov from katalog where autor=2;

select b.naslov
from autor a inner join katalog b
on a.sifra = b.autor
where
a.ime='August' and a.prezime='Šenoa';

select b.naslov, d.naziv
from autor a
inner join katalog b on a.sifra = b.autor
inner join izdavac c on b.izdavac = c.sifra
inner join mjesto d on b.mjesto = d.sifra
where
a.datumrodenja between '1973-01-01' and '1974-01-01'
and c.aktivan=1;


select a.ime, a.prezime, b.naslov,
c.naziv as izdavac, d.naziv as mjesto
from autor a inner join katalog b
on a.sifra=b.autor
inner join izdavac c
on c.sifra=b.izdavac
inner join mjesto d
on d.sifra=b.mjesto
where d.naziv not like 'V%'
order by 3;


select a.ime, a.prezime, b.naslov
from autor a left join katalog b
on a.sifra=b.autor;

select count(*) from kupci;

use svastara;

select * from Zupanije;
select * from Opcine;
select distinct ime 
from Kupci where ime like '%s'
adresa like '%86' and mjesto is null and ime like 'S%';

select top 5 * from artikli
where kratkinaziv like '%stol%'
and cijena between 100 and 200
and barkod like '385%';


select a.naziv, sum(c.cijena*c.kolicina) as ukupno
from 
dobavljaci a inner join primke b on a.sifra=b.dobavljac
inner join artiklinaprimci c on b.sifra=c.primka
inner join artikli d on d.sifra=c.artikl
group by a.naziv;

select a.naziv, sum(c.cijena*c.kolicina) as ukupno
from 
dobavljaci a inner join primke b on a.sifra=b.dobavljac
inner join artiklinaprimci c on b.sifra=c.primka
inner join artikli d on d.sifra=c.artikl
where a.naziv!='Jakopec vodoinstalaterski obrt'
group by a.naziv
having sum(c.cijena*c.kolicina)>90000000
order by 2 desc;



select count(*) from artikli;

select distinct artikl from Artiklinaprimci;

select * from artikli
where sifra not in
(select distinct artikl from Artiklinaprimci);

delete from artikli where sifra not in (select distinct artikl from Artiklinaprimci);


--Izlistaj sve dobavlja?e iz Osje?ko-baranjske županije

--select a.dobavljaci, b.mjesta, c.opcine, d.zupanija
--from

select d.naziv, z.naziv
from Dobavljaci d
inner join Mjesta m on m.sifra=d.mjesto
inner join Opcine o on o.sifra=m.opcina
inner join Zupanije z on z.sifra=o.zupanija
where z.naziv='Osjeèko-baranjska županija';

select naziv from Zupanije;

select naziv from Opcine;

select ime, prezime from Kupci 
where adresa like '%86%' 
and 
mjesto is null 
and 
ime like 's%';

select dugiNaziv, cijena, jedinicaMjere from Artikli
where cijena between 10 and 11 and jedinicaMjere like '%KG%';

select * from Artikli;

select * from Zupanije;
select naziv from Opcine where zupanija=14;

select m.naziv as mjesto
from Mjesta m
inner join Opcine o on o.sifra=m.opcina
inner join Zupanije z on z.sifra=o.zupanija
where m.naziv like 'a%' and z.sifra=13;
select * from Zupanije;

select * from Mjesta where naziv='Osijek';
select * from Kupci where mjesto=45691;

select m.naziv as mjesto, o.naziv as opcina, z.naziv as zupanija
from Mjesta m
inner join Opcine o on o.sifra=m.opcina
inner join Zupanije z on z.sifra=o.zupanija
where o.naziv='Popovac' and z.naziv='Osjeèko-baranjska županija';

select b.kratkiNaziv, p.opis
from Primke p
inner join ArtikliNaPrimci a on p.sifra=a.primka
inner join Artikli b on b.sifra=a.artikli 
where p.opis like '%studeni%';

a.artikli=b.sifra

select * from Primke;

select 
from Kupci k
inner join Racuni r on k.sifra=r.kupci
inner join ProizvodiNaRacunu p on p.racun=r.sifra
inner join Proizvodi o on p.proizvod=o.sifra
inner join Sastavnice s on s.proizvod=o.sifra
inner join 


select a.kratkiNaziv, m.naziv
from Artikli a
inner join ArtikliNaPrimci n on n.artikl=a.sifra
inner join Primke p on n.primka=p.sifra
inner join Dobavljaci d on p.dobavljac=d.sifra
inner join Mjesta m on d.mjesto=m.sifra
inner join Opcine o on m.opcina=o.sifra
inner join Zupanije z on o.naziv=z.sifra
where m.postanskiBroj='34000'

select * from Mjesta;
select * from Dobavljaci;
select * from Zupanije