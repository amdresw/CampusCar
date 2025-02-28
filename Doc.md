*Decisiones de Diseño.*

Modelo Relacional: Se optó por un modelo relacional, ya que la base de datos contiene diferentes entidades que tienen relaciones bien definidas (como ventas, clientes y vehículos).

Normalización: Las tablas están normalizadas para evitar la redundancia de datos y asegurar la consistencia. Cada entidad tiene su propia tabla, y las relaciones entre ellas están establecidas a través de claves foráneas.

Integridad de Datos: Se implementaron restricciones de integridad referencial y de unicidad para garantizar que los datos sean válidos y consistentes.

![alt text](images/CampusCar.png)

Estructura de la Base de Datos
A continuación se describen las tablas principales y sus atributos:

Tabla: Vehículos

ID_Vehículo (PK)
Marca
Modelo
Año
Color
Precio
Tipo_combustible
Tabla: Clientes

ID_Cliente (PK)
Nombre
Dirección
Teléfono
Correo_electrónico
Tabla: Vendedores

ID_Vendedor (PK)
Nombre
Teléfono
Correo_electrónico
Tabla: Ventas

ID_Venta (PK)
ID_Vehículo (FK)
ID_Cliente (FK)
ID_Vendedor (FK)
Fecha_Venta
Precio_Final
Tabla: Servicios de Mantenimiento

ID_Servicio (PK)
ID_Vehículo (FK)
Fecha_Servicio
Descripción
Costo