-- Crear la tabla "Autores"
CREATE TABLE
    Autores (
        ID INT AUTO_INCREMENT PRIMARY KEY, -- Identificador único para cada autor (clave primaria).
        Nombre VARCHAR(100) NOT NULL, -- Nombre del autor. Campo obligatorio.
        Nacionalidad VARCHAR(100) NOT NULL -- Nacionalidad del autor. Campo obligatorio.
    );

-- Crear la tabla "Libros"
CREATE TABLE
    Libros (
        ID INT AUTO_INCREMENT PRIMARY KEY, -- Identificador único para cada libro (clave primaria).
        Titulo VARCHAR(200) NOT NULL, -- Título del libro. Campo obligatorio.
        Genero VARCHAR(100) NOT NULL, -- Género literario del libro. Campo obligatorio.
        Año_Publicacion YEAR NOT NULL, -- Año de publicación del libro. Campo obligatorio.
        Autor_ID INT, -- Identificador del autor. Es una clave foránea que conecta con la tabla "Autores".
        FOREIGN KEY (Autor_ID) REFERENCES Autores (ID) -- Relación entre "Libros" y "Autores".
        ON DELETE CASCADE -- Si se elimina un autor, se eliminan automáticamente sus libros.
        ON UPDATE CASCADE -- Si el ID de un autor cambia, se actualiza automáticamente en la tabla "Libros".
    );

-- Insertar registros en la tabla "Autores"
INSERT INTO
    Autores (Nombre, Nacionalidad)
VALUES
    ('Gabriel García Márquez', 'Colombiana'), -- Agregar un autor colombiano
    ('Isabel Allende', 'Chilena'), -- Agregar un autor chileno
    ('Mario Vargas Llosa', 'Peruana');

-- Agregar un autor peruano
-- Insertar registros en la tabla "Libros"
INSERT INTO
    Libros (Titulo, Genero, Año_Publicacion, Autor_ID)
VALUES
    (
        'Cien años de soledad',
        'Realismo Mágico',
        1967,
        1
    ), -- Libro de Gabriel García Márquez
    (
        'El amor en los tiempos del cólera',
        'Drama',
        1985,
        1
    ), -- Otro libro de Gabriel García Márquez
    ('La casa de los espíritus', 'Ficción', 1982, 2), -- Libro de Isabel Allende
    ('Paula', 'Autobiografía', 1994, 2), -- Otro libro de Isabel Allende
    ('La ciudad y los perros', 'Novela', 1963, 3);

-- Libro de Mario Vargas Llosa
SELECT
    Libros.ID AS LibroID, -- Selecciona el ID del libro.
    Libros.Titulo AS Titulo, -- Selecciona el título del libro.
    Autores.Nombre AS Autor -- Selecciona el nombre del autor correspondiente.
FROM
    Libros
    INNER JOIN Autores ON Libros.Autor_ID = Autores.ID;

-- Relaciona las tablas "Libros" y "Autores" mediante la clave foránea.
SELECT
    COUNT(Libros.ID) AS Cantidad_Libros, -- Cuenta los libros de cada autor.
    Autores.Nombre AS Autor -- Selecciona el nombre del autor.
FROM
    Libros
    INNER JOIN Autores ON Libros.Autor_ID = Autores.ID -- Relaciona "Libros" y "Autores".
GROUP BY
    Autores.Nombre;

-- Agrupa los resultados por el nombre del autor.
SELECT
    Autores.Nombre AS Autor, -- Selecciona el nombre del autor.
    Autores.Nacionalidad -- Selecciona la nacionalidad del autor.
FROM
    Autores
    LEFT JOIN Libros ON Autores.ID = Libros.Autor_ID -- Relaciona "Autores" y "Libros".
WHERE
    Libros.ID IS NULL;

-- Filtra autores que no tienen libros asociados.
SELECT
    Libros.Titulo AS Libro, -- Selecciona el título del libro.
    Libros.Año_Publicacion AS Año, -- Selecciona el año de publicación.
    Autores.Nombre AS Autor -- Selecciona el nombre del autor.
FROM
    Libros
    INNER JOIN Autores ON Libros.Autor_ID = Autores.ID -- Relaciona "Libros" y "Autores".
WHERE
    Libros.Año_Publicacion < 1980;

-- Filtra libros publicados antes de 1980.
UPDATE Libros
SET
    Genero = 'Ficción' -- Cambia el género del libro a "Ficción".
WHERE
    Titulo = 'Paula';

-- Identifica el libro por su título.
DELETE FROM Autores
WHERE
    ID = 3;

-- Identifica el autor por su ID.
BEGIN TRANSACTION;

DELETE FROM Autores
WHERE
    ID = 3;

COMMIT;

-- Confirma los cambios.
ROLLBACK;

-- Revierte los cambios si ocurre un error.