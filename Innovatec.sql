-- 1. CREAR BASE DE DATOS
CREATE DATABASE TecnoOffice;
USE TecnoOffice;

-- 2. CREAR TABLA DEPARTAMENTOS
CREATE TABLE Departamentos (
    id_departamento INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(50) NOT NULL UNIQUE,
    ubicacion VARCHAR(50)
);

-- 3. CREAR TABLA PUESTOS
CREATE TABLE Puestos (
    id_puesto INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(50) NOT NULL UNIQUE,
    salario_base DECIMAL(10,2)
);

-- 4. CREAR TABLA EMPLEADOS
CREATE TABLE Empleados (
    id_empleado INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(100) NOT NULL,
    apellido VARCHAR(100) NOT NULL,
    correo VARCHAR(100) UNIQUE,
    telefono VARCHAR(15),
    id_departamento INT NULL,
    id_puesto INT NOT NULL,
    fecha_ingreso DATE NOT NULL,
    salario DECIMAL(10,2),
    FOREIGN KEY (id_departamento) REFERENCES Departamentos(id_departamento),
    FOREIGN KEY (id_puesto) REFERENCES Puestos(id_puesto)
);

-- =============================================
-- 5. INSERTAR DEPARTAMENTOS
-- =============================================
INSERT INTO Departamentos (nombre, ubicacion) VALUES
('Recursos Humanos', 'Piso 1'),
('Ventas', 'Piso 2'),
('Sistemas', 'Piso 3'),
('Contabilidad', 'Piso 2'),
('Compras', 'Piso 1'),
('Marketing', 'Piso 4'),
('Dirección', 'Piso 5');

-- =============================================
-- 6. INSERTAR PUESTOS
-- =============================================
INSERT INTO Puestos (nombre, salario_base) VALUES
('Gerente', 30000),
('Supervisor', 22000),
('Analista', 18000),
('Programador', 25000),
('Auxiliar', 12000),
('Vendedor', 15000),
('Contador', 24000);

-- =============================================
-- 7. INSERTAR 50 EMPLEADOS
-- =============================================
INSERT INTO Empleados 
(nombre, apellido, correo, telefono, fecha_ingreso, salario, id_departamento, id_puesto)
VALUES
('Adolfo', 'Pineda', 'adolfo.pineda@tecno.com', '5551000251', '2022-01-14', 28000, 3, 4),
('Belen', 'Aguirre', 'belen.aguirre@tecno.com', '5551000252', '2021-05-20', 32000, 7, 1),
('Camilo', 'Escudero', 'camilo.escudero@tecno.com', '5551000253', '2020-08-25', 19000, 3, 3),
('Dora', 'Ochoa', 'dora.ochoa@tecno.com', '5551000254', '2019-11-11', 23000, 2, 2),
('Erik', 'Bustamante', 'erik.bustamante@tecno.com', '5551000255', '2023-02-18', 13000, 1, 5),
('Flor', 'Cárdenas', 'flor.cardenas@tecno.com', '5551000256', '2022-06-22', 16000, 2, 6),
('Gilberto', 'Chávez', 'gilberto.chavez@tecno.com', '5551000257', '2021-10-03', 25000, 4, 7),
('Helena', 'Durán', 'helena.duran@tecno.com', '5551000258', '2023-01-09', 19000, 3, 3),
('Isaac', 'Espinoza', 'isaac.espinoza@tecno.com', '5551000259', '2020-12-01', 13000, 5, 5),
('Jacinta', 'Fonseca', 'jacinta.fonseca@tecno.com', '5551000260', '2022-09-15', 26000, 3, 4),
('Kenji', 'Guzmán', 'kenji.guzman@tecno.com', '5551000261', '2018-09-30', 31000, 7, 1),
('Leticia', 'Hurtado', 'leticia.hurtado@tecno.com', '5551000262', '2021-11-02', 16000, 6, 6),
('Mauricio', 'Ibarra', 'mauricio.ibarra@tecno.com', '5551000263', '2022-07-07', 23000, 2, 2),
('Nadia', 'Jaramillo', 'nadia.jaramillo@tecno.com', '5551000264', '2023-03-16', 19000, 3, 3),
('Omar', 'Klein', 'omar.klein@tecno.com', '5551000265', '2020-02-28', 25000, 4, 7),
('Patricia', 'Luna', 'patricia.luna@tecno.com', '5551000266', '2022-05-12', 13000, 1, 5),
('Quintín', 'Macías', 'quintin.macias@tecno.com', '5551000267', '2023-04-29', 16000, 2, 6),
('Ruth', 'Nieto', 'ruth.nieto@tecno.com', '5551000268', '2021-08-09', 26000, 3, 4),
('Salvador', 'Otero', 'salvador.otero@tecno.com', '5551000269', '2020-03-17', 19000, 5, 3),
('Teresita', 'Pardo', 'teresita.pardo@tecno.com', '5551000270', '2022-10-08', 32000, 7, 1),
('Ubaldo', 'Quezada', 'ubaldo.quezada@tecno.com', '5551000271', '2022-05-19', 23000, 2, 2),
('Valeria', 'Ramos', 'valeria.ramos@tecno.com', '5551000272', '2020-11-12', 16000, 6, 6),
('Wilfredo', 'Saavedra', 'wilfredo.saavedra@tecno.com', '5551000273', '2023-01-28', 26000, 3, 4),
('Xiomara', 'Tapia', 'xiomara.tapia@tecno.com', '5551000274', '2022-04-01', 32000, 7, 1),
('Yanira', 'Urrutia', 'yanira.urrutia@tecno.com', '5551000275', '2021-12-15', 13000, 1, 5),
('Zenón', 'Valdivia', 'zenon.valdivia@tecno.com', '5551000276', '2020-07-09', 25000, 4, 7),
('Abigail', 'Wong', 'abigail.wong@tecno.com', '5551000277', '2023-06-21', 19000, 3, 3),
('Boris', 'Ximénez', 'boris.ximenez@tecno.com', '5551000278', '2022-08-04', 23000, 2, 2),
('Carola', 'Yáñez', 'carola.yanez@tecno.com', '5551000279', '2021-04-17', 26000, 3, 4),
('Damián', 'Zambrano', 'damian.zambrano@tecno.com', '5551000280', '2020-12-20', 16000, 6, 6),
('Elena', 'Aguilera', 'elena.aguilera@tecno.com', '5551000281', '2022-06-14', 13000, 1, 5),
('Francisco', 'Barrera', 'francisco.barrera@tecno.com', '5551000282', '2019-09-05', 32000, 7, 1),
('Graciela', 'Calderón', 'graciela.calderon@tecno.com', '5551000283', '2023-02-25', 19000, 3, 3),
('Hugo', 'Cordero', 'hugo.cordero@tecno.com', '5551000284', '2022-03-07', 25000, 4, 7),
('Irene', 'Delgado', 'irene.delgado@tecno.com', '5551000285', '2021-07-19', 23000, 2, 2),
('Javier', 'Estrada', 'javier.estrada@tecno.com', '5551000286', '2020-10-30', 16000, 6, 6),
('Karen', 'Fuentes', 'karen.fuentes@tecno.com', '5551000287', '2023-05-06', 26000, 3, 4),
('Luis', 'Gómez', 'luis.gomez2@tecno.com', '5551000288', '2022-09-12', 13000, 1, 5),
('Marina', 'Hernández', 'marina.hernandez@tecno.com', '5551000289', '2018-12-14', 32000, 7, 1),
('Nicolás', 'Ibáñez', 'nicolas.ibanez@tecno.com', '5551000290', '2021-06-09', 19000, 3, 3),
('Olga', 'Jiménez', 'olga.jimenez@tecno.com', '5551000291', '2022-11-18', 25000, 4, 7),
('Pablo', 'Lara', 'pablo.lara@tecno.com', '5551000292', '2020-08-07', 23000, 2, 2),
('Rosa', 'Mendoza', 'rosa.mendoza@tecno.com', '5551000293', '2023-07-11', 16000, 6, 6),
('Sergio', 'Núñez', 'sergio.nunez@tecno.com', '5551000294', '2022-01-22', 26000, 3, 4),
('Tatiana', 'Ortiz', 'tatiana.ortiz@tecno.com', '5551000295', '2019-10-18', 13000, 1, 5),
('Ulises', 'Pérez', 'ulises.perez@tecno.com', '5551000296', '2021-03-03', 32000, 7, 1),
('Viviana', 'Quintana', 'viviana.quintana@tecno.com', '5551000297', '2022-07-26', 19000, 3, 3),
('Walter', 'Reyes', 'walter.reyes@tecno.com', '5551000298', '2020-06-05', 23000, 2, 2),
('Xenia', 'Soto', 'xenia.soto@tecno.com', '5551000299', '2023-01-14', 25000, 4, 7),
('Yesenia', 'Torres', 'yesenia.torres@tecno.com', '5551000300', '2022-04-30', 16000, 6, 6);

-- =============================================
-- 8. VERIFICACIONES FINALES
-- =============================================
SELECT COUNT(*) AS total_empleados FROM Empleados;  -- 50
SELECT * FROM Empleados LIMIT 10;