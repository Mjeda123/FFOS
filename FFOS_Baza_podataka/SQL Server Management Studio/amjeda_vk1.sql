--create database amjeda_vk2;

--drop database amjeda_vk2;

--use amjeda_vk2


--create table izdavac(
--sifra int primary key,
--naziv nvarchar(50) not null,
--aktivan bit
--);

--create table autor(
--sifra int primary key not null,
--ime nvarchar(50) not null,
--prezime nvarchar(50) not null,
--datumrodenja datetime
--);

--create table katalog(
--sifra int primary key not null,
--naslov nvarchar(50) not null,
--UDK nvarchar(50),
--ISBN nvarchar(50));

--create table AutoriZapisa(
--kataloznizapis int references katalog(sifra) not null,
--autor int references autor(sifra) not null,
--komentar nvarchar(500));


--create table IzdavaciZapisa(
--katalozniZapis int references katalog(sifra) not null,
--izdavac int references izdavac(sifra) not null,
--financijskiP decimal(18,2));

--insert into autor (sifra,ime,prezime)
--values(1,'Ivana','Brliæ-Mažuraniæ');

--insert into autor (sifra,ime,prezime)
--values(2,'Adrijan','Buèek');

--insert into autor (sifra,ime,prezime)
--values(3,'Noah','Yuval-Harari');

--insert into izdavac (sifra,naziv,aktivan)
--values(1,'Fraktura',1);

--insert into izdavac(sifra,naziv,aktivan)
--values(2,'Lavendel og Rosmarin',1);

--insert into izdavac(sifra,naziv,aktivan)
--values(3,'Rijeè',0);

--insert into katalog (sifra,naslov,UDK,ISBN)
--values(1,'HOMO DEUS','0.1.1','1444535');

--insert into katalog (sifra,naslov,UDK,ISBN)
--values (2,'Knjiga pet prstena','6.1.2','1222324');

--insert into katalog (sifra,naslov,UDK,ISBN)
--values(3,'Prièe iz davnine','8.6.7','122243433');