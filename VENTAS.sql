SELECT * FROM constructora_db.ventas;
DESCRIBE ventas;

ALTER TABLE ventas
RENAME column id_ventas to id_venta;

ALTER TABLE ventas
RENAME column id_usuaio to id_usuario;

INSERT INTO ventas(id_venta, id_usuario)VALUES
(1,1),
(2,3);