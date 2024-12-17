--select sifra from artikli;--52601

--select distinct artikl from artiklinaprimci
--order by 1; --52599

--select duginaziv from artikli where sifra
--not in
--(select distinct artikl from artiklinaprimci);

--delete artikli where sifra not in
--(select distinct artikl from artiklinaprimci);

select 
datediff(minute,'1980-12-07',getdate()) * 70;

select (datediff(day,'2021-01-23',getdate())-14) * 0.5;

select top 10
concat(upper(left(duginaziv,1)),
lower(SUBSTRING(duginaziv,2,LEN(duginaziv))))from * artikli



select duginaziv, cijena from artikli
where cijena<2;


update artikli set cijena=cijena+1
where cijena<1;

select duginaziv, cijena from artikli
where cijena=99;

update artikli set cijena=cijena*1.1
where cijena=90;

