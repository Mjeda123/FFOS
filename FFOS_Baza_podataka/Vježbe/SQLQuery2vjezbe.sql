create database amjeda_3;

use amjeda_3;

create table Ucionica(
sifra int not null primary key,
brojSobe int not null,
kat nvarchar(50) not null,
cijenaPoSatu money
);

create table Nastavnik(
sifra int not null primary key,
ime nvarchar(50) not null,
prezime nvarchar(50) not null,
datumRodenja datetime
);

create table Predmet(
sifra int not null primary key,
naziv nvarchar(50) not null,
aktivan bit not null,
brojStudenata int,
nastavnik int not null references Nastavnik(sifra),
ucionica int not null references Ucionica(sifra)
);

drop table Predmet;

select * from Nastavnik;

insert into Nastavnik (sifra, ime, prezime, datumRodenja)
values 
(1,'Andrej','Mjeda','1997-06-12'),
(2,'Petar','Šimun','1991-02-11'),
(3,'Lara','Livakoviæ','1995-04-24'),
(4,'Ana','Horvat','1993-11-11'),
(5,'Dorijan','Novakoviæ','2000-01-18')

select * from Ucionica;

insert into Ucionica (sifra, brojSobe, kat, cijenaPoSatu)
values 
(1,'34','2','50'),
(2,'12','1','50'),
(3,'59','3','50'),
(4,'75','5','50'),
(5,'100','7','50')

select * from Predmet;

insert into Predmet (sifra, naziv, aktivan, brojStudenata, nastavnik, ucionica)
values 
(1,'Oblikovanje mrežnih stranica','1','23','1','1'),
(2,'Baza podataka','0','0','1','1'),
(3,'Statistika','1','35','2','2'),
(4,'Organizacija informacija III','0','0','2','2'),
(5,'Pismenost u digitalnom dobu','1','22','3','3'),
(6,'Kritièka informacijska pismenost','0','0','3','3'),
(7,'Industrije kreativnih sadržaja','1','11','4','4'),
(8,'Društvene mreže za informacijske struènjake','0','0','4','4'),
(9,'Upravljanje informacijskim ustanovama','1','33','5','5'),
(10,'Pismenost u digitalnom dobu','0','0','5','5')

update Predmet set aktivan='1', 
naziv='Baza podataka' where sifra=2;

update Predmet set aktivan='1', 
naziv='Organizacija informacija III' where sifra=4;

update Predmet set aktivan='1', 
naziv='Kritièka informacijska pismenost' where sifra=6;

delete from Predmet where sifra=10;

delete from Predmet where sifra=8;

delete from Predmet where sifra=6;
