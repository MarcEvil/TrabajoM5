SELECT * FROM constructora_db.productos;
DESCRIBE productos;

INSERT INTO productos(nombre, id_categoria,id_proveedor)VALUES
('Cemento',2,2),
('Aridos',2,2),
('Hormigon',2,2),
('Madera',2,3),
('Maquinaria',4,3),
('Piso flotante',3,3);
