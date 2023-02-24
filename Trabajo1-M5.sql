create database JsDiurno;
use JsDiurno;

CREATE TABLE capacitacion (
	identificador int NOT NULL PRIMARY KEY,
    rut varchar(15) NOT NULL,
    dia varchar(15),
    hora varchar(5),
    lugar varchar(50) NOT NULL ,
    duracion int NOT NULL ,
    asistentes int
);

insert into capacitacion (identificador,rut,dia,hora,lugar,duracion,asistentes)
VALUES 
(1,"20133371-7","lunes","20:30", "unab viña",80,60),
(2,"10133371-7","martes","19:30", "unab viña",30,80),
(3,"12133371-7","martes","20:30", "cafe princesa",30,20),
(4,"43133371-7","miercoles","07:30", "unab viña",10,40),
(5,"12133371-7","jueves","14:30", "unab viña",60,40),
(6,"13133371-7","viernes","14:30", "cevasco",20,60),
(7,"15133371-7","jueves","15:30", "cevasco",60,20),
(8,"16133371-7","jueves","15:30", "cevasco",60,20),
(9,"19133371-7","martes","20:30", "unab concepcion",60,20),
(10,"1-9","viernes","20:30", "La Florida",60,20),
(11,"2-7","viernes","20:30", "La Florida",60,20),
(12,91333717,"viernes","20:30", "La Florida",100,80);

/*consultas*/
select identificador,hora,dia,rut from capacitacion;
select * from capacitacion where duracion >= 60 && asistentes > 30;
select asistentes,duracion,lugar,hora,dia,rut,identificador from capacitacion where (rut = "1-9" || rut = "2-7")&& lugar = "La Florida";
select rut,duracion,asistentes from capacitacion where duracion > 30 && duracion < 90 || asistentes < 10;
select * from capacitacion where (dia = "lunes" || dia = "miercoles" || dia = "viernes") && asistentes > 50 && duracion < 30;


select * from capacitacion;
drop table capacitacion;

