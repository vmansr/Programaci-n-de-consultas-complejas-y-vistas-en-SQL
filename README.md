# Laboratorio de SQL: Creación, Consulta y Manejo de Bases de Datos

## Descripción del Proyecto
Este proyecto es el desarrollo de un laboratorio de SQL que permite poner en práctica el diseño, manipulación y consulta de bases de datos relacionales en MySQL. El propósito es consolidar habilidades esenciales en SQL mediante la creación de una estructura de base de datos de ejemplo para la gestión de pedidos, clientes y comerciales, realizando operaciones básicas y avanzadas de consulta y generación de vistas. Este archivo `README.md` documenta cada funcionalidad implementada en el laboratorio.

## Funcionalidades Realizadas

### 1. Creación de Tablas con Restricciones
Se diseñaron y crearon tres tablas principales: `CLIENTE`, `COMERCIAL` y `PEDIDO`, con restricciones que garantizan la integridad referencial de los datos:
- **CLIENTE** contiene información personal y categorización de cada cliente.
- **COMERCIAL** almacena datos de cada comercial y su comisión.
- **PEDIDO** registra los pedidos realizados por los clientes y gestionados por los comerciales.

En cada tabla, se añadieron claves primarias (`PRIMARY KEY`) y claves foráneas (`FOREIGN KEY`) para asegurar la integridad de las relaciones. Las claves foráneas en la tabla `PEDIDO` conectan adecuadamente los pedidos con los clientes y comerciales responsables.

### 2. Inserción de Datos
Se incluyeron sentencias `INSERT INTO` para agregar datos de ejemplo en cada tabla:
- **CLIENTE**: Agregó información de 10 clientes ficticios, incluyendo nombres, apellidos, ciudad y categoría.
- **COMERCIAL**: Incluyó registros de 8 comerciales con su nombre, apellido y comisión.
- **PEDIDO**: Registró pedidos con montos y fechas específicas, vinculados a clientes y comerciales mediante los identificadores correspondientes.

### 3. Consultas SQL Básicas y Avanzadas
Se realizaron diversas consultas para obtener y filtrar datos, incluyendo:
- **Listar todos los pedidos**: Ordenados por fecha, de los más recientes a los más antiguos.
- **Pedidos con cantidad total entre 300 y 600**: Filtrados y ordenados por fecha ascendente.
- **Clientes con segundo apellido `NULL`**: Filtrados y ordenados alfabéticamente.
- **Clientes que han realizado pedidos**: Usando `DISTINCT` para eliminar duplicados y ordenar alfabéticamente.
- **Comerciales que atendieron a un cliente específico**: Consulta que muestra comerciales únicos que participaron en pedidos de "María Santana Moreno".

### 4. Creación de Vistas
Se creó una vista llamada `ResumenPedidos` que integra y resume la información clave de las tres tablas (`PEDIDO`, `CLIENTE`, `COMERCIAL`). La vista facilita la consulta rápida de pedidos, clientes y comerciales en un solo formato tabular.

### 5. Consultas de Agregación en la Vista `ResumenPedidos`
A partir de la vista `ResumenPedidos`, se generaron consultas de agregación para realizar análisis sobre los pedidos y el desempeño de cada comercial:
- **Total de ventas por comercial**: Muestra el total de ventas realizadas por cada comercial, ordenado en orden descendente.
- **Promedio de ventas y número de pedidos**: Calcula el promedio de ventas y el número de pedidos por cada comercial, también ordenado por el total de ventas.

## Requisitos
- **MySQL** o **Oracle 11g** para ejecutar y probar las consultas.
- **SQL Developer** o cualquier IDE SQL de tu elección para escribir y ejecutar los comandos.

## Instalación y Configuración
1. **Clonar el repositorio**:
   ```bash
   git clone https://github.com/tuusuario/laboratorio-sql.git
   cd laboratorio-sql

### Notas Adicionales
- Constraints: Se usaron restricciones para asegurar la integridad referencial.
- Manejo de Errores: Se incluyeron ejemplos de entradas erróneas para observar cómo el sistema SQL maneja las violaciones de restricciones.

### Conclusión
Este laboratorio representa un enfoque estructurado para diseñar y gestionar bases de datos SQL. Al desarrollar cada sección, se obtienen conocimientos prácticos en manipulación de datos, integridad referencial y optimización de consultas en bases de datos relacionales.
