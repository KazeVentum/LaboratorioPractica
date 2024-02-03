CREATE DATABASE IF NOT EXISTS laboratorio_partes;
USE laboratorio_partes;

DROP DATABASE laboratorio_partes;

CREATE TABLE IF NOT EXISTS `composicion_piezas`(
    `id_piezaPrincipal` INT NOT NULL,
    `id_piezaCompuesta` INT NOT NULL,
    `cantidadRequerida` INT NOT NULL
);
ALTER TABLE
    `composicion_piezas` ADD PRIMARY KEY(
        `id_piezaPrincipal`,
        `id_piezaCompuesta`
    );
CREATE TABLE IF NOT EXISTS`partesPrincipal`(
    `id` INT  NOT NULL AUTO_INCREMENT PRIMARY KEY,
    `nombre` VARCHAR(255) NOT NULL,
    `categoria` ENUM('Eléctrica', 'Mecánica', 'Hidráulica') NOT NULL,
    `cantidad_disponible` INT NOT NULL
);
ALTER TABLE
    `composicion_piezas` ADD CONSTRAINT `composicion piezas_id_piezacompuesta_foreign` FOREIGN KEY(`id_piezaCompuesta`) REFERENCES `partesPrincipal`(`id`);
ALTER TABLE
    `composicion_piezas` ADD CONSTRAINT `composicion piezas_id_piezaprincipal_foreign` FOREIGN KEY(`id_piezaPrincipal`) REFERENCES `partesPrincipal`(`id`);