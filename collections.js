/* global use, db */
// MongoDB Playground
// Use Ctrl+Space inside a snippet or a string literal to trigger completions.

const database = 'test';
const collection = 'NEW_COLLECTION_NAME';

// The current database to use.
use(database);

// Create a new collection.
db.createCollection(collection);


// Insertar datos en la colección de Categorías
db.categorias.insertMany([
    { ID_Categoria: 1, Nombre: "Aseo" },
    { ID_Categoria: 2, Nombre: "Enlatado" },
    { ID_Categoria: 3, Nombre: "Lácteos" },
    { ID_Categoria: 4, Nombre: "Frutas" },
    { ID_Categoria: 5, Nombre: "Bebidas" }
]);

// Insertar datos en la colección de Productos
db.productos.insertMany([
    { ID_Producto: 1, Nombre: "Jabón líquido", ID_Categoria: 1, Precio: 3.50, Stock: 50 },
    { ID_Producto: 2, Nombre: "Atún enlatado", ID_Categoria: 2, Precio: 2.00, Stock: 100 },
    { ID_Producto: 3, Nombre: "Leche entera", ID_Categoria: 3, Precio: 2.50, Stock: 80 },
    { ID_Producto: 4, Nombre: "Manzanas", ID_Categoria: 4, Precio: 1.20, Stock: 200 },
    { ID_Producto: 5, Nombre: "Refresco de cola", ID_Categoria: 5, Precio: 1.80, Stock: 120 }
]);

// Insertar datos en la colección de Clientes
db.clientes.insertMany([
    { ID_Cliente: 1, Nombre: "Juan Pérez", Telefono: "1234567890", Direccion: "Calle 123, Ciudad" },
    { ID_Cliente: 2, Nombre: "María López", Telefono: "0987654321", Direccion: "Av. Principal, Pueblo" },
    { ID_Cliente: 3, Nombre: "Pedro García", Telefono: "1122334455", Direccion: "Carrera 456, Villa" },
    { ID_Cliente: 4, Nombre: "Ana Martínez", Telefono: "5544332211", Direccion: "Plaza 789, Pueblo Nuevo" },
    { ID_Cliente: 5, Nombre: "Luis Rodríguez", Telefono: "6677889900", Direccion: "Callejón 987, Ciudad Vieja" }
]);

// Insertar datos en la colección de Pedidos
db.pedidos.insertMany([
    { ID_Pedido: 1, ID_Cliente: 1, Fecha: ISODate("2024-03-05"), Total: 15.50 },
    { ID_Pedido: 2, ID_Cliente: 2, Fecha: ISODate("2024-03-06"), Total: 8.40 },
    { ID_Pedido: 3, ID_Cliente: 3, Fecha: ISODate("2024-03-07"), Total: 12.75 },
    { ID_Pedido: 4, ID_Cliente: 4, Fecha: ISODate("2024-03-08"), Total: 5.60 },
    { ID_Pedido: 5, ID_Cliente: 5, Fecha: ISODate("2024-03-09"), Total: 20.30 }
]);