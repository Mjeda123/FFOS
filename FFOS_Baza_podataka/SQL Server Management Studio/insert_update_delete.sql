select * from mjesto;

--insert into mjesto (sifra,naziv,postanskibroj,drzava)
--values (1,'Zagreb','10000','Hrvatska');

--insert into mjesto(sifra,naziv,drzava,postanskibroj)
--values (2,'Kopenagen','Danska',null);

--insert into mjesto (sifra,naziv)
--values (3,'Osijek');

--insert into mjesto (sifra,naziv,postanskibroj,drzava)
--values (4,'Rijeka','51000','Hrvatska');

--select * from autor;

--insert into autor (sifra,ime,prezime,datumrodenja)
--values (1,'Ivana','Brli� Ma�urani�','1874-04-18');

--insert into autor (sifra,ime,prezime,datumrodenja)
--values (2,'August','�enoa','1838-11-14');

--insert into autor (sifra,ime,prezime,datumrodenja)
--values (3,'Robert','Prei�i�',null);

--select * from autor;

--select * from mjesto;

--select * from izdavac;

--insert into izdavac(sifra,naziv,aktivan)
--values (1,'Hrvatska revija',1);

--insert into izdavac(sifra,naziv,aktivan)
--values (2,'Lavendel og rosmarin',1);

--insert into izdavac(sifra,naziv,aktivan)
--values (3,'Rije�',0);

--insert into izdavac(sifra,naziv,aktivan)
--values (4,'Biblioteka ONLINE',1);

--insert into izdavac(sifra,naziv,aktivan)
--values (5,'Hrvatsko pedago�ki knji�evni zbor',0);

--select * from izdavac;

--select * from katalog;

--insert into katalog(sifra,autor,naslov,izdavac,mjesto)
--values (1,1,'Mir u Du�i',1,1);

--select * from katalog;

select * from mjesto;

--update mjesto set naziv = 'Kopenhagen'
--where sifra=2;

--update mjesto set naziv='Osijek'
--where sifra=3;

delete mjesto where sifra=2;

select * from mjesto;
