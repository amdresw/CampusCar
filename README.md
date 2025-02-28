# CampusCar
Este proyecto tiene como objetivo el diseño y la implementación de una base de datos para un concesionario de vehículos. La base de datos permitirá gestionar la información relacionada con vehículos en stock, clientes, vendedores, transacciones de ventas y servicios de mantenimiento. El proyecto incluye un diagrama UML E-R que representa la estructura de la base de datos, así como una documentación detallada que explica las decisiones de diseño, las relaciones entre las tablas y las restricciones impuestas.

*Objetivo del Proyecto.*

El concesionario de vehículos necesita una base de datos que pueda gestionar de manera eficiente las siguientes entidades:

- Vehículos en stock: Información sobre los vehículos disponibles para la venta.
- Clientes: Información sobre los clientes que han adquirido vehículos o han solicitado servicios.
- Vendedores: Información sobre los vendedores que gestionan las transacciones de ventas.
- Ventas: Registro de las ventas realizadas, incluyendo detalles sobre el vehículo y el cliente.
- Servicios de mantenimiento: Registro de los servicios realizados a los vehículos vendidos, incluyendo fechas y detalles de los trabajos realizados.
- Características Principales
  
*La base de datos incluye las siguientes entidades principales:*

- Vehículos: Almacena la información sobre los vehículos disponibles, como marca, modelo, año, precio, color, tipo de combustible, etc.
- Clientes: Contiene los datos de los clientes, como nombre, dirección, teléfono, correo electrónico y tipo de cliente.
- Vendedores: Información sobre los empleados que realizan las ventas, incluyendo su nombre, contacto y el historial de ventas.
- Ventas: Registra las ventas realizadas, con detalles como el cliente, el vehículo, el precio de venta, la fecha de venta y el vendedor asociado.
- Servicios de mantenimiento: Contiene los registros de los servicios realizados a los vehículos vendidos, incluyendo el tipo de servicio, fecha y detalles del trabajo realizado.
  
*Diagrama UML E-R.*

El diagrama UML E-R de la base de datos ilustra las relaciones entre las diferentes tablas. Se han definido las siguientes relaciones:

- Vehículo - Venta: Un vehículo puede ser vendido a un cliente, y cada venta está asociada a un único vendedor.
- Cliente - Venta: Un cliente puede realizar múltiples compras a lo largo del tiempo, por lo que existe una relación uno a muchos entre clientes y ventas.
- Vendedor - Venta: Un vendedor puede estar asociado a múltiples ventas, por lo que existe una relación uno a muchos entre vendedores y ventas.
- Vehículo - Servicio de Mantenimiento: Un vehículo puede tener múltiples servicios de mantenimiento asociados, por lo que existe una relación uno a muchos entre vehículos y servicios de mantenimiento.

*Relaciones y restricciones.*

Las siguientes relaciones y restricciones han sido definidas para garantizar la integridad de la base de datos:

- Integridad referencial: Las claves foráneas garantizan que las ventas estén asociadas a un cliente, un vehículo y un vendedor válidos. Del mismo modo, los servicios de mantenimiento deben estar asociados a un vehículo que exista en la base de datos.
- Restricciones de unicidad: Los vehículos, clientes y vendedores tienen identificadores únicos (ID) que aseguran la unicidad de cada entidad.
- Restricciones de tipo: Cada tipo de entidad tiene restricciones para asegurarse de que los datos sean válidos. Por ejemplo, el precio de un vehículo no puede ser negativo, y el correo electrónico de un cliente debe tener un formato válido.


*Decisiones de Diseño.*

Modelo Relacional: Se optó por un modelo relacional, ya que la base de datos contiene diferentes entidades que tienen relaciones bien definidas (como ventas, clientes y vehículos).

Normalización: Las tablas están normalizadas para evitar la redundancia de datos y asegurar la consistencia. Cada entidad tiene su propia tabla, y las relaciones entre ellas están establecidas a través de claves foráneas.

Integridad de Datos: Se implementaron restricciones de integridad referencial y de unicidad para garantizar que los datos sean válidos y consistentes.
