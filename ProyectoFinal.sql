
-- A 
SELECT *
FROM producto
WHERE Nombre LIKE '%computadora%' AND Precio > 2500;
-- B
SELECT * FROM DetallePedido;
SELECT p.Categoria, SUM(dp.Cantidad) AS CantidadTotalVentas
FROM Producto p
JOIN DetallePedido dp ON p.idProducto = dp.idProducto
GROUP BY p.Categoria
HAVING SUM(dp.Cantidad) > 100;


-- C
SELECT c.Nombre_apellido AS Cliente, pe.Fechapedido AS FechaPedido
FROM pedido pe
INNER JOIN cliente c ON pe.idCliente = c.idCliente;

-- D 
UPDATE producto
SET precio = precio * 1.10
WHERE Categoria = 'Electrónico';

-- E
DELETE FROM Pedido
WHERE Fechapedido < '2023-01-01';












