Comando SQL y el resultado obtenido para generar los siguientes reportes solicitados por el
negocio.
-- 1. Medallero general. Mostrar ordenado por la cantidad de medallas las posiciones de cada uno de los países participantes. Ejemplo: https://es.wikipedia.org/wiki/Anexo:Medallero_de_los_Juegos_Ol%C3%ADmpicos_de_Tokio_2020


-- 2. Medallero por día: Muestra por cada día en competencias los resultados en cada uno de los deportes y sus disciplinas. Ejemplo: https://es.wikipedia.org/wiki/Calendario_de_los_Juegos_Ol%C3%ADmpicos_de_Tokio_2020



-- 3. Medallero por disciplina o deportes. Muestra el país y deportista ganador de cada disciplina.
select d1.nombre, p1.nombre, a1.nombre from disciplina d1
join competicion c1 on c1.iddisciplina=d1.iddisciplina
join eventos e1 on e1.idcompeticion=c1.idcompeticion 
join resultado r1 on r1.idevento=c1.idevento
join atleta a1 on a1.idatleta=a1.idatleta
join pais p1 on a1.idpais=p1.idpais ;



-- 4. Medallero por país. Muestra los deportistas participantes del país y sus medallas obtenidas
select p1.nombre, a1.nombre from disciplina d1
join competicion c1 on c1.iddisciplina=d1.iddisciplina
join eventos e1 on e1.idcompeticion=c1.idcompeticion 
join resultado r1 on r1.idevento=c1.idevento
join atleta a1 on a1.idatleta=a1.idatleta
join pais p1 on a1.idpais=p1.idpais ;

-- 5. Medallero por continente. Muestra los países y sus medallas obtenidas por continente
select p1.continente, p1.nombre from disciplina d1
join competicion c1 on c1.iddisciplina=d1.iddisciplina
join eventos e1 on e1.idcompeticion=c1.idcompeticion 
join resultado r1 on r1.idevento=c1.idevento
join atleta a1 on a1.idatleta=a1.idatleta
join pais p1 on a1.idpais=p1.idpais ;

-- 6. Calendario de eventos. Muestra por fecha las competencias y sedes en las que hay actividades
select e1.nombre, 
join competicion c1 on c1.iddisciplina=d1.iddisciplina
join eventos e1 on e1.idcompeticion=c1.idcompeticion ;

-- 7. Listado de una delegación. Muestran los datos de todos los deportistas y la disciplina en que compite de un país en específico.


-- 8. Competidores por país. Muestra la cantidad de hombre y mujeres del país participantes en cada uno de los deportes. Ejemplo: https://es.wikipedia.org/wiki/Guatemala_en_los_Juegos_Ol%C3%ADmpicos_de_Tokio_2020
-- 9. Mejor deportista. Muestra los deportistas y la cantidad total de medallas obtenidas.
-- 10. Jóvenes medalleros. Muestra los deportistas más jóvenes de todo el torneo, indicando su país de origen, la medalla obtenida y la disciplina en que participó



