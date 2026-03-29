use constructora_db;

INSERT INTO productos(nombre, id_categoria,id_proveedor)VALUES
('ceramica', 3, 3);

SELECT * FROM productos;

DELETE FROM productos
WHERE id_producto = 7;
-- ---------------------------------------------------------------------------------------------------
INSERT INTO proveedores(razon_social, contacto_nombre, telefono)VALUES
('Angello S.A.','servicio al cliente','+56 9 8765432');

UPDATE proveedores
SET razon_social = 'Josefina S.A.', 
    telefono = '600 600 3000'
WHERE id_proveedor = 4;

-- ---------------------------------------------------------------------------------------------------

UPDATE categorias
SET nombre = 'Terminaciones finas'
WHERE id_categoria = 3;

select * from categorias;

-- ---------------------------------------------------------------------------------------------------

select * from productos;

UPDATE productos 
SET precio = 22500,
stock = 600
WHERE id_producto = 6;


-- ---------------------------------------------------------------------------------------------------

SELECT * FROM productos WHERE precio BETWEEN 1000 AND 20000 ORDER BY stock asc;

-- ---------------------------------------------------------------------------------------------------

CREATE VIEW vista_productos_detallados AS
SELECT 
    p.id_producto,
    p.nombre AS producto,
    c.nombre AS categoria,
    pr.razon_social AS proveedor
FROM productos p
JOIN categorias c ON p.id_categoria = c.id_categoria
JOIN proveedores pr ON p.id_proveedor = pr.id_proveedor;

SELECT * FROM vista_productos_detallados;

-- ---------------------------------------------------------------------------------------------------

CREATE INDEX idx_producto_nombre 
ON productos (nombre);

SHOW INDEX FROM productos;

-- ---------------------------------------------------------------------------------------------------

INSERT INTO ventas( id_usuario)VALUES
(2),
(3);
select * from ventas;
-- ---------------------------------------------------------------------------------------------------
START TRANSACTION;


INSERT INTO venta (id_usuario, fecha_creacion)
VALUES (3, NOW());


SET @id_venta = LAST_INSERT_ID();


INSERT INTO detalle_venta (id_venta, id_producto, cantidad, precio_unitario)
VALUES (@id_venta, 1, 2, 100.00);


UPDATE productos
SET stock = stock - 2
WHERE id_producto = 1;


COMMIT;

rollback;

SELECT * FROM ventas;

CREATE TABLE demo_tabla (
    id_demo INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(100),
    descripcion VARCHAR(150)
);

ALTER TABLE demo_tabla
ADD COLUMN estado BOOLEAN DEFAULT 1;

ALTER TABLE demo_tabla
MODIFY COLUMN descripcion VARCHAR(255);

ALTER TABLE demo_tabla
DROP COLUMN estado;

INSERT INTO demo_tabla (nombre, descripcion)
VALUES ('Registro demo', 'Solo para prueba');

TRUNCATE TABLE demo_tabla;



