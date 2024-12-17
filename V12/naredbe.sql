select * from information_schema.table_constraints
where table_schema = 'amjeda_20_1' and
constraint_type='FOREIGN KEY';

select TABLE_NAME, COLUMN_NAME, CONSTRAINT_NAME,
REFERENCED_TABLE_NAME, REFERENCED_COLUMN_NAME
from
information_schema.key_column_usage
where
REFERENCED_TABLE_SCHEMA='amjeda_20_1' and
REFERENCED_TABLE_NAME = 'autor';

# Promijenim oznaku kraja naredbe na $$
DELIMITER $$
# pišem definiciju funkcije
CREATE FUNCTION vrijeme() RETURNS varchar(50)
begin
    return date_format(now(), '%d. %m. %Y');
end;
# kraj naredbe
$$
# vraćam oznaku kraja naredbe na ;
DELIMITER ;


DELIMITER $$
CREATE FUNCTION email(ime varchar(50)) RETURNS varchar(100)
begin
    return lower(concat(ime, '@ffos.hr'));
end;
$$
DELIMITER ;


DELIMITER $$
CREATE FUNCTION generiraniemail(ime varchar(50), prezime varchar(50)) RETURNS
varchar(255)
begin
return
replace(
replace(
replace(
replace(
replace(
replace(
lower(
concat(
left(ime,1),
prezime,'@ffos.hr')
),'š','s'),'đ','d'),'č','c'),'ć','c'),'ž','z'),' ','');
end;
$$
DELIMITER ;

DELIMITER $$
CREATE FUNCTION generiraniemail(ime varchar(50), prezime varchar(50)) RETURNS
varchar(255)
begin
return
replace(
replace(
replace(
replace(
replace(
replace(
lower(
concat(
left(ime,1),
prezime,'@ffos.hr')
),'š','s'),'đ','d'),'č','c'),'ć','c'),'ž','z'),' ','');
end;
$$
DELIMITER ;


create table log(
    sifra int not null primary key auto_increment,
    akcija varchar(50) not null,
    vrijeme datetime not null,
    podaci varchar(255)
);


DELIMITER $$
create trigger unos_autor after insert on autor for each row
begin
    insert into log(akcija, vrijeme, podaci)
    value ('Unos autora', now(), concat(new.ime, ' ', new.prezime));
end;
$$
DELIMITER ;





DELIMITER $$
create trigger promjena_autor after update on autor for each row
begin
    insert into log(akcija, vrijeme, podaci)
    value ('Promjena autora', now(), concat(old.ime, ' ', old.prezime, ' => ',
                                            new.ime, ' ', new.prezime));
end;
$$
DELIMITER ;




DELIMITER $$
create trigger brisanje_autor after delete on autor for each row
begin
    insert into log(akcija, vrijeme, podaci)
    value ('Brisanje autora', now(), concat(old.ime, ' ', old.prezime));
end;
$$
DELIMITER ;





delimiter $$

create procedure knjigeAutora(in prezime varchar(50))
begin
select b.naslov
from autor a inner join katalog b
on a.sifra=b.autor
where a.prezime=prezime;
end;
$$


delimiter ;




select a.prezime
from katalog k
inner join autor a on k.autor=a.sifra
where prezime like 'Šenoa';






delimiter $$
create procedure brojznakova()
begin
    declare done int default false;
    declare b, broj int;
    declare cur cursor for select length(ime) from autor;
    declare continue handler for not found set done = true;
    open cur;
        set @broj=0;
        read_loop: loop
            fetch cur into b;
            set @broj=@broj+b;
            if done then
                leave read_loop;
            end if;
            select @broj ;
        end loop;
    close cur;
end;
$$
delimiter ;







delimiter $$

create procedure zapis(
    in param_ime varchar(50),
    in param_prezime varchar(50),
    in param_mjesto varchar(50),
    in param_izdavac varchar(50),
    in param_naslov varchar(50)
    )
begin
    declare autor_i, mjesto_i, izdavac_I int;
    
    insert into autor(ime,prezime)
    values (param_ime,param_prezime);
    set autor_i=LAST_INSERT_ID(); 
    
    insert into mjesto(naziv) 
    values (param_mjesto);
    set mjesto_i=LAST_INSERT_ID();

    insert into izdavac(naziv) 
    values (param_izdavac);
    set izdavac_I=LAST_INSERT_ID();

    insert into katalog(autor,naslov,mjesto,izdavac) 
    values (autor_i,param_naslov,mjesto_i,izdavac_i);
    

end;
$$


delimiter ;



call zapis('Test','Testo','Tisno','Tvrtka','Tako je');



delimiter $$
create function naziv_funkcije() returns int
begin
return floor(rand()*(veći_br-manji_br)+manji_br) ;
end;
$$
delimiter ;




delimiter $$
create procedure naziv_procedure
begin
DECLARE count INT DEFAULT 0;
WHILE count < broj_zapisa DO
    INSERT INTO naziv_tablice() 
    VALUES();

    SET count = count + 1;
END WHILE;
end;
$$
delimiter ;


delimiter $$
create procedure naziv_procedure
begin
DECLARE count INT DEFAULT 0;
WHILE count < 549 DO
    INSERT INTO naziv_tablice(introventno,ausnica) 
    VALUES(1,naziv_funkcije());

    SET count = count + 1;
END WHILE;
end;
$$
delimiter ;


select count(*) from snasa;
call zadatak2;


delimiter $$
create trigger naziv_triggera
after insert on naziv_tablice for each row
begin
insert into naziv_tablice () values ('boja',1);
insert into naziv_tablice () values ();
end ;
$$
delimiter ;

delete from snasa;
select count(*) from snasa;


call zadatak2;
select count(*) from snasa;
select count(*) from mladic;



delimiter $$
create procedure zadatak4()
begin
declare done int default false;
declare b, broj int;
declare x int;
declare cur cursor for select id from snasa; 
declare continue handler for not found set done = true;
open cur;
set broj=0;
read_loop: loop
fetch cur into b;
if b%9000=0 then 
set broj=broj+b;
end if;
if done then
leave read_loop;
end if;
end loop;
close cur;
set x=0;
insert into zena(carape,ekstroventno) 
values ('prugaste',1);
start transaction;
repeat
insert into ostavljena
(haljina,asocijalno,narukvica)
values ('duga',1,zadatak1());
SET x = x + 1;
UNTIL x > broj end repeat;
commit;
end;
$$
delimiter ;


call zadatak4;

select count(*) from ostavljena;



create table (
id int not null primary key auto_increment,

);


select * from information_schema.table_constraints
where table_schema = 'apuhek_19_1' and constraint_type =
'FOREIGN KEY';


CREATE PROCEDURE zadatak2()
begin
DECLARE count INT DEFAULT 0;
WHILE count < 549 DO
INSERT INTO snasa(introvertno,nausnica)
VALUES(1,zadatak1());

SET count = count + 1;
END WHILE;
end;
$$
delimiter ;










