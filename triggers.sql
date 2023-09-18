CREATE DEFINER=`root`@`localhost` trigger det_insertar_pac
after insert on pacientes
for each row
begin
	insert into informacion (usuario,fecha,detalle)  values ((select current_user()),now(),"se insertó un nuevo usuario" );
end ;

CREATE DEFINER=`root`@`localhost`  trigger det_actualizar_pac
after update on pacientes
for each row
begin
	insert into informacion (usuario,fecha,detalle)  values ((select current_user()),now(),"datos actualizados en un usuario" );
end ;

CREATE DEFINER=`root`@`localhost` trigger descontar_unidad_inventario 
after insert on recetas_medicamentos 
for each row
begin
    set @unit_receta = new.cantidad;
    set @unit_disp = (select stock from medicamentos 
    where id = new.medicamentos_id);
    set @unit_disp = @unit_disp-@unit_receta;
    update medicamentos set STOCK = @unit_disp where id = new.medicamentos_id ;
end ;

CREATE DEFINER=`root`@`localhost` trigger detalle_rec_med 
after insert on recetas_medicamentos
for each row
begin
	insert into informacion (usuario,fecha,detalle)  values (current_user(),now(),concat("descuento al inventario medicamentos de " ,new.cantidad) );
end ;