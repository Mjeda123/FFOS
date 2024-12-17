use amjeda_4;

select count(*) as brojredova from autor;

select top 10 * from autor
order by 2, 1 desc asc

select * from autor
where ime='Andrej' or prezime='Mjeda'

select * from autor
where not (ime='Andrej' and prezime='Mjeda')

insert into autor values (4, 'Andrej','Mjeda','1997-06-12')

select distinct ime from autor
where ime like 'A%'
order by 1;

select distinct ime from autor
where ime like '%NT'
order by 1;

select distinct ime from autor
where ime like '%lo%'
order by 1;

-- Aloizije je došao u knjinicu
-- Alois ga je ostavila i on sada pati
-- Što bi prporu?ili Alojziju za ?itanje

select top 10 * from katalog
where naslov like '%ljubav%'
and sifra in (2541,2879,2938);

select * from autor
where datumrodenja
between '1997-06-12' and '1997-12-31';

--autoru po odabiru postavite datum ro?enja kada ste vi ro?eni

update autor set datumrodenja='1997-06-12' where sifra=2;

select * from autor where sifra=2;

select top 1 * from autor where sifra>18000;


-- izlistajte autore koje ne mogu obrisati

select distinct autor from katalog

select * from autor where sifra between
15158 and 15182;
delete from autor where sifra in (15158,
15159, 15160, 15161, 15162);

-- koliko ima izdavaca koju su društvo s ograni?enom odgovornoš?u

select naziv from izdavac
where naziv like '%d.o%o%'

--osije?ka-baranjska
select * from mjesto
where postanskibroj is not null
and postanskibroj like '31%'
order by 3;

--s nnajmanjom greškom izlistajte autorice
select distinct ime 
from autor where ime like '%a'

select ime, prezime from autor;

select naslov from katalog
where naslov like '%LJUB%';

select * from mjesto
where postanskibroj is null;

select naziv from mjesto
where sifra not between '2000' and '3000';

select drzava from mjesto
select naziv from mjesto

select drzava='Hrvatska' from mjesto
where naziv like '%Y%'

select * from mjesto
where drzava='Hrvatska' and naziv like '%Y'

select * from autor
where datumrodenja like '1980-12-07'

select * from izdavac
where aktivan='1' and naziv like '%.'

select * from izdavac
where aktivan='0' and not(sifra='346' and sifra='234' and sifra='589')

select * from katalog
where sifra>3000 or naslov like '%ljubav%'


