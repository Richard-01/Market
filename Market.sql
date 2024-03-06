-- Active: 1709682226279@@bmric43zh7hvfdhufb1y-mysql.services.clever-cloud.com@3306@bmric43zh7hvfdhufb1y
-- Crear la tabla de Categorías

SHOW DATABASES;

CREATE TABLE Categorias (
    ID_Categoria INT PRIMARY KEY,
    Nombre VARCHAR(100)
);

-- Crear la tabla de Productos
CREATE TABLE Productos (
    ID_Producto INT PRIMARY KEY,
    Nombre VARCHAR(100),
    ID_Categoria INT,
    Precio DECIMAL(10, 2),
    Stock INT,
    CONSTRAINT fk_Productos_Categorias FOREIGN KEY (ID_Categoria) REFERENCES Categorias(ID_Categoria)
);

-- Crear la tabla de Clientes
CREATE TABLE Clientes (
    ID_Cliente INT PRIMARY KEY,
    Nombre VARCHAR(100),
    Telefono VARCHAR(20),
    Direccion VARCHAR(255)
);

-- Crear la tabla de Pedidos
CREATE TABLE Pedidos (
    ID_Pedido INT PRIMARY KEY,
    ID_Cliente INT,
    Fecha DATE,
    Total DECIMAL(10, 2),
    CONSTRAINT fk_Pedidos_Clientes FOREIGN KEY (ID_Cliente) REFERENCES Clientes(ID_Cliente)
);

-- Insertar datos de ejemplo en la tabla de Categorías
INSERT INTO Categorias (ID_Categoria, Nombre) VALUES
(1, 'Aseo'),
(2, 'Enlatado'),
(3, 'Lácteos'),
(4, 'Frutas'),
(5, 'Bebidas');

-- Insertar datos de ejemplo en la tabla de Productos
INSERT INTO Productos (ID_Producto, Nombre, ID_Categoria, Precio, Stock) VALUES
(1, 'Jabón líquido', 1, 3.50, 50),
(2, 'Atún enlatado', 2, 2.00, 100),
(3, 'Leche entera', 3, 2.50, 80),
(4, 'Manzanas', 4, 1.20, 200),
(5, 'Refresco de cola', 5, 1.80, 120);

-- Insertar datos de ejemplo en la tabla de Clientes
INSERT INTO Clientes (ID_Cliente, Nombre, Telefono, Direccion) VALUES
(1, 'Juan Pérez', '1234567890', 'Calle 123, Ciudad'),
(2, 'María López', '0987654321', 'Av. Principal, Pueblo'),
(3, 'Pedro García', '1122334455', 'Carrera 456, Villa'),
(4, 'Ana Martínez', '5544332211', 'Plaza 789, Pueblo Nuevo'),
(5, 'Luis Rodríguez', '6677889900', 'Callejón 987, Ciudad Vieja');

-- Insertar datos de ejemplo en la tabla de Pedidos
INSERT INTO Pedidos (ID_Pedido, ID_Cliente, Fecha, Total) VALUES
(1, 1, '2024-03-05', 15.50),
(2, 2, '2024-03-06', 8.40),
(3, 3, '2024-03-07', 12.75),
(4, 4, '2024-03-08', 5.60),
(5, 5, '2024-03-09', 20.30);

SELECT 
    c.ID_Cliente,
    c.Nombre AS Nombre_Cliente,
    c.Telefono,
    c.Direccion,
    pr.Nombre AS Nombre_Producto,
    cat.Nombre AS Categoria,
    pr.Precio AS Precio_Producto,
    p.Fecha AS Fecha_Pedido,
    p.Total AS Total_Pedido
FROM 
    Clientes c
LEFT JOIN 
    Pedidos p ON c.ID_Cliente = p.ID_Cliente
LEFT JOIN 
    Productos pr ON p.ID_Pedido = pr.ID_Producto
LEFT JOIN 
    Categorias cat ON pr.ID_Categoria = cat.ID_Categoria
WHERE 
    c.ID_Cliente = 1;