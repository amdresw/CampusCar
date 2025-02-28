-- Crear tabla Vehículos
CREATE TABLE Vehiculos (
    ID_Vehiculo INT PRIMARY KEY,
    Marca VARCHAR(30) NOT NULL,
    Modelo VARCHAR(30) NOT NULL,
    Año INT NOT NULL,
    Color VARCHAR(20),
    Precio DECIMAL(10, 2) NOT NULL,
    Tipo_combustible VARCHAR(15)
);

-- Crear tabla Clientes
CREATE TABLE Clientes (
    ID_Cliente INT PRIMARY KEY,
    Nombre VARCHAR(50) NOT NULL,
    Direccion VARCHAR(100),
    Telefono VARCHAR(15),
    Correo_electronico VARCHAR(50)
);

-- Crear tabla Vendedores
CREATE TABLE Vendedores (
    ID_Vendedor INT PRIMARY KEY,
    Nombre VARCHAR(50) NOT NULL,
    Telefono VARCHAR(15),
    Correo_electronico VARCHAR(50)
);

-- Crear tabla Ventas
CREATE TABLE Ventas (
    ID_Venta INT PRIMARY KEY,
    ID_Vehiculo INT NOT NULL,
    ID_Cliente INT NOT NULL,
    ID_Vendedor INT NOT NULL,
    Fecha_Venta DATE NOT NULL,
    Precio_Final DECIMAL(10, 2) NOT NULL,
    FOREIGN KEY (ID_Vehiculo) REFERENCES Vehiculos(ID_Vehiculo),
    FOREIGN KEY (ID_Cliente) REFERENCES Clientes(ID_Cliente),
    FOREIGN KEY (ID_Vendedor) REFERENCES Vendedores(ID_Vendedor)
);

-- Crear tabla Servicios de Mantenimiento
CREATE TABLE Servicios_Mantenimiento (
    ID_Servicio INT PRIMARY KEY,
    ID_Vehiculo INT NOT NULL,
    Fecha_Servicio DATE NOT NULL,
    Descripcion TEXT,
    Costo DECIMAL(10, 2) NOT NULL,
    FOREIGN KEY (ID_Vehiculo) REFERENCES Vehiculos(ID_Vehiculo)
);