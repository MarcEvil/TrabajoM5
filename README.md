# Este README ha sido diseñado para documentar la estructura, lógica y operaciones de la base de datos `constructora\_db`, cubriendo todos los aspectos técnicos solicitados en el módulo de desarrollo backend con bases de datos relacionales.

# 

# ---

# 

# \# Proyecto: Sistema de Gestión Constructora (Módulo 5)

# 

# Este repositorio contiene los scripts SQL necesarios para la creación, administración y consulta de una base de datos orientada a una empresa constructora. El proyecto abarca desde la definición del esquema (DDL) hasta operaciones avanzadas como transacciones, vistas e índices.

# 

# \## 🏗️ Estructura de la Base de Datos

# 

# La base de datos se denomina `constructora\_db` y se compone de las siguientes tablas principales:

# 

# \* \*\*`categorias`\*\*: Clasificación de productos (Obra gruesa, terminaciones, etc.).

# \* \*\*`proveedores`\*\*: Registro de entidades que suministran los materiales.

# \* \*\*`usuarios`\*\*: Clientes o personal que interactúa con el sistema.

# \* \*\*`productos`\*\*: Catálogo de materiales, vinculado a categorías y proveedores.

# \* \*\*`ventas`\*\*: Cabecera de las transacciones realizadas.

# \* \*\*`detalle\_venta`\*\*: Registro específico de productos, cantidades y precios por venta.

# 

# ---

# 

# \## 📂 Contenido de los Archivos

# 

# | Archivo | Descripción |

# | :--- | :--- |

# | `ESQUELETO CONSTRUCTORA.sql` | Definición de tablas, llaves primarias y relaciones foráneas. |

# | `CATEGORIAS.sql` | Inserción de categorías base (e.g., Material de obra gruesa). |

# | `PRODUCTOS.sql` | Carga inicial de materiales como Cemento, Áridos y Madera. |

# | `PROVEEDORES.sql` | Datos de contacto de proveedores principales como Polpaico y Sodimac. |

# | `USUARIOS.sql` | Listado de usuarios registrados. |

# | `VENTAS.sql` / `DETALLE VENTAS.sql` | Registro de transacciones y normalización de nombres de columnas. |

# | `consultas y modificaciones.sql` | Archivo maestro con operaciones CRUD, transacciones, vistas e índices. |

# 

# ---

# 

# \## 🚀 Funcionalidades Implementadas

# 

# \### 1. Gestión de Datos (CRUD)

# Se incluyen ejemplos de:

# \* \*\*Inserción\*\*: Registro de nuevos productos y proveedores.

# \* \*\*Actualización\*\*: Modificación de precios, stock y datos de contacto.

# \* \*\*Eliminación\*\*: Borrado lógico y físico de registros y limpieza de tablas con `TRUNCATE`.

# 

# \### 2. Optimización y Consultas Avanzadas

# \* \*\*Vistas (`Views`)\*\*: Creación de `vista\_productos\_detallados` para simplificar reportes de inventario mediante `JOINs`.

# \* \*\*Índices\*\*: Implementación de `idx\_producto\_nombre` para acelerar las búsquedas por nombre de material.

# \* \*\*Filtros\*\*: Consultas con operadores `BETWEEN`, `ORDER BY` y límites de stock.

# 

# \### 3. Integridad y Transacciones

# Se implementó un flujo de venta robusto utilizando:

# \* \*\*`START TRANSACTION`\*\*: Asegura que la venta y la actualización de stock ocurran simultáneamente.

# \* \*\*`COMMIT` / `ROLLBACK`\*\*: Para confirmar o revertir cambios en caso de error.

# \* \*\*`LAST\_INSERT\_ID()`\*\*: Para vincular dinámicamente el detalle de la venta con su cabecera.

# 

# ---

# 

# \## 🛠️ Instrucciones de Uso

# 1\. Ejecutar primero `ESQUELETO CONSTRUCTORA.sql` para crear la estructura.

# 2\. Cargar los archivos maestros en orden: `CATEGORIAS.sql`, `PROVEEDORES.sql`, `USUARIOS.sql` y `PRODUCTOS.sql`.

# 3\. Utilizar `consultas y modificaciones.sql` para probar la lógica de negocio y las transacciones.

# 

# 

