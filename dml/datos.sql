INSERT INTO ciudad(ciudad_id, nombre_ciudad, codigo_postal)
VALUES
(1, 'Cali', '362363'),
(2, 'Medellin', '362463'),
(3, 'Bogota', '31234363'),
(4, 'Barranquilla', '3612363'),
(5, 'Cartagena', '130001'),
(6, 'Pereira', '660001'),
(7, 'Manizales', '170001'),
(8, 'Santa Marta', '470001'),
(9, 'Cúcuta', '540001'),
(10, 'Bucaramanga', '680001');


INSERT INTO tipo_usuario(tipousuario_id, nombre_tipousuario, descripcion)
VALUES
(1, 'Empleado', 'Trabajador de la empresa'),
(2, 'Cliente', 'Comprador de la empresa'),
(3, 'Proveedor', 'Suministra productos o servicios'),
(4, 'Administrador', 'Usuario con privilegios de gestión'),
(5, 'Supervisor', 'Encargado de coordinar empleados'),
(6, 'Gerente', 'Responsable de un área o departamento'),
(7, 'Soporte', 'Usuario que atiende incidencias técnicas'),
(8, 'Visitante', 'Usuario externo con acceso limitado'),
(9, 'Contratista', 'Trabajador externo por contrato'),
(10, 'Aliado', 'Socio estratégico de la empresa');

INSERT INTO usuario(usuario_id, nombre_usuario, apellido_usuario, correo, telefono, condicion_especial, tipousuario_id, ciudad_id)
VALUES
(1, 'Jose', 'Vanegas', 'Jose@correo.com', '3124234', '', 2, 1),
(2, 'Uriel', 'Vanegas', 'Uriel@correo.com', '3123434', 'Silla de ruedas', 1, 1),
(3, 'Maria', 'Lopez', 'Maria@correo.com', '3101234', '', 2, 2),
(4, 'Carlos', 'Perez', 'Carlos@correo.com', '3115678', 'No vidente', 1, 3),
(5, 'Ana', 'Gomez', 'Ana@correo.com', '3159876', '', 2, 4),
(6, 'Luis', 'Martinez', 'Luis@correo.com', '3163456', 'Alergia al polvo', 1, 5),
(7, 'Sofia', 'Ramirez', 'Sofia@correo.com', '3176543', '', 2, 6),
(8, 'Jorge', 'Castro', 'Jorge@correo.com', '3187654', 'Problema auditivo', 1, 7),
(9, 'Camila', 'Torres', 'Camila@correo.com', '3198765', '', 2, 8),
(10, 'Andres', 'Moreno', 'Andres@correo.com', '3209876', 'Movilidad reducida', 1, 9);

INSERT INTO empleado(empleado_id, usuario_id)
VALUES 
(1, 2),
(2, 4),
(3, 6),
(4, 8),
(5, 10);

INSERT INTO cargo(cargo_id, nombre_cargo, descripcion_cargo)
VALUES
(1, 'Gerente General', 'Responsable de toda la empresa'),
(2, 'Administrador', 'Encargado de la gestión operativa'),
(3, 'Supervisor', 'Coordina las actividades de los empleados'),
(4, 'Analista', 'Realiza estudios y reportes de datos'),
(5, 'Asesor Comercial', 'Atiende clientes y ventas'),
(6, 'Auxiliar Contable', 'Apoya en procesos contables'),
(7, 'Ingeniero de Sistemas', 'Encargado de infraestructura tecnológica'),
(8, 'Secretaria', 'Gestión documental y apoyo administrativo'),
(9, 'Operario', 'Realiza labores operativas en planta'),
(10, 'Auxiliar de Recursos Humanos', 'Apoya en procesos de personal');

INSERT INTO cargo_empleado(cargo_id, usuario_id, empleado_id)
VALUES
(1, 2, 1),
(2, 4, 2),
(3, 6, 3),
(4, 8, 4),
(5, 10, 5),
(6, 2, 1),
(7, 4, 2),
(8, 6, 3),
(9, 8, 4),
(10, 10, 5);


INSERT INTO departamento(departamento_id, nombre_departamento)
VALUES
(1, 'Recursos Humanos'),
(2, 'Contabilidad'),
(3, 'Ventas'),
(4, 'Marketing'),
(5, 'Sistemas'),
(6, 'Producción'),
(7, 'Logística'),
(8, 'Atención al Cliente'),
(9, 'Legal'),
(10, 'Calidad');


INSERT INTO empleado_departamento(empleado_id, usuario_id, departamento_id)
VALUES
(1, 2, 1),
(2, 4, 2),
(3, 6, 3),
(4, 8, 4),
(5, 10, 5),
(1, 2, 6),
(2, 4, 7),
(3, 6, 8),
(4, 8, 9),
(5, 10, 10);


INSERT INTO servicio(servicio_id, nombre_servicio, descripcion_servicio, estado)
VALUES
(1, 'Consulta Médica', 'Atención general', 'Activo'),
(2, 'Asesoría Legal', 'Consultas jurídicas', 'Activo'),
(3, 'Soporte Técnico', 'Atención de fallas', 'Activo'),
(4, 'Capacitación', 'Cursos internos', 'Activo'),
(5, 'Atención al Cliente', 'Resolución de dudas', 'Activo'),
(6, 'Mantenimiento', 'Revisión de equipos', 'Activo'),
(7, 'Producción', 'Supervisión de procesos', 'Activo'),
(8, 'Logística', 'Gestión de envíos', 'Activo'),
(9, 'Marketing Digital', 'Campañas en línea', 'Activo'),
(10, 'Contabilidad', 'Gestión financiera', 'Activo');


INSERT INTO turno(turno_id, fecha_turno, hora_inicio, estado_turno, empleado_id, usuario_id, servicio_id)
VALUES
(1, '2026-05-24', '08:00', 'Activo', 1, 2, 1),
(2, '2026-05-24', '09:00', 'Activo', 2, 4, 2),
(3, '2026-05-24', '10:00', 'Activo', 3, 6, 3),
(4, '2026-05-24', '11:00', 'Activo', 4, 8, 4),
(5, '2026-05-24', '12:00', 'Activo', 5, 10, 5),
(6, '2026-05-25', '08:00', 'Activo', 1, 2, 6),
(7, '2026-05-25', '09:00', 'Activo', 2, 4, 7),
(8, '2026-05-25', '10:00', 'Activo', 3, 6, 8),
(9, '2026-05-25', '11:00', 'Activo', 4, 8, 9),
(10, '2026-05-25', '12:00', 'Activo', 5, 10, 10);


INSERT INTO medio(medio_id, nombre_medio)
VALUES
(1, 'Correo Electrónico'),
(2, 'Teléfono'),
(3, 'SMS'),
(4, 'WhatsApp'),
(5, 'Telegram'),
(6, 'Carta'),
(7, 'Portal Web'),
(8, 'App Móvil'),
(9, 'Videollamada'),
(10, 'Presencial');


INSERT INTO notificacion(notificacion_id, mensaje, fecha_envio, estado_envio, medio_id, usuario_id)
VALUES
(1, 'Turno confirmado', '2026-05-24', 'Enviado', 1, 2),
(2, 'Recordatorio de cita', '2026-05-24', 'Enviado', 2, 4),
(3, 'Actualización de servicio', '2026-05-24', 'Pendiente', 3, 6),
(4, 'Capacitación programada', '2026-05-24', 'Enviado', 4, 8),
(5, 'Factura disponible', '2026-05-24', 'Enviado', 5, 10),
(6, 'Mantenimiento agendado', '2026-05-25', 'Pendiente', 6, 2),
(7, 'Nueva campaña', '2026-05-25', 'Enviado', 7, 4),
(8, 'Soporte técnico asignado', '2026-05-25', 'Enviado', 8, 6),
(9, 'Reunión virtual', '2026-05-25', 'Pendiente', 9, 8),
(10, 'Visita presencial', '2026-05-25', 'Enviado', 10, 10);
