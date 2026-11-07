/* =============== Parte 1 =============== */
CREATE TABLE apartments(
	id	SERIAL PRIMARY KEY,
	name 	VARCHAR(50),
	address 	VARCHAR(50),
	city		VARCHAR(50),
	postal_code		VARCHAR(50),
	bedrooms		INTEGER,
	area_m2		NUMERIC(6,2),
	price		NUMERIC(10,2),
	available		BOOLEAN,
	published_date		DATE
);


INSERT INTO apartments (name, address, city, postal_code, bedrooms, area_m2, price, available, published_date) VALUES
('Depto Buenos Aires 1', 'Av. Siempre Viva 123', 'Buenos Aires', 'C1000', 2, 57.5, 120000, TRUE, '2023-08-01'),
('Depto Centro 1', 'Av. Corrientes 1250', 'Buenos Aires', 'C1043', 2, 55.50, 120000.00, TRUE, '2024-01-15'),
('Depto Palermo 1', 'Jorge Luis Borges 1800', 'Buenos Aires', 'C1414', 3, 82.00, 185000.00, TRUE, '2024-02-03'),
('Depto Belgrano 1', 'Av. Cabildo 2200', 'Buenos Aires', 'C1428', 2, 68.75, 155000.00, FALSE, '2024-02-20'),
('Depto Recoleta 1', 'Av. Santa Fe 1450', 'Buenos Aires', 'C1060', 1, 42.00, 98000.00, TRUE, '2024-03-10'),
('Depto Caballito 1', 'Av. Rivadavia 5200', 'Buenos Aires', 'C1424', 3, 95.00, 210000.00, TRUE, '2024-03-22'),
('Depto Rosario 1', 'Bv. Oroño 850', 'Rosario', 'S2000', 2, 60.00, 110000.00, TRUE, '2024-04-05'),
('Depto Rosario 2', 'San Luis 1250', 'Rosario', 'S2000', 1, 38.50, 75000.00, FALSE, '2024-04-18'),
('Depto Cordoba 1', 'Av. Colon 750', 'Cordoba', 'X5000', 2, 64.00, 105000.00, TRUE, '2024-05-02'),
('Depto Cordoba 2', 'Obispo Trejo 450', 'Cordoba', 'X5000', 3, 88.50, 165000.00, TRUE, '2024-05-19'),
('Depto Mendoza 1', 'Av. San Martin 1100', 'Mendoza', 'M5500', 2, 57.00, 95000.00, FALSE, '2024-06-01'),
('Depto Mendoza 2', 'Belgrano 650', 'Mendoza', 'M5500', 1, 40.00, 72000.00, TRUE, '2024-06-14'),
('Depto Mar del Plata 1', 'Av. Colon 1800', 'Mar del Plata', 'B7600', 2, 62.00, 125000.00, TRUE, '2024-07-03'),
('Depto Mar del Plata 2', 'Brown 950', 'Mar del Plata', 'B7600', 3, 90.00, 175000.00, FALSE, '2024-07-21'),
('Depto Salta 1', 'Caseros 500', 'Salta', 'A4400', 2, 58.00, 89000.00, TRUE, '2024-08-08'),
('Depto Tucuman 1', '25 de Mayo 700', 'San Miguel de Tucuman', 'T4000', 1, 45.00, 68000.00, TRUE, '2024-08-25'),
('Depto La Plata 1', 'Calle 7 850', 'La Plata', 'B1900', 2, 66.00, 102000.00, FALSE, '2024-09-04'),
('Depto La Plata 2', 'Calle 50 1200', 'La Plata', 'B1900', 3, 92.00, 148000.00, TRUE, '2024-09-17'),
('Depto Neuquen 1', 'Av. Argentina 400', 'Neuquen', 'Q8300', 2, 70.00, 135000.00, TRUE, '2024-10-02'),
('Depto Bariloche 1', 'Mitre 350', 'San Carlos de Bariloche', 'R8400', 1, 48.00, 115000.00, TRUE, '2024-10-19'),
('Depto San Juan 1', 'Av. Libertador 900', 'San Juan', 'J5400', 2, 63.50, 92000.00, FALSE, '2024-11-05'),
('Depto Santa Fe 1', 'San Jeronimo 1800', 'Santa Fe', 'S3000', 2, 59.00, 87000.00, TRUE, '2024-11-22'),
('Depto Parana 1', 'Urquiza 650', 'Parana', 'E3100', 1, 41.50, 65000.00, TRUE, '2024-12-10'),
('Depto Resistencia 1', 'Av. Sarmiento 550', 'Resistencia', 'H3500', 2, 65.00, 85000.00, TRUE, '2025-01-08'),
('Depto Resistencia 2', 'Calle Brown 120', 'Resistencia', 'H3500', 3, 96.00, 128000.00, FALSE, '2025-01-25'),
('Depto Posadas 1', 'Bolivar 780', 'Posadas', 'N3300', 2, 61.00, 94000.00, TRUE, '2025-02-12'),
('Depto Corrientes 1', 'Junin 1050', 'Corrientes', 'W3400', 1, 43.00, 70000.00, TRUE, '2025-03-01'),
('Depto Ushuaia 1', 'San Martin 600', 'Ushuaia', 'V9410', 2, 72.00, 160000.00, FALSE, '2025-03-18'),
('Depto Puerto Madryn 1', 'Av. Roca 450', 'Puerto Madryn', 'U9120', 2, 67.00, 108000.00, TRUE, '2025-04-06'),
('Depto San Luis 1', 'Pringles 320', 'San Luis', 'D5700', 1, 39.00, 62000.00, TRUE, '2025-04-23'),
('Depto Villa Carlos Paz 1', 'Av. Libertad 900', 'Villa Carlos Paz', 'X5152', 3, 105.00, 190000.00, FALSE, '2025-05-11');


/* Ejercicio 1 */
SELECT name AS "Nombre", address AS "Dirección", city AS "Ciudad", bedrooms AS "Dormitorios", price AS "Precio" FROM apartments
WHERE available = TRUE
ORDER BY price ASC;

/* Ejercicio 2 */
SELECT city AS "Ciudad", ROUND(AVG(price), 2) AS "Precio promedio" FROM apartments
GROUP BY city; 

/* Ejercicio 3 */
SELECT name AS "Nombre", address AS "Dirección", city AS "Ciudad", bedrooms AS "Dormitorios", price AS "Precio" FROM apartments
WHERE bedrooms >= 2 AND area_m2 < 60;





/* =============== Parte 2 =============== */
/*
CREATE TABLE sales (
    id SERIAL PRIMARY KEY,
    product VARCHAR(50),
    category VARCHAR(30),
    price NUMERIC,
    quantity INT,
    sale_date DATE
);

INSERT INTO sales (product, category, price, quantity, sale_date) VALUES
('Mouse', 'Electronics', 15, 4, '2023-07-10'),
('Keyboard', 'Electronics', 30, 2, '2023-07-11'),
('Notebook', 'Stationery', 8, 10, '2023-07-12'),
('Pen', 'Stationery', 2, 25, '2023-07-13'),
('Headphones', 'Electronics', 40, 3, '2023-07-14'),
('Monitor', 'Electronics', 120, 1, '2023-07-15'),
('Desk Chair', 'Furniture', 85, 2, '2023-07-16'),
('Notebook Case', 'Accessories', 25, 3, '2023-07-17'),
('Printer Paper', 'Stationery', 6, 15, '2023-07-18'),
('USB Drive', 'Electronics', 12, 5, '2023-07-19'),
('Desk Lamp', 'Furniture', 35, 4, '2023-07-20'),
('Stapler', 'Stationery', 7, 6, '2023-07-21'),
('Calculator', 'Electronics', 20, 3, '2023-07-22'),
('Water Bottle', 'Accessories', 10, 8, '2023-07-23'),
('Laptop Stand', 'Accessories', 45, 2, '2023-07-24'),
('Office Desk', 'Furniture', 150, 1, '2023-07-25'),
('Whiteboard', 'Furniture', 60, 1, '2023-07-26'),
('Marker Set', 'Stationery', 5, 12, '2023-07-27'),
('Mouse Pad', 'Accessories', 8, 7, '2023-07-28'),
('Webcam', 'Electronics', 50, 2, '2023-07-29'),
('Smartphone', 'Electronics', 300, 1, '2023-07-30'),
('Notebook Pro', 'Electronics', 900, 1, '2023-07-31'),
('File Cabinet', 'Furniture', 120, 1, '2023-08-01'),
('Backpack', 'Accessories', 40, 3, '2023-08-02'),
('Binder', 'Stationery', 4, 20, '2023-08-03'),
('Headset Stand', 'Accessories', 15, 5, '2023-08-04'),
('Desk Organizer', 'Accessories', 12, 6, '2023-08-05'),
('Laptop Sleeve', 'Accessories', 30, 2, '2023-08-06'),
('Paper Clips', 'Stationery', 1, 50, '2023-08-07'),
('Surge Protector', 'Electronics', 25, 3, '2023-08-08'),
('Pen Holder', 'Accessories', 5, 10, '2023-08-09');
*/


/* Ejercicio 1 */
SELECT product AS "Producto", category AS "Categoría", price AS "Precio", quantity AS "Cantidad", sale_date AS "Fecha de venta" FROM sales
WHERE category = 'Electronics';

/* Ejercicio 2 */
SELECT category AS "Categoria", SUM(price * quantity) AS "Ingresos Totales" FROM sales
GROUP BY category; 

/* Ejercicio 3 */
SELECT category AS "Categoria", SUM(price * quantity) AS "Ingresos Totales" FROM sales
GROUP BY category
ORDER BY "Ingresos Totales" DESC LIMIT 1;

/* Ejercicio 4 */
SELECT product AS "Producto", category AS "Categoría", price AS "Precio", quantity AS "Cantidad", sale_date AS "Fecha de venta" FROM sales
WHERE price > 20;

/* Ejercicio 5 */
SELECT product AS "Producto", SUM(quantity) AS "Cantidad Total Vend." FROM sales
GROUP BY product;

/* Ejercicio 6 */
SELECT product AS "Producto", ROUND(AVG(price * quantity),2) AS "Ingresos Promedios" FROM sales
GROUP BY product
ORDER BY product ASC;

/* Ejercicio 7 */
SELECT product AS "Producto", SUM(quantity) AS "Cantidad Total Vendida" FROM sales
GROUP BY product
ORDER BY "Cantidad Total Vendida" DESC LIMIT 3;

/* Ejercicio 8 */
SELECT product AS "Producto", category AS "Categoría", price AS "Precio", quantity AS "Cantidad", sale_date AS "Fecha de venta" FROM sales
WHERE sale_date > '2023-07-12';

/* Ejercicio 9 */
SELECT category AS "Categoria", SUM(price * quantity) AS "Ingresos Totales" FROM sales
GROUP BY category
HAVING SUM(price * quantity) > 50;

/* Ejercicio 10 */
SELECT product AS "Producto", category AS "Categoría", price AS "Precio", quantity AS "Cantidad", sale_date AS "Fecha de venta" FROM sales
WHERE product LIKE 'W%';

/* Ejercicio 11 */
SELECT product AS "Producto", ROUND(AVG(quantity), 2) AS "Promedio de Prod. Vendidos" FROM sales
GROUP BY product;

/* Ejercicio 12 */
SELECT product AS "Producto", category AS "Categoría", price AS "Precio", quantity AS "Cantidad", quantity * price AS "Ingresos" FROM sales
ORDER BY "Ingresos" DESC;

/* Ejercicio 13 */
SELECT product AS "Producto", category AS "Categoría", price AS "Precio", quantity AS "Cantidad", sale_date AS "Fecha de venta" FROM sales
WHERE category = 'Electronics' AND quantity > 2 AND price < 40;