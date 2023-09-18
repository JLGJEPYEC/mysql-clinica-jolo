CREATE DEFINER=`root`@`localhost` PROCEDURE `aumentarprecio_espec`(serid int)
BEGIN   
update servicio set precio=precio+(precio*0.5)  where id=serid;
END

CREATE DEFINER=`root`@`localhost` PROCEDURE `ver_citas`(ais varchar(30))
BEGIN
select *from citas
where asistio like ais;
END

CREATE DEFINER=`root`@`localhost` PROCEDURE `vercamas_vacias`(estadoc varchar(45) )
BEGIN
select c.id IDCAMA ,c.letra IDLETRA,c.estado,h.pisos_id PISO
FROM camas c
join habitacion h on c.habitacion_id=h.id
where c.estado like estadoc;
END

CREATE DEFINER=`root`@`localhost` PROCEDURE `aumentarprecio_espec`(serid int)
BEGIN   
update servicio set precio=precio+(precio*0.5)  where id=serid;
END

CREATE DEFINER=`root`@`localhost` PROCEDURE `ver_citas`(ais varchar(30))
BEGIN
select *from citas
where asistio like ais;
END

CREATE DEFINER=`root`@`localhost` PROCEDURE `vercamas_vacias`(estadoc varchar(45) )
BEGIN
select c.id IDCAMA ,c.letra IDLETRA,c.estado,h.pisos_id PISO
FROM camas c
join habitacion h on c.habitacion_id=h.id
where c.estado like estadoc;
END
