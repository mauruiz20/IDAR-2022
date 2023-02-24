-- Testing Stored Procedures Gestion Pagos 2022

/* ============================== COMERCIOS ============================== */
SELECT * FROM Comercios;

CALL gestion_pagos2022.psp_buscar_comercios('', 'S', 0, 100);
CALL gestion_pagos2022.psp_buscar_comercios('', 'N', 0, 50);
CALL gestion_pagos2022.psp_buscar_comercios('AS', 'S', 0, 10);
CALL gestion_pagos2022.psp_buscar_comercios('AS', 'N', 0, 10);

CALL gestion_pagos2022.psp_crear_comercio('Computación', '3814567168', 'San Martin 130', 'San Miguel de Tucumán');		-- OK
CALL gestion_pagos2022.psp_crear_comercio('Computación', '3814567168', 'San Martin 130', 'San Miguel de Tucumán');		-- error por comercio repetido
CALL gestion_pagos2022.psp_crear_comercio(null, '3814567168', 'San Martin 130', 'San Miguel de Tucumán');				-- error campos obligatorios
CALL gestion_pagos2022.psp_crear_comercio('Computación', null, 'San Martin 130', 'San Miguel de Tucumán');				-- error campos obligatorios
CALL gestion_pagos2022.psp_crear_comercio('Computación', '3814567168', null, 'San Miguel de Tucumán');					-- error campos obligatorios
CALL gestion_pagos2022.psp_crear_comercio('Computación', '3814567168', 'San Martin 130', null);							-- error campos obligatorios

CALL gestion_pagos2022.psp_modificar_comercio(101, 'Electronica y Electrica', '3811234567', 'San Juan 530', 'San Miguel de Tucumán');		-- OK
CALL gestion_pagos2022.psp_modificar_comercio(999, 'Laboratorio Biomedicina', '3811597534', '9 de Julio 125', 'San Miguel de Tucumán');		-- OK
CALL gestion_pagos2022.psp_modificar_comercio(999, 'Electronica y Electrica', '3811234567', 'San Juan 530', 'San Miguel de Tucumán');		-- error por comercio repetido
CALL gestion_pagos2022.psp_modificar_comercio(null, 'Electronica y Electrica', '3811234567', 'San Juan 530', 'San Miguel de Tucumán');		-- error campos obligatorios
CALL gestion_pagos2022.psp_modificar_comercio(101, null, '3811234567', 'San Juan 530', 'San Miguel de Tucumán');							-- error campos obligatorios
CALL gestion_pagos2022.psp_modificar_comercio(101, 'Electronica y Electrica', null, 'San Juan 530', 'San Miguel de Tucumán');				-- error campos obligatorios
CALL gestion_pagos2022.psp_modificar_comercio(101, 'Electronica y Electrica', '3811234567', null, 'San Miguel de Tucumán');					-- error campos obligatorios
CALL gestion_pagos2022.psp_modificar_comercio(101, 'Electronica y Electrica', '3811234567', 'San Juan 530', null);							-- error campos obligatorios

CALL gestion_pagos2022.psp_dame_comercio(101);

SELECT * FROM Comercios JOIN PlanesComercio USING (IdComercio);
SELECT * FROM Comercios JOIN Usuarios USING (IdComercio);

CALL gestion_pagos2022.psp_borrar_comercio(999);		-- OK
CALL gestion_pagos2022.psp_borrar_comercio(null);		-- OK
CALL gestion_pagos2022.psp_borrar_comercio(101);		-- OK -- ALTER TABLE comercios AUTO_INCREMENT = 101;
CALL gestion_pagos2022.psp_borrar_comercio(1);			-- error usuarios asociados
CALL gestion_pagos2022.psp_borrar_comercio(50);			-- error planes de comercio asociados

CALL gestion_pagos2022.psp_daralta_comercio(101);		-- error ya está dado de alta
CALL gestion_pagos2022.psp_darbaja_comercio(101);		-- OK
CALL gestion_pagos2022.psp_darbaja_comercio(101);		-- error ya está dado de baja
CALL gestion_pagos2022.psp_daralta_comercio(101);		-- OK
CALL gestion_pagos2022.psp_daralta_comercio(999);		-- error comercio no existente
CALL gestion_pagos2022.psp_daralta_comercio(null);		-- error comercio no existente
CALL gestion_pagos2022.psp_darbaja_comercio(999);		-- error comercio no existente
CALL gestion_pagos2022.psp_darbaja_comercio(null);		-- error comercio no existente

CALL gestion_pagos2022.psp_darbaja_comercio(1);			-- error usuarios dados de alta existentes
CALL gestion_pagos2022.psp_darbaja_comercio(50);		-- error planes de comercio dados de alta existentes

SELECT * FROM aud_comercios;

/* ============================== USUARIOS ============================== */
SELECT * FROM Comercios JOIN Usuarios USING (IdComercio);
SELECT * FROM Usuarios JOIN Ventas USING (IdUsuario);

CALL gestion_pagos2022.psp_crear_usuario(1, 'Ruiz', 'Mauricio', '3811234567', 'ruizmauricio012@gmail.com', '12345678');				-- OK
CALL gestion_pagos2022.psp_crear_usuario(1, 'Ruiz', 'Mauricio', '3811234567', 'ruizmauricio012@gmail.com', '12345678');				-- error dni ya existente
CALL gestion_pagos2022.psp_crear_usuario(999, 'Ruiz', 'Mauricio', '3811234567', 'ruizmauricio012@gmail.com', '123');				-- error comercio no existente
CALL gestion_pagos2022.psp_crear_usuario(null, 'Ruiz', 'Mauricio', '3811234567', 'ruizmauricio012@gmail.com', '12345678');			-- error campos obligatorios
CALL gestion_pagos2022.psp_crear_usuario(1, null, 'Mauricio', '3811234567', 'ruizmauricio012@gmail.com', '12345678');				-- error campos obligatorios
CALL gestion_pagos2022.psp_crear_usuario(1, 'Ruiz', null, '3811234567', 'ruizmauricio012@gmail.com', '12345678');					-- error campos obligatorios
CALL gestion_pagos2022.psp_crear_usuario(1, 'Ruiz', 'Mauricio', null, 'ruizmauricio012@gmail.com', '12345678');						-- error campos obligatorios
CALL gestion_pagos2022.psp_crear_usuario(1, 'Ruiz', 'Mauricio', '3811234567', null, '12345678');									-- error campos obligatorios
CALL gestion_pagos2022.psp_crear_usuario(1, 'Ruiz', 'Mauricio', '3811234567', 'ruizmauricio012@gmail.com', null);					-- error campos obligatorios

CALL gestion_pagos2022.psp_modificar_usuario(101, 'Ruiz', 'Mauricio', '3811234568', 'ruizmauricio012@gmail.com', '12345678');		-- OK
CALL gestion_pagos2022.psp_modificar_usuario(999, 'Ruiz', 'Mauricio', '3811234568', 'ruizmauricio012@gmail.com', '123');			-- OK
CALL gestion_pagos2022.psp_modificar_usuario(999, 'Ruiz', 'Mauricio', '3811234568', 'ruizmauricio012@gmail.com', '12345678');		-- error dni ya existente
CALL gestion_pagos2022.psp_modificar_usuario(null, 'Ruiz', 'Mauricio', '3811234568', 'ruizmauricio012@gmail.com', '12345678');		-- error campos obligatorios
CALL gestion_pagos2022.psp_modificar_usuario(103, null, 'Mauricio', '3811234568', 'ruizmauricio012@gmail.com', '12345678');			-- error campos obligatorios
CALL gestion_pagos2022.psp_modificar_usuario(103, 'Ruiz', null, '3811234568', 'ruizmauricio012@gmail.com', '12345678');				-- error campos obligatorios
CALL gestion_pagos2022.psp_modificar_usuario(103, 'Ruiz', 'Mauricio', null, 'ruizmauricio012@gmail.com', '12345678');				-- error campos obligatorios
CALL gestion_pagos2022.psp_modificar_usuario(103, 'Ruiz', 'Mauricio', '3811234568', null, '12345678');								-- error campos obligatorios
CALL gestion_pagos2022.psp_modificar_usuario(103, 'Ruiz', 'Mauricio', '3811234568', 'ruizmauricio012@gmail.com', null);				-- error campos obligatorios

CALL gestion_pagos2022.psp_dame_usuario(101);

CALL gestion_pagos2022.psp_borrar_usuario(999);			-- OK
CALL gestion_pagos2022.psp_borrar_usuario(null);		-- OK
CALL gestion_pagos2022.psp_borrar_usuario(101);			-- OK -- ALTER TABLE Usuarios AUTO_INCREMENT = 1;
CALL gestion_pagos2022.psp_borrar_usuario(1);			-- error ventas asociadas

CALL gestion_pagos2022.psp_daralta_usuario(101);		-- error ya está dado de alta 
CALL gestion_pagos2022.psp_darbaja_usuario(101);		-- OK
CALL gestion_pagos2022.psp_darbaja_usuario(101);		-- error ya está dado de baja
CALL gestion_pagos2022.psp_daralta_usuario(101);		-- OK
CALL gestion_pagos2022.psp_daralta_usuario(999);		-- error usuario no existente
CALL gestion_pagos2022.psp_daralta_usuario(null);		-- error usuario no existente
CALL gestion_pagos2022.psp_darbaja_usuario(999);		-- error usuario no existente
CALL gestion_pagos2022.psp_darbaja_usuario(null);		-- error usuario no existente

SELECT IdUsuario, IdVenta, EstadoVenta FROM Usuarios JOIN Ventas USING (IdUsuario);
CALL gestion_pagos2022.psp_darbaja_usuario(1);			-- error ventas en estado En Edición
CALL gestion_pagos2022.psp_darbaja_usuario(5);			-- error ventas en estado Pendiente

/* ============================== MEDIOS DE PAGO ============================== */
SELECT * FROM MediosPago;

CALL gestion_pagos2022.psp_crear_medio_pago('Visa', 'Prepago', 'BNA');			-- OK
CALL gestion_pagos2022.psp_crear_medio_pago('Visa', 'Prepago', 'BNA');			-- error medio de pago repetido
CALL gestion_pagos2022.psp_crear_medio_pago('Uala', 'Prepago', null);			-- OK
CALL gestion_pagos2022.psp_crear_medio_pago(null, 'Prepago', null);				-- error campos obligatorios
CALL gestion_pagos2022.psp_crear_medio_pago('Uala', null, null);				-- error campos obligatorios

CALL gestion_pagos2022.psp_modificar_medio_pago(8, 'Visa', 'Prepago', 'BNA');		-- OK
CALL gestion_pagos2022.psp_modificar_medio_pago(120, 'Visa', 'Prepago', 'BNA');		-- error medio de pago repetido
CALL gestion_pagos2022.psp_modificar_medio_pago(null, 'Visa', 'Prepago', 'BNA');	-- error campos obligatorios
CALL gestion_pagos2022.psp_modificar_medio_pago(8, 'Visa', 'Prepago', null);		-- OK
CALL gestion_pagos2022.psp_modificar_medio_pago(null, 'Visa', 'Prepago', null);		-- error campos obligatorios
CALL gestion_pagos2022.psp_modificar_medio_pago(8, null, 'Prepago', null);			-- error campos obligatorios
CALL gestion_pagos2022.psp_modificar_medio_pago(8, 'Visa', null, null);				-- error campos obligatorios

CALL gestion_pagos2022.psp_dame_medio_pago(9);

CALL gestion_pagos2022.psp_borrar_medio_pago(120);		-- OK
CALL gestion_pagos2022.psp_borrar_medio_pago(null);		-- OK
CALL gestion_pagos2022.psp_borrar_medio_pago(9);		-- OK -- ALTER TABLE MediosPago AUTO_INCREMENT = 9;
CALL gestion_pagos2022.psp_borrar_medio_pago(1);		-- error planes asociados

/* ============================== PLANES ============================== */
SELECT * FROM Planes JOIN MediosPago USING(IdMedioPago);
SELECT * FROM Planes JOIN PlanesComercio USING(IdPlan);

CALL gestion_pagos2022.psp_crear_plan(1, '123456', 6, 50.00);			-- OK
CALL gestion_pagos2022.psp_crear_plan(1, '123456', 6, 50.00);			-- error código ya existente
CALL gestion_pagos2022.psp_crear_plan(120, '123456', 6, 50.00);			-- error medio de pago no existente
CALL gestion_pagos2022.psp_crear_plan(null, '123456', 6, 50.00);		-- error campos obligatorios
CALL gestion_pagos2022.psp_crear_plan(1, null, 6, 50.00);				-- error campos obligatorios
CALL gestion_pagos2022.psp_crear_plan(1, '123456', null, 50.00);		-- error campos obligatorios
CALL gestion_pagos2022.psp_crear_plan(1, '123456', 6, null);			-- error campos obligatorios
CALL gestion_pagos2022.psp_crear_plan(1, '123456', -1, 50.00);			-- error parametros erróneos
CALL gestion_pagos2022.psp_crear_plan(1, '123456', 6, -1);				-- error parametros erróneos
CALL gestion_pagos2022.psp_crear_plan(1, '123456', 6, 150);				-- error parametros erróneos

CALL gestion_pagos2022.psp_modificar_plan(101, '123456', 12, 71.72);		-- OK
CALL gestion_pagos2022.psp_modificar_plan(999, '2101021', 12, 71.72);		-- OK
CALL gestion_pagos2022.psp_modificar_plan(100, '123456', 12, 71.72);		-- error código ya existente
CALL gestion_pagos2022.psp_modificar_plan(null, '2101021', 12, 71.72);		-- error campos obligatorios
CALL gestion_pagos2022.psp_modificar_plan(101, null, 12, 71.72);			-- error campos obligatorios
CALL gestion_pagos2022.psp_modificar_plan(101, '2101021', null, 71.72);		-- error campos obligatorios
CALL gestion_pagos2022.psp_modificar_plan(101, '2101021', 12, null);		-- error campos obligatorios
CALL gestion_pagos2022.psp_modificar_plan(101, '2101021', -1, 50.00);		-- error parametros erróneos
CALL gestion_pagos2022.psp_modificar_plan(101, '2101021', 6, -1);			-- error parametros erróneos
CALL gestion_pagos2022.psp_modificar_plan(101, '2101021', 6, 150);			-- error parametros erróneos

CALL gestion_pagos2022.psp_dame_plan(101);

CALL gestion_pagos2022.psp_borrar_plan(101);		-- OK -- ALTER TABLE Planes AUTO_INCREMENT = 101;
CALL gestion_pagos2022.psp_borrar_plan(null);		-- OK
CALL gestion_pagos2022.psp_borrar_plan(999);		-- OK
CALL gestion_pagos2022.psp_borrar_plan(1);			-- error planes de comercio asociados

/* ============================== PLANES DE COMERCIO ============================== */
SELECT * FROM PlanesComercio;
SELECT * FROM PlanesComercio JOIN Ventas USING (IdPlanComercio);

CALL gestion_pagos2022.psp_crear_plan_comercio(1, 2, 2);			-- OK
CALL gestion_pagos2022.psp_crear_plan_comercio(999, 2, 2);			-- error comercio no existente
CALL gestion_pagos2022.psp_crear_plan_comercio(1, 66, 12);			-- error plan con el medio de pago no existente
CALL gestion_pagos2022.psp_crear_plan_comercio(null, 2, 2);			-- error campos obligatorios
CALL gestion_pagos2022.psp_crear_plan_comercio(1, null, 2);			-- error campos obligatorios
CALL gestion_pagos2022.psp_crear_plan_comercio(1, 2, null);			-- error campos obligatorios
CALL gestion_pagos2022.psp_crear_plan_comercio(1, 1, 4);			-- error plan de comercio ya existente para las asociaciones dadas

CALL gestion_pagos2022.psp_dame_plan_comercio(13);

CALL gestion_pagos2022.psp_borrar_plan_comercio(13);		-- OK -- ALTER TABLE PlanesComercio AUTO_INCREMENT = 13;
CALL gestion_pagos2022.psp_borrar_plan_comercio(null);		-- OK
CALL gestion_pagos2022.psp_borrar_plan_comercio(999);		-- OK
CALL gestion_pagos2022.psp_borrar_plan_comercio(1);			-- error ventas asociadas

CALL gestion_pagos2022.psp_daralta_plan_comercio(13);		-- error ya está dado de alta 
CALL gestion_pagos2022.psp_darbaja_plan_comercio(13);		-- OK
CALL gestion_pagos2022.psp_darbaja_plan_comercio(13);		-- error ya está dado de baja
CALL gestion_pagos2022.psp_daralta_plan_comercio(13);		-- OK
CALL gestion_pagos2022.psp_daralta_plan_comercio(999);		-- error plan de comercio no existente
CALL gestion_pagos2022.psp_daralta_plan_comercio(null);		-- error plan de comercio no existente
CALL gestion_pagos2022.psp_darbaja_plan_comercio(999);		-- error plan de comercio no existente
CALL gestion_pagos2022.psp_darbaja_plan_comercio(null);		-- error plan de comercio no existente

SELECT IdUsuario, IdVenta, EstadoVenta FROM PlanesComercio JOIN Ventas USING (IdPlanComercio);
CALL gestion_pagos2022.psp_darbaja_plan_comercio(2);			-- error ventas en estado En Edición
CALL gestion_pagos2022.psp_darbaja_plan_comercio(5);			-- error ventas en estado Pendiente

/* ============================== VENTAS ============================== */
SELECT * FROM Ventas JOIN Usuarios USING (IdUsuario);

CALL gestion_pagos2022.psp_crear_venta(1, 1, NOW(), 100, 'JSON', 'cliente', 'cliente', 'direccion', '123456', '12 456789 123456', null);		-- OK
CALL gestion_pagos2022.psp_crear_venta(1, 1, NOW(), 100, 'JSON', 'cliente', 'cliente', 'direccion', '123456', '12 456789 123456', null);		-- OK
CALL gestion_pagos2022.psp_crear_venta(2, 2, NOW(), 100, 'JSON', 'cliente', 'cliente', 'direccion', '123456', '12 456789 123456', null);		-- error usuario dado de baja
CALL gestion_pagos2022.psp_crear_venta(1, 77, NOW(), 100, 'JSON', 'cliente', 'cliente', 'direccion', '123456', '12 456789 123456', null);		-- error el usuario con ese comercio no existe
CALL gestion_pagos2022.psp_crear_venta(null, 1, NOW(), 100, 'JSON', 'cliente', 'cliente', 'direccion', '123456', '12 456789 123456', null);		-- error campos obligatorios
CALL gestion_pagos2022.psp_crear_venta(1, null, NOW(), 100, 'JSON', 'cliente', 'cliente', 'direccion', '123456', '12 456789 123456', null);		-- error campos obligatorios
CALL gestion_pagos2022.psp_crear_venta(1, 1, null, 100, 'JSON', 'cliente', 'cliente', 'direccion', '123456', '12 456789 123456', null);			-- error campos obligatorios
CALL gestion_pagos2022.psp_crear_venta(1, 1, NOW(), null, 'JSON', 'cliente', 'cliente', 'direccion', '123456', '12 456789 123456', null);		-- error campos obligatorios
CALL gestion_pagos2022.psp_crear_venta(1, 1, NOW(), 100, null, 'cliente', 'cliente', 'direccion', '123456', '12 456789 123456', null);			-- error campos obligatorios
CALL gestion_pagos2022.psp_crear_venta(1, 1, NOW(), 100, 'JSON', null, 'cliente', 'direccion', '123456', '12 456789 123456', null);				-- error campos obligatorios
CALL gestion_pagos2022.psp_crear_venta(1, 1, NOW(), 100, 'JSON', 'cliente', null, 'direccion', '123456', '12 456789 123456', null);				-- error campos obligatorios
CALL gestion_pagos2022.psp_crear_venta(1, 1, NOW(), 100, 'JSON', 'cliente', 'cliente', null, '123456', '12 456789 123456', null);				-- error campos obligatorios
CALL gestion_pagos2022.psp_crear_venta(1, 1, NOW(), 100, 'JSON', 'cliente', 'cliente', 'direccion', null, '12 456789 123456', null);			-- error campos obligatorios
CALL gestion_pagos2022.psp_crear_venta(1, 1, NOW(), 100, 'JSON', 'cliente', 'cliente', 'direccion', '123456', null, null);						-- error campos obligatorios
CALL gestion_pagos2022.psp_crear_venta(1, 1, NOW(), -5, 'JSON', 'cliente', 'cliente', 'direccion', '123456', '12 456789 123456', null);			-- error monto negativo

CALL gestion_pagos2022.psp_dame_venta(12);

CALL gestion_pagos2022.psp_borrar_venta(12); 		-- OK 
ALTER TABLE Ventas AUTO_INCREMENT = 12;
CALL gestion_pagos2022.psp_borrar_venta(null); 		-- error venta no existente
CALL gestion_pagos2022.psp_borrar_venta(999);		-- error venta no existente
CALL gestion_pagos2022.psp_borrar_venta(1);			-- error venta no está en edición

SELECT * FROM Usuarios JOIN Comercios USING (IdComercio);
CALL gestion_pagos2022.psp_asignar_plan_comercio(12,1); 		-- OK
CALL gestion_pagos2022.psp_asignar_plan_comercio(12,1); 		-- error la venta no está en edición
CALL gestion_pagos2022.psp_asignar_plan_comercio(13,3);			-- error el plan de comercio no existe o no está asociado al comercio del usuario de la venta
CALL gestion_pagos2022.psp_asignar_plan_comercio(13,999);		-- error el plan de comercio no existe o no está asociado al comercio del usuario de la venta
CALL gestion_pagos2022.psp_asignar_plan_comercio(13,null);		-- error el plan de comercio no existe o no está asociado al comercio del usuario de la venta
CALL gestion_pagos2022.psp_asignar_plan_comercio(null,3);		-- error la venta no existe

CALL gestion_pagos2022.psp_darbaja_venta(12);			-- OK
CALL gestion_pagos2022.psp_darbaja_venta(12);			-- error no se encuentra en estado pendiente
UPDATE Ventas SET EstadoVenta = 'P' WHERE IdVenta = 12;
CALL gestion_pagos2022.psp_darbaja_venta(999);			-- error venta no existente
CALL gestion_pagos2022.psp_darbaja_venta(null);			-- error venta no existente

CALL gestion_pagos2022.psp_finalizar_venta(12);			-- OK
CALL gestion_pagos2022.psp_finalizar_venta(12);			-- error no se encuentra en estado pendiente
UPDATE Ventas SET EstadoVenta = 'P' WHERE IdVenta = 12;
CALL gestion_pagos2022.psp_finalizar_venta(999);		-- error venta no existente
CALL gestion_pagos2022.psp_finalizar_venta(null);			-- error venta no existente