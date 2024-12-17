create table log(
sifra int not null primary key auto_increment,
akcija varchar(50) not null,
vrijeme datetime not null,
podaci varchar(255)
);

select * from log;


delimiter $$
create trigger unos_autora after insert on autor for each row
begin
insert into log (akcija,vrijeme,podaci) values 
('Unos autora',now(),concat(new.ime, ' ', new.prezime));
end;
$$
delimiter ;

select * from log;


delimiter $$
create trigger promjena_autora after update on autor for each
row
begin
insert into log (akcija,vrijeme,podaci) values 
('Promjena autora',now(),concat(old.ime, ' ', old.prezime , 
' => ',new.ime, ' ', new.prezime));
end;
$$
delimiter ;

update autor set ime='Tomislava' where sifra=4;
select from autor se

delimiter $$
create trigger brisanje_autora after delete on autor for each
row
begin
insert into log (akcija,vrijeme,podaci) values 
('Brisanje autora',now(),concat(old.ime, ' ', old.prezime ));
end;
$$
delimiter ;