CREATE DATABASE datosgenerales
USE datosgenerales

drop table if exists Sucursal
drop table if exists datospersonales
drop table if exists datosempleado


-- 1. Crear la tabla sucursal primero (ya que datosempleado depende de ella)
CREATE TABLE sucursal (
    ID INT PRIMARY KEY IDENTITY(1,1),
    Nombre_sucursal VARCHAR(100) NOT NULL,
    Ciudad VARCHAR(100),
    Direccion VARCHAR(255),
    Cantidad_ventas_anuales DECIMAL(18, 2)
);

-- 2. Crear la tabla datospersonales
CREATE TABLE datospersonales (
    ID INT PRIMARY KEY IDENTITY(1,1),
    Nombre VARCHAR(100) NOT NULL,
    Direccion VARCHAR(255),
    Ciudad VARCHAR(100),
    Num_Telefono VARCHAR(20),
    Email VARCHAR(150),
    Genero VARCHAR(20)
);

-- 3. Crear la tabla datosempleado con sus llaves foráneas
CREATE TABLE datosempleado (
    Codigo INT PRIMARY KEY IDENTITY(1,1),
    FK_datospersonales INT,
    FK_Sucursal INT,
    Cargo VARCHAR(100),
    Horario VARCHAR(50),
    Salario DECIMAL(18, 2),
    
    -- Relaciones (Foreign Keys)
    CONSTRAINT FK_Empleado_DatosPersonales FOREIGN KEY (FK_datospersonales) 
        REFERENCES datospersonales(ID),
    CONSTRAINT FK_Empleado_Sucursal FOREIGN KEY (FK_Sucursal) 
        REFERENCES Sucursal(ID)
);


INSERT INTO sucursal (Nombre_sucursal, Ciudad, Direccion, Cantidad_ventas_anuales) VALUES
('Sucursal Norte', 'CDMX', 'Av. Insurgentes 123', 1500000.00),
('Sucursal Sur', 'CDMX', 'Calzada de Tlalpan 456', 1200000.50),
('Sucursal Poniente', 'Zapopan', 'Av. Vallarta 789', 980000.00),
('Sucursal Oriente', 'Guadalajara', 'Calle Juárez 101', 850000.75),
('Sucursal Centro', 'Monterrey', 'Av. Constitución 202', 2100000.00),
('Sucursal Santa Fe', 'CDMX', 'Vasco de Quiroga 303', 3000000.00),
('Sucursal Angelópolis', 'Puebla', 'Vía Atlixcáyotl 404', 1750000.00),
('Sucursal Marina', 'Puerto Vallarta', 'Paseo de la Marina 505', 920000.00),
('Sucursal Industrial', 'Querétaro', 'Parque Industrial 606', 1340000.20),
('Sucursal Aeropuerto', 'Cancún', 'Carretera Fed. 307', 2500000.00),
('Sucursal Campestre', 'León', 'Blvd. Campestre 808', 1100000.00),
('Sucursal Polanco', 'CDMX', 'Masaryk 909', 4200000.00),
('Sucursal Miravalle', 'Monterrey', 'Calzada del Valle 111', 1900000.00),
('Sucursal Américas', 'Veracruz', 'Av. Las Américas 212', 780000.00),
('Sucursal Centro Histórico', 'Mérida', 'Calle 60', 950000.00),
('Sucursal Interlomas', 'Edomex', 'Palma Criolla 313', 2800000.00),
('Sucursal Cumbres', 'Monterrey', 'Av. Paseo de los Leones', 1450000.00),
('Sucursal Providencia', 'Guadalajara', 'Av. Terranova 414', 1600000.00),
('Sucursal Satélite', 'Edomex', 'Circuito Centro Comercial', 1850000.00),
('Sucursal Bosques', 'CDMX', 'Bosques de las Lomas', 3100000.00);

INSERT INTO datospersonales (Nombre, Direccion, Ciudad, Num_Telefono, Email, Genero) VALUES
('Juan Pérez', 'Calle Falsa 123', 'CDMX', '5551234567', 'juan.perez@email.com', 'Masculino'),
('María García', 'Av. Reforma 10', 'CDMX', '5559876543', 'maria.g@email.com', 'Femenino'),
('Carlos López', 'Calle Luna 5', 'Monterrey', '8112345678', 'carlos.l@email.com', 'Masculino'),
('Ana Martínez', 'Privada Sol 8', 'Guadalajara', '3331112223', 'ana.mtz@email.com', 'Femenino'),
('Luis Rodríguez', 'Av. Patria 20', 'Zapopan', '3334445556', 'luis.r@email.com', 'Masculino'),
('Elena Sosa', 'Calle 50 x 60', 'Mérida', '9991234567', 'elena.sosa@email.com', 'Femenino'),
('Roberto Gómez', 'Blvd. Hidalgo 100', 'Puebla', '2227654321', 'roberto.g@email.com', 'Masculino'),
('Lucía Fernández', 'Av. Tulum 2', 'Cancún', '9981122334', 'lucia.f@email.com', 'Femenino'),
('Jorge Hernández', 'Calle 16 de Sept.', 'Querétaro', '4429988776', 'jorge.h@email.com', 'Masculino'),
('Sofía Castro', 'Av. Universidad 50', 'CDMX', '5556677889', 'sofia.c@email.com', 'Femenino'),
('Miguel Ángel', 'Calle Madero 1', 'León', '4771236547', 'miguel.a@email.com', 'Masculino'),
('Laura Morales', 'Av. Vallarta 500', 'Guadalajara', '3339871234', 'laura.m@email.com', 'Femenino'),
('Pedro Sánchez', 'Calle Pino 12', 'Monterrey', '8118877665', 'pedro.s@email.com', 'Masculino'),
('Claudia Ruiz', 'Av. Juárez 80', 'Puebla', '2221113335', 'claudia.r@email.com', 'Femenino'),
('Fernando Díaz', 'Calle Roble 4', 'CDMX', '5554433221', 'fer.diaz@email.com', 'Masculino'),
('Gabriela Ortiz', 'Paseo de las Aves', 'Edomex', '5550099887', 'gaby.o@email.com', 'Femenino'),
('Ricardo Silva', 'Calle 5 de Mayo', 'Veracruz', '2299887766', 'ricardo.s@email.com', 'Masculino'),
('Patricia Vega', 'Av. Las Palmas', 'CDMX', '5552233445', 'paty.vega@email.com', 'Femenino'),
('Héctor Luna', 'Calle del Río 9', 'Zapopan', '3336655443', 'hector.l@email.com', 'Masculino'),
('Mónica Reyes', 'Av. Industrial 15', 'Querétaro', '4421122334', 'monica.r@email.com', 'Femenino');


INSERT INTO datosempleado (FK_datospersonales, FK_Sucursal, Cargo, Horario, Salario) VALUES
(1, 1, 'Gerente', '09:00 - 18:00', 35000.00),
(2, 2, 'Vendedor', '10:00 - 19:00', 12000.50),
(3, 5, 'Cajero', '08:00 - 16:00', 9500.00),
(4, 4, 'Vendedor', '10:00 - 19:00', 11800.00),
(5, 3, 'Supervisor', '09:00 - 18:00', 18000.00),
(6, 15, 'Gerente', '09:00 - 18:00', 32000.00),
(7, 7, 'Almacenista', '07:00 - 15:00', 8500.00),
(8, 10, 'Recepcionista', '09:00 - 17:00', 10500.00),
(9, 9, 'Vendedor', '11:00 - 20:00', 12500.00),
(10, 6, 'Analista', '09:00 - 18:00', 22000.00),
(11, 11, 'Vendedor', '10:00 - 19:00', 11500.00),
(12, 18, 'Cajero', '12:00 - 20:00', 9800.00),
(13, 13, 'Gerente', '09:00 - 18:00', 38000.00),
(14, 14, 'Vendedor', '10:00 - 19:00', 11000.00),
(15, 12, 'Seguridad', '22:00 - 06:00', 9000.00),
(16, 16, 'Subgerente', '09:00 - 18:00', 25000.00),
(17, 14, 'Cajero', '08:00 - 16:00', 9500.00),
(18, 20, 'Directora', '09:00 - 18:00', 55000.00),
(19, 8, 'Mantenimiento', '07:00 - 15:00', 8000.00),
(20, 19, 'Vendedor', '10:00 - 19:00', 12000.00);


SELECT p.Nombre, e.Cargo, s.Nombre_sucursal, e.Salario
FROM datosempleado e
JOIN datospersonales p ON e.FK_datospersonales = p.ID
JOIN Sucursal s ON e.FK_Sucursal = s.ID;