create database empresa;
use empresa;
create table usuarios(
usuario varchar(20),
senha varchar(20),
nome varchar(70),
primary key(usuario,senha)
);
insert into usuarios values('admin','1234','Jefferson pedroca');
insert into usuarios values('laker','amoOvt','gabriel');
insert into usuarios values('yokai','1234','wallace D. araujo');
select * from usuarios;