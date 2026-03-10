/*
    2 hospitals
    3 clinics
    4 units per hospital
    11 hospital employees
    9 clinic employees
    2 consulting rooms per clinic
    4 hospital rooms per hospital
    7 services
    15 patients
    10 medications
    20 appointments
    20 invoices
*/

INSERT INTO Center 
VALUES 
    (1,'Madrid Centro'),
    (2,'Madrid Rivas'),
    (3,'Madrid Torrelodones'),
    (4,'Madrid Río'),
    (5,'Madrid Moraleja');

INSERT INTO Hospital 
VALUES 
    (1),
    (2);

INSERT INTO Clinic 
VALUES 
    (3),
    (4),
    (5);

INSERT INTO Unit
VALUES
    (1, 'Cardiología', 2, 1),
    (2, 'Pediatría', 1, 1),
    (3, 'Dermatología', 1, 1),
    (4, 'Ginecología', 2, 1),
    (5, 'Traumatología', 3, 2),
    (6, 'Neurología', 4, 2),
    (7, 'Oncología', 3, 2),
    (8, 'Urología', 4, 2);

INSERT INTO Employee
VALUES
    (1, '1234567Z', 'María López Martínez', '1998-03-15', '600123456', 'marialopez98@gmail.com', 2500.00, 'ES7620770024003102575766', 1),
    (2, '2345678Y', 'Carlos García Fernández', '1985-07-22', '600234567', 'carlosgarcia85@gmail.com', 3000.00, 'ES7620770024003102575767', 1),
    (3, '3456789X', 'Ana Sánchez Rodríguez', '1990-11-30', '600345678', 'anasanchez90@gmail.com', 2800.00, 'ES7620770024003102575768', 1),
    (4, '4567890W', 'Luis Álvarez Gómez', '1988-05-10', '600456789', 'luisalvarez88@gmail.com', 3200.00, 'ES7620770024003102575769', 1),
    (5, '5678901V', 'Sofía Menéndez López', '1992-09-25', '600567890', 'sofiamendez92@gmail.com', 2900.00, 'ES7620770024003102575770', 1),
    (6, '6789012U', 'David Montes Piñero', '1980-12-05', '600678901', 'davidmontes80@gmail.com', 3100.00, 'ES7620770024003102575771', 1),
    (7, '7890123T', 'Laura Gómez Herrero', '1995-04-18', '600789012', 'lauragomez95@gmail.com', 2700.00, 'ES7620770024003102575772', 2),
    (8, '8901234S', 'Javier Pérez Moreno', '1983-08-30', '600890123', 'javierperez83@gmail.com', 3000.00, 'ES7620770024003102575773', 2),
    (9, '9012345R', 'Marta Ruiz Sánchez', '1991-02-14', '600901234', 'martaruiz91@gmail.com', 2900.00, 'ES7620770024003102575774', 2),
    (10, '0123456Q', 'Ángel Fernández Díaz', '1987-06-20', '600012345', 'angelfernandez87@gmail.com', 3100.00, 'ES7620770024003102575775', 2),
    (11, '1234567P', 'Isabel Torres García', '1993-10-05', '600123456', 'isabeltorres93@gmail.com', 2800.00, 'ES7620770024003102575776', 2),
    (12, '2345678O', 'Miguel Sánchez López', '1989-01-25', '600234567', 'miguelsanchez89@gmail.com', 3000.00, 'ES7620770024003102575777', 3),
    (13, '3456789N', 'Sara Fernández Gómez', '1994-07-12', '600345678', 'sarafernandez94@gmail.com', 2900.00, 'ES7620770024003102575778', 3),
    (14, '4567890M', 'Pablo Vega Ruiz', '1986-11-03', '600456789', 'pablovega86@gmail.com', 3100.00, 'ES7620770024003102575779', 3),
    (15, '5678901L', 'Lucía Gómez Sánchez', '1992-03-28', '600567890', 'luciagomez92@gmail.com', 2900.00, 'ES7620770024003102575780', 4),
    (16, '6789012K', 'Jorge Jiménez Álvarez', '1984-09-17', '600678901', 'jorgejimenez84@gmail.com', 3100.00, 'ES7620770024003102575781', 4),
    (17, '7890123J', 'Elena García Martínez', '1990-05-03', '600789012', 'elenagarcia90@gmail.com', 3000.00, 'ES7620770024003102575782', 4),
    (18, '8901234I', 'Alberto Sánchez Gómez', '1988-12-15', '600890123', 'albertosanchez88@gmail.com', 3000.00, 'ES7620770024003102575783', 5),
    (19, '9012345H', 'Marta Alonso López', '1991-02-14', '600901234', 'martaalonso91@gmail.com', 2900.00, 'ES7620770024003102575784', 5),
    (20, '0123456G', 'Ángel Martínez Rodríguez', '1987-06-20', '600012345', 'angelmartinez87@gmail.com', 3100.00, 'ES7620770024003102575785', 5);

INSERT INTO RoomType
VALUES
    (1, 'Consulta'),
    (2, 'Habitación'),
    (3, 'Quirófano');

INSERT INTO HospitalRoom 
VALUES
    (1, 101, 3, 1),
    (2, 102, 3, 5),
    (3, 201, 1, 2),
    (4, 202, 1, 3),
    (5, 301, 1, 8),
    (6, 302, 1, 4),
    (7, 401, 2, 7),
    (8, 402, 2, 6);

INSERT INTO HospitalEmployee
VALUES
    (1, 'medicine', 'morning', 1),
    (2, 'nursing', 'afternoon', 2),
    (3, 'medicine', 'morning', 3),
    (4, 'auxiliary', 'afternoon', 4),
    (5, 'technician', 'morning', 5),
    (6, 'medicine', 'afternoon', 1),
    (7, 'nursing', 'morning', 2),
    (8, 'medicine', 'afternoon', 3),
    (9, 'auxiliary', 'morning', 4),
    (10, 'technician', 'afternoon', 5),
    (11, 'medicine', 'morning', 1);

INSERT INTO ConsultingRoom
VALUES
    (1, 101, 'medicine', 3),
    (2, 102, 'nursing', 3),
    (3, 201, 'medicine', 4),
    (4, 202, 'nursing', 4),
    (5, 301, 'medicine', 5),
    (6, 302, 'nursing', 5);

INSERT INTO ClinicEmployee
VALUES
    (12, 'nursing', 2),
    (13, 'medicine', 3),
    (14, 'nursing', 4),
    (15, 'medicine', 5),
    (16, 'medicine', 1),
    (17, 'nursing', 2),
    (18, 'medicine', 3),
    (19, 'nursing', 4),
    (20, 'medicine', 5);


INSERT INTO Service
VALUES
    (1, 'Consulta General', 90.00, 30),
    (2, 'Análisis de Sangre', 50.00, 15),
    (3, 'Radiografía', 120.00, 45),
    (4, 'Ecografía', 150.00, 60),
    (5, 'Vacunación', 30.00, 10),
    (6, 'Revisión Pediátrica', 80.00, 25),
    (7, 'Consulta de Dermatología', 100.00, 40);

INSERT INTO Patient
VALUES 
    (1,'12345678A','Elena García','1990-05-03',NULL,'penicilina'),
    (2,'23456789B','Jorge Jiménez','1984-09-17',NULL,NULL),
    (3,'34567890C','Lucía Gómez','1992-03-28',NULL,NULL),
    (4,'45678901D','Pablo Vega','1986-11-03',NULL,NULL),
    (5,'56789012E','Sara Fernández','1994-07-12',NULL,NULL),
    (6,'67890123F','Miguel Sánchez','1989-01-25',NULL,NULL),
    (7,'78901234G','Isabel Torres','1993-10-05',NULL,NULL),
    (8,'89012345H','Ángel Fernández','1987-06-20',NULL,'metamizol'),
    (9,'90123456I','Marta Ruiz','1991-02-14',NULL,NULL),
    (10,'01234567J','Javier Pérez','1983-08-30','HTA',NULL),
    (11,'12345678K','Laura Gómez','1995-04-18',NULL,NULL),
    (12,'23456789L','David Montes','1980-12-05',NULL,'látex'),
    (13,'34567890M','Sofía Menéndez','1992-09-25',NULL,NULL),
    (14,'45678901N','Luis Álvarez','1988-05-10','diabetes mellitus tipo II',NULL),
    (15,'56789012O','Ana Sánchez','1990-11-30','artrosis',NULL);

INSERT INTO Medication
VALUES
    (1, 1, 'Paracetamol', 2000, 0.20, 2.50),
    (2, 1, 'Ibuprofeno', 1200, 0.15, 3.00),
    (3, 2, 'Amoxicilina', 500, 0.30, 10.00),
    (4, 2, 'Metamizol', 1000, 0.25, 5.00),
    (5, 3, 'Loratadina', 10, 0.10, 8.00),
    (6, 3, 'Omeprazol', 20, 0.40, 12.00),
    (7, 4, 'Simvastatina', 40, 0.35, 15.00),
    (8, 4, 'Aspirina', 100, 0.05, 2.00),
    (9, 5, 'Ciprofloxacino', 250, 0.50, 20.00),
    (10, 5, 'Dexametasona', 4, 0.45, 18.00);

INSERT INTO Appointment
VALUES
    (1, '2026-03-01 10:00:00', 1, 1, 1),
    (2, '2026-03-01 11:00:00', 2, 1, 2),
    (3, '2026-03-01 12:00:00', 3, 1, 3),
    (4, '2026-03-01 13:00:00', 4, 1, 4),
    (5, '2026-03-01 14:00:00', 5, 1, 5),
    (6, '2026-03-02 10:00:00', 6, 2, 11),
    (7, '2026-03-02 11:00:00', 7, 2, 7),
    (8, '2026-03-02 12:00:00', 8, 2, 8),
    (9, '2026-03-02 13:00:00', 9, 2, 9),
    (10, '2026-03-02 14:00:00', 10, 2, 10),
    (11, '2026-03-03 10:00:00', 11, 3, 12),
    (12, '2026-03-03 11:00:00', 12, 3, 13),
    (13, '2026-03-03 12:00:00', 13, 3, 14),
    (14, '2026-03-03 13:00:00', 14, 4, 15),
    (15, '2026-03-03 14:00:00', 15, 4, 16),
    (16, '2026-03-04 10:00:00', 1, 5, 18),
    (17, '2026-03-04 11:00:00', 2, 5, 18),
    (18, '2026-03-04 12:00:00', 3, 5, 19),
    (19, '2026-03-04 13:00:00', 4, 5, 20),
    (20, '2026-03-04 14:00:00', 5, 5, 20);

INSERT INTO Invoice
VALUES
    (1, 1, 120.00, '2026-03-01', '2026-03-15', 'ES7620770024003102575766'),
    (2, 2, 150.00, '2026-03-01', '2026-03-15', 'ES7620770024003102575767'),
    (3, 3, 80.00, '2026-03-01', '2026-03-15', 'ES7620770024003102575768'),
    (4, 4, 200.00, '2026-03-01', '2026-03-15', 'ES7620770024003102575769'),
    (5, 5, 50.00, '2026-03-01', '2026-03-15', 'ES7620770024003102575770'),
    (6, 6, 90.00, '2026-03-02', '2026-03-16', 'ES7620770024003102575771'),
    (7, 7, 120.00, '2026-03-02', '2026-03-16', 'ES7620770024003102575772'),
    (8, 8, 60.00, '2026-03-02', '2026-03-16', 'ES7620770024003102575773'),
    (9, 9, 180.00, '2026-03-02', '2026-03-16', 'ES7620770024003102575774'),
    (10, 10, 70.00, '2026-03-02', '2026-03-16', 'ES7620770024003102575775'),
    (11, 11, 110.00, '2026-03-03', '2026-03-17', 'ES7620770024003102575776'),
    (12, 12, 130.00, '2026-03-03', '2026-03-17', 'ES7620770024003102575777'),
    (13, 13, 90.00, '2026-03-03', '2026-03-17', 'ES7620770024003102575778'),
    (14, 14, 160.00, '2026-03-04', '2026-03-18', 'ES7620770024003102575779'),
    (15, 15, 140.00, '2026-03-04', '2026-03-18', 'ES7620770024003102575780'),
    (16, 16, 100.00, '2026-03-04', '2026-03-18', 'ES7620770024003102575781'),
    (17, 17, 120.00, '2026-03-04', '2026-03-18', 'ES7620770024003102575782'),
    (18, 18, 80.00, '2026-03-04', '2026-03-18', 'ES7620770024003102575783'),
    (19, 19, 150.00, '2026-03-04', '2026-03-18', 'ES7620770024003102575784'),
    (20, 20, 90.00, '2026-03-04', '2026-03-18', 'ES7620770024003102575785');