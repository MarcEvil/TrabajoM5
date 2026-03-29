SELECT * FROM constructora_db.detalle_venta;

DESCRIBE detalle_venta;

ALTER TABLE detalle_venta
RENAME column id_ventas to id_venta;


INSERT INTO detalle_venta(id_venta, id_producto, cantidad, precio_unitario)VALUES
(1,1,15,6990),
(2,2,30,2500);


