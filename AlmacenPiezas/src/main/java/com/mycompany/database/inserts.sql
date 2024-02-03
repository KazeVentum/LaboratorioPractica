

INSERT INTO partesPrincipal(nombre, categoria, cantidad_disponible) VALUES
('Tornillo', 'Mecánica', 200),
('Pistón', 'Mecánica', 50),
('Leva', 'Mecánica', 80),
('Enlace', 'Mecánica', 120),
('Cilindro', 'Mecánica', 25),
('Cilindro hidráulico', 'Hidráulica', 30),
('Válvula de control', 'Hidráulica', 50),
('Bomba hidráulica', 'Hidráulica', 20),
('Manguera hidráulica', 'Hidráulica', 100),
('Filtro hidráulico', 'Hidráulica', 40),
('Motor eléctrico', 'Eléctrica', 25),
('Interruptor', 'Eléctrica', 80),
('Cable eléctrico', 'Eléctrica', 150),
('Transformador', 'Eléctrica', 15),
('Fusible', 'Eléctrica', 200),
('Transmision', 'Mecánica', 25),
('Arbol de levas', 'Mecánica', 50);

INSERT INTO `composicion_piezas` (id_piezaPrincipal, id_piezaCompuesta, cantidadRequerida) VALUES
(16, 3, 2),
(16, 17, 4),
(16, 6, 1),
(11, 12, 1),
(11, 13, 50),
(11, 15, 15);


-- SELECT 
--     pp.nombre AS pieza_principal,
--     pp.categoria AS categoria_principal,
--     pp.cantidad_disponible AS cantidad_disponible_principal,
--     pc.nombre AS pieza_secundaria,
--     pc.categoria AS categoria_secundaria,
--     pc.cantidad_disponible AS cantidad_disponible_secundaria,
--     cp.cantidadRequerida
-- FROM partesPrincipal pp
-- INNER JOIN composicion_piezas cp ON pp.id = cp.id_piezaPrincipal
-- INNER JOIN partesPrincipal pc ON cp.id_piezaCompuesta = pc.id





