CREATE TABLE ciudad(
	ciudad_id INTEGER PRIMARY KEY,
	nombre_ciudad VARCHAR(50) NOT NULL,
	codigo_postal VARCHAR(50) NOT NULL
);

CREATE TABLE tipo_usuario(
	tipousuario_id INTEGER PRIMARY KEY,
	nombre_tipousuario VARCHAR(50) NOT NULL,
	descripcion VARCHAR(50) NOT NULL
);

CREATE TABLE usuario(
	usuario_id INTEGER PRIMARY KEY,
	nombre_usuario VARCHAR(50) NOT NULL,
	apellido_usuario VARCHAR(50) NOT NULL,
	correo VARCHAR(50) NOT NULL,
	telefono VARCHAR(16) NOT NULL,
	condicion_especial VARCHAR(50) NOT NULL,
	tipousuario_id INTEGER NOT NULL,
	ciudad_id INTEGER NOT NULL,
	FOREIGN KEY(tipousuario_id) REFERENCES tipo_usuario(tipousuario_id),
	FOREIGN KEY(ciudad_id) REFERENCES ciudad(ciudad_id)
);

CREATE TABLE empleado(
	empleado_id INTEGER,
	usuario_id INTEGER NOT NULL,
	PRIMARY KEY(empleado_id, usuario_id),
	FOREIGN KEY(usuario_id) REFERENCES usuario(usuario_id)
);

CREATE TABLE cargo(
	cargo_id INTEGER PRIMARY KEY,
	nombre_cargo VARCHAR(50)NOT NULL,
	descripcion_cargo VARCHAR(50) NOT NULL
);

CREATE TABLE cargo_empleado(
	cargo_id INTEGER,
	usuario_id INTEGER,
	empleado_id INTEGER,
	PRIMARY KEY(cargo_id, empleado_id),
	FOREIGN KEY(cargo_id) REFERENCES cargo(cargo_id),
	FOREIGN KEY(empleado_id, usuario_id) REFERENCES empleado(empleado_id, usuario_id)
);

CREATE TABLE departamento(
	departamento_id INTEGER PRIMARY KEY,
	nombre_departamento VARCHAR(50) NOT NULL
);

CREATE TABLE empleado_departamento(
	empleado_id INTEGER,
	usuario_id INTEGER,
	departamento_id INTEGER,
	PRIMARY KEY(empleado_id, departamento_id),
	FOREIGN KEY(empleado_id, usuario_id) REFERENCES empleado(empleado_id, usuario_id),
	FOREIGN KEY(departamento_id) REFERENCES departamento(departamento_id)
);

CREATE TABLE servicio(
	servicio_id INTEGER PRIMARY KEY,
	nombre_servicio VARCHAR(50) NOT NULL,
	descripcion_servicio VARCHAR(50) NOT NULL,
	estado VARCHAR(20) NOT NULL
);

CREATE TABLE turno(
	turno_id INTEGER PRIMARY KEY,
	fecha_turno DATE NOT NULL,
	hora_inicio TIME NOT NULL,
	estado_turno VARCHAR(20) NOT NULL,
	empleado_id INTEGER NOT NULL,
	usuario_id INTEGER NOT NULL,
	servicio_id INTEGER NOT NULL,
	FOREIGN KEY(empleado_id, usuario_id) REFERENCES empleado(empleado_id, usuario_id),
	FOREIGN KEY(usuario_id) REFERENCES usuario(usuario_id),
	FOREIGN KEY(servicio_id) REFERENCES servicio(servicio_id)
);

CREATE TABLE medio(
	medio_id INTEGER PRIMARY KEY,
	nombre_medio VARCHAR(50) NOT NULL
);

CREATE TABLE notificacion(
	notificacion_id INTEGER PRIMARY KEY,
	mensaje VARCHAR(100) NOT NULL,
	fecha_envio DATE NOT NULL,
	estado_envio VARCHAR(20) NOT NULL,
	medio_id INTEGER NOT NULL,
	usuario_id INTEGER NOT NULL,
	FOREIGN KEY(medio_id) REFERENCES medio(medio_id),
	FOREIGN KEY(usuario_id) REFERENCES usuario(usuario_id)
);
