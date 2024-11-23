-- Creación de la tabla "empleado"
CREATE TABLE
    empleado (
        id BIGINT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY, -- Identificador único para cada empleado, autoincremental y sin permitir valores negativos.
        nombres VARCHAR(100) NOT NULL, -- Almacena el nombre del empleado (máximo 100 caracteres).
        apellidos VARCHAR(100) NOT NULL, -- Almacena el apellido del empleado (máximo 100 caracteres).
        puesto VARCHAR(100) NOT NULL, -- Almacena el puesto o cargo del empleado (máximo 100 caracteres).
        salario DECIMAL(10, 2) NOT NULL, -- Almacena el salario del empleado con hasta 10 dígitos y 2 decimales.
        edad TINYINT UNSIGNED NOT NULL, -- Almacena la edad del empleado como un valor entero positivo (máximo 255).
        telefono VARCHAR(15) NOT NULL -- Almacena el número de teléfono del empleado como texto (permite incluir caracteres no numéricos como guiones).
    );

-- Inserción de datos en la tabla "empleado"
-- Cada registro representa un empleado con sus datos personales y laborales.
INSERT INTO
    empleado (
        nombres,
        apellidos,
        puesto,
        salario,
        edad,
        telefono
    )
VALUES
    -- Primer empleado
    (
        'José',
        'Acuña',
        'Gerente',
        1700.00,
        39,
        '3043155556'
    ),
    -- Segundo empleado
    (
        'María',
        'González',
        'Analista',
        2000.50,
        29,
        '3124567890'
    ),
    -- Tercer empleado
    (
        'Carlos',
        'López',
        'Desarrollador',
        2500.00,
        32,
        '3107891234'
    ),
    -- Cuarto empleado
    (
        'Ana',
        'Martínez',
        'Diseñadora',
        1800.75,
        28,
        '3112345678'
    ),
    -- Quinto empleado
    (
        'Luis',
        'García',
        'Jefe de Proyecto',
        3000.00,
        40,
        '3135678901'
    ),
    -- Sexto empleado
    (
        'Fernanda',
        'Hernández',
        'Recursos Humanos',
        2200.00,
        33,
        '3156789012'
    ),
    -- Séptimo empleado
    (
        'José',
        'Ramírez',
        'Contador',
        1900.00,
        45,
        '3167890123'
    ),
    -- Octavo empleado
    (
        'Laura',
        'Sánchez',
        'Marketing',
        2100.00,
        27,
        '3178901234'
    );

-- Selección de empleados mayores de 30 años
-- Este comando consulta los empleados cuyo campo "edad" es mayor a 30
-- y muestra sus ID, nombres, puesto y teléfono.
SELECT
    id,
    nombres,
    puesto,
    telefono
FROM
    empleado
WHERE
    edad > 30;

-- Actualización de un puesto específico
-- Este comando cambia el puesto de un empleado cuyo ID es 18 a "gerente general".
UPDATE empleado
SET
    puesto = 'gerente general'
WHERE
    id = 18;

-- Selección de todos los empleados
-- Recupera la lista completa de empleados mostrando los campos ID, nombres y puesto.
SELECT
    id,
    nombres,
    puesto
FROM
    empleado;

-- Eliminación de un empleado por su ID
-- Este comando elimina de la tabla al empleado con ID 12.
DELETE FROM empleado
WHERE
    id = 12;

-- Selección de todos los empleados (post-eliminación)
-- Se consulta nuevamente la tabla para verificar que el empleado con ID 12 fue eliminado.
SELECT
    id,
    nombres,
    puesto
FROM
    empleado;