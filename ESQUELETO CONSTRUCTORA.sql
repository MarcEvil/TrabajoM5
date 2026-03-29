CREATE DATABASE IF NOT EXISTS constructora_db;
USE constructora_db;
CREATE TABLE categorias (
    id_categoria INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(100) NOT NULL,
    descripcion TEXT
);
CREATE TABLE proveedores (
id_proveedor INT auto_increment primary key,
razon_social VARCHAR(250) NOT NULL,
contacto_nombre VARCHAR(250),
telefono VARCHAR(250)
);
CREATE TABLE usuarios (
id_usuario INT auto_increment primary key,
nombre VARCHAR(50) NOT NULL
);
CREATE TABLE productos (
id_producto INT auto_increment PRIMARY KEY,
nombre VARCHAR(500) NOT NULL,
id_categoria INT,
id_proveedor INT,
FOREIGN KEY (id_categoria) REFERENCES categorias(id_categoria),
FOREIGN KEY (id_proveedor) REFERENCES proveedores(id_proveedor)
);

CREATE TABLE ventas(
id_venta INT AUTO_INCREMENT PRIMARY KEY, -- id_ventas en singular
id_usuario INT NOT NULL,
fecha_creacion TIMESTAMP DEFAULT CURRENT_TIMESTAMP,

CONSTRAINT fk_venta_usuario
FOREIGN KEY (id_usuario) REFERENCES usuarios(id_usuario)
);

CREATE TABLE detalle_venta(
id_detalle INT AUTO_INCREMENT PRIMARY KEY,
id_ventas INT NOT NULL,						-- fk ventas
id_producto INT NOT NULL,					-- fk producto
cantidad INT NOT NULL,
precio_unitario DECIMAL(10,2) NOT NULL,

-- LLAVE FORANEA
	CONSTRAINT fk_detalle_venta_ventas
    FOREIGN KEY (id_venta) REFERENCES ventas(id_venta),
    
    CONSTRAINT fk_detalle_venta_productos
    FOREIGN KEY (id_producto) REFERENCES productos(id_producto)
);
