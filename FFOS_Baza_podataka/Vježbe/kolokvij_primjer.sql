----create database kolokvij_vjezba_8;

----use kolokvij_vjezba_8;

----create table prijateljica (
----	sifra int not null primary key,
----	vesta varchar(50),
----	nausnica int not null,
----	intovertno bit not null
----);

----create table cura (
----	sifra int not null primary key,
----	nausnica int not null,
----	indiferentno bit,
----	ogrlica int not null,
----	gustoca decimal(12,6),
----	drugputa datetime,
----	vesta varchar(33),
----	prijateljica int references prijateljica(sifra)
----);

----create table decko (
----	sifra int not null primary key,
----	kuna decimal(12,10),
----	lipa decimal(17,10),
----	bojakose varchar(44),
----	treciputa datetime not null,
----	ogrlica int not null,
----	ekstroventno bit not null

----);

----create table  muskarac(
----	sifra int not null primary key,
----	haljina varchar(47),
----	drugiputa datetime not null,
----	treciputa datetime
----);

----create table muskarac_decko (
----	sifra int not null primary key,
----	muskarac int not null references muskarac(sifra),
----	decko int not null references decko(sifra)
----);

----create table becar (
----	sifra int not null primary key,
----	eura decimal(15,10) not null,
----	treciputa datetime,
----	prviputa datetime,
----	muskarac int not null references muskarac(sifra)
----);


----create table neprijatelj (
----	sifra int not null primary key,
----	kratkamajica varchar(44),
----	introvertno bit,
----	indiferentno bit,
----	ogrlica int not null,
----	becar int not null references becar(sifra)
	
----);

----create table brat (
----	sifra int not null primary key,
----	introvertno bit,
----	novcica decimal(14,7) not null,
----	treciputa datetime,
----	neprijatelj int references neprijatelj(sifra)
----);

----INSERT INTO decko(sifra,kuna,lipa,bojakose,treciputa,ogrlica,ekstroventno)
----VALUES(22, 12.1, 11.2, 'plava', '1982-02-02', 12, 1);

----INSERT INTO decko
----VALUES(23, 12.1, 11.2, 'smeđa', '1982-02-02', 13, 0);

----INSERT INTO decko(sifra,kuna,lipa,treciputa,bojakose,ogrlica,ekstroventno)
----VALUES(24, 12.1, 11.2, '1982-02-02', 'smeđa', 13, 0);

----INSERT INTO muskarac
----VALUES (11, 'lijepa', '1992-08-08', null);

----INSERT INTO muskarac
----VALUES (12, 'prekrasna', '1993-08-08', null);

----INSERT INTO muskarac
----VALUES (13, null, '2002-12-23', null);

----INSERT INTO muskarac_decko
----VALUES(1, 11, 22);

----INSERT INTO muskarac_decko
----VALUES(2, 12, 23);

----INSERT INTO muskarac_decko
----VALUES(3, 13, 24);

----INSERT INTO becar
----VALUES(31, 11.2, null, null, 11);

----INSERT INTO becar
----VALUES(32, 12.2, null, null, 12);

----INSERT INTO becar
----VALUES(33, 13.2, null, null, 12);

----INSERT INTO neprijatelj
----VALUES(41, null, null, null, 12, 31);

----INSERT INTO neprijatelj
----VALUES(42, null, null, null, 13, 32);

----INSERT INTO neprijatelj
----VALUES(43, null, null, null, 14, 33);

----INSERT INTO prijateljica
----VALUES(61, null, 11, 0);

----INSERT INTO prijateljica
----VALUES(62, null, 12, 1);

----INSERT INTO prijateljica
----VALUES(63, null, 11, 0);

----INSERT INTO cura
----VALUES(71, 11, null, 12, null, null, null, 61);

----INSERT INTO cura
----VALUES(72, 11, null, 12, null, null, null, 62);

----INSERT INTO cura
----VALUES(73, 11, null, 12, null, null, null, 63);

----INSERT INTO brat
----VALUES(91, null, 12.1, null, null);

--INSERT INTO neprijatelj
--VALUES(94, null, null, null, 14, 33);

--INSERT INTO brat
--VALUES(92, null, 12.2, null, 42); 

------update cura set indiferentno=0;

------select * from cura;

----select * from brat;

----delete brat where novcica!=12.75;----select prviputa----from becar----where treciputa is null;--select d.bojakose, br.neprijatelj, n.introvertno--from decko d--inner join muskarac_decko md on d.sifra = md.decko--inner join muskarac m on m.sifra = md.muskarac--inner join becar b on m.sifra = b.muskarac--inner join neprijatelj n on b.sifra = n.becar--inner join brat br on n.sifra = br.neprijatelj--where b.treciputa is not null--and m.drugiputa is not null--order by n.introvertno DESC;--INSERT INTO muskarac
--VALUES (14, 'lijepa', '1992-08-08', null);--select drugiputa, treciputa--from muskarac m--left join muskarac_decko md on m.sifra = md.muskarac--where md.sifra is null;--select *--from neprijatelj n --left join brat br on n.sifra = br.neprijatelj


