--select sifra,naziv, postanskibroj,
--naziv as mjesto, 'DA' as glavni, len(naziv) as dn from mjesto

--update mjesto set naziv = 'Kopenhagen'
--where sifra=2;

--update mjesto set naziv='Osijek'
--where sifra=4;

--select * from katalog
--where naslov like '%ljubav%'
--and sifra not in (2541,3031)

--select * from autor
--where datumrodenja is not null;
--where ime like 'andrej' 

select * from autor

insert into autor (sifra,ime,prezime)
values (7,'Andrej','Mjeda'); 



--delete katalog where sifra=2538;

