create table muskarac(
    id int(11) not null primary key auto_increment,
    maraka decimal(17,7) not null,
    hlace varchar(45) not null,
    prstena int (11) not null,
    nausnica int(11),
    neprijateljica int(11) not null
) engine=InnoDB;

create table neprijateljica(
    id int(11) not null primary key auto_increment,
    indiferentno tinyint(1) not null,
    modelnaocala varchar(39) not null,
    maraka decimal(12,10) not null,
    kratkamajica varchar(32) not null,
    ogrlica int (11)
);

create table sestra (
    id int not null primary key auto_increment,
    carape varchar(41),
    suknja varchar(40),
    narukvica int(11) not null
);

create table punac(
    id int(11) not null primary key auto_increment,
    modelnaocala varchar(39),
    treciputa datetime,
    drugiputa datetime,
    novcica decimal(14,6) not null,
    narukvica int(11)
);

create table zarucnica (
    id int not null primary key auto_increment,
    stilfrizura varchar(40),
    prstena int(11) not null,
    gustoca decimal(14,5),
    modelnaocala varchar(35) not null,
    nausnica int(11) not null
);

alter table muskarac add foreign key (neprijateljica) references neprijateljica(id);

-- DELIMITER - znak za završvanje naredebe koristi se za naglašavanje završavanja funkcije ili procedure
-- FLOOR() - stored funkcija koja vraca cijeli broj
-- RAND() - stored funkcija koja vraca random decimalni broj manji od 1 tipa 0.45678

DELIMITER xD
create function zadatak1() returns int
begin
return 
FLOOR(980 + RAND() * ( 5098 - 980 +1));
end;
xD
DELIMITER ;

for(i = 1; i < 56872; i++){

}

int x = 1; == declare x int;
    set x=1;

delimiter $$
create procedure zadatak2()
begin                                       -- naredba za pocetak prodecure
    declare x int;                           -- deklarirana varijabla
    set x=1;                       -- dodana vrijednost varijabli x
    start transaction;                           -- početak petlje 
        repeat
            insert into zarucnica (prstena,modelnaocala,nausnica)
            values(zadatak1(),'y',1); 
            set x = x + 1; 
        until x > 56872
        end repeat;
    commit;
end;
$$
delimiter ;
-- x = 1 izvrti se petlja prvi put, 
--na kraju nje vrijednost x varijable poveca se za 1. 
--Krene petlja drugi put x je sad 2 i na kraju se poveća za 1.
-- Tako sve dok se x ne poveća do 56871 tj. dok je manje od 56872.


delimiter $$
create trigger zadatak3 after insert on zarucnica for each
row
begin
    insert into punac (novcica) values (1),(1);
end;
$$
delimiter ;

delimiter $$
create procedure brojznakova()
begin
    declare done int default false;
    declare b, broj int;
    declare x int;
    declare cur cursor for select id from zarucnica;
    declare continue handler for not found set done = true;
    open cur;
        set broj=0;
        read_loop: loop
            fetch cur into b;
            if b%7000=0 then
                set broj=broj+b;
            end if;
            if done then
                leave read_loop;
            end if;
        end loop;
    close cur;
    set x=1;
    start transaction;
    repeat
            insert into neprijateljica (indiferentno,modelnaocala,maraka,kratkamajica)
            values(true,'x',12,'g'); 
            insert into muskarac (maraka,hlace,prstena,neprijateljica)
            values(1,'e',1,LAST_INSERT_ID()); 
            set x = x + 1;
        until x > broj
        end repeat;
    commit;
end;
$$
delimiter ;

call zadatak4;