

-- TipoUsuario
INSERT INTO TipoUsuario (NombreTipo) VALUES ('Administrador'), ('Estudiante');

-- Usuario
INSERT INTO Usuario (NombreUsuario, Contrasenia, TipoUsuarioId, Activo) VALUES
('admin', 'admin123', 1, TRUE),
('alumno1', 'alumno123', 2, TRUE);

-- Carrera
INSERT INTO Carrera (Nombre, Clave, CreatedBy) VALUES
('Ingeniería en Sistemas', 'ISIC', 1),
('Administración', 'ADM', 1);

-- EstatusEst
INSERT INTO EstatusEst (NombreEstatus) VALUES
('Activo'), ('Baja');

-- Periodo
INSERT INTO Periodo (NombrePeriodo) VALUES
('2024A'), ('2024B');

-- Estudiante
INSERT INTO Estudiante (Nombre, APaterno, AMaterno, AnioIngreso, PeriodoId, Celular, Email, EstatusEstId, FechaNacimiento, UsuarioId, CreadoPor, CarreraId, clave)
VALUES
('Juan', 'Pérez', 'López', 2024, 1, '5551234567', 'juanp@example.com', 1, '2005-01-01', 2, 1, 1, '2024A001'),
('Ana', 'García', 'Martínez', 2024, 2, '5559876543', 'anagm@example.com', 1, '2005-02-02', 2, 1, 2, '2024B002');

-- Materia
INSERT INTO Materia (Nombre, Clave, CarreraId) VALUES
('Matemáticas', 'MAT101', 1),
('Contabilidad', 'CON201', 2);

-- Profesor
INSERT INTO Profesor (Nombre, APaterno, AMaterno, RFC, CarreraId, UsuarioId) VALUES
('Carlos', 'Ramírez', 'Soto', 'CARL123456', 1, 1),
('Lucía', 'Hernández', 'Vega', 'LUCI654321', 2, 1);

-- EstatusClase
INSERT INTO EstatusClase (NombreEstatus) VALUES
('Activa'), ('Finalizada');

-- Clase
INSERT INTO Clase (Nombre, Horario, MateriaId, ProfesorId, Semestre, PeriodoId, EstatusClaseId)
VALUES
('Álgebra', 'Lun-Mie 8:00-10:00', 1, 1, 1, 1, 1),
('Finanzas', 'Mar-Jue 10:00-12:00', 2, 2, 2, 2, 1);

-- TipoActividad
INSERT INTO TipoActividad (Nombre, Observaciones) VALUES
('Examen', 'Examen parcial'),
('Tarea', 'Tarea semanal');

-- Actividad
INSERT INTO Actividad (Nombre, Descripcion, ClaseId, ValorMaximo, TipoActividadId)
VALUES
('Examen 1', 'Primer examen', 1, 100, 1),
('Tarea 1', 'Primera tarea', 2, 10, 2);

-- EstudianteActividad
INSERT INTO EstudianteActividad (Calificacion, EstudianteId, ClaseId, ActividadId)
VALUES
(95, 1, 1, 1),
(8, 2, 2, 2);

-- Version
INSERT INTO Version (Descripcion, VersionBD, VersionSistema, Notas)
VALUES
('v1.0', '1.0', 1, 'Versión inicial'),
('v1.1', '1.1', 2, 'Actualización menor');

-- Domicilio
INSERT INTO Domicilio (Direccion, EstudianteId)
VALUES
('Calle 1 #123', 1),
('Avenida 2 #456', 2);

-- EstudianteClase
INSERT INTO EstudianteClase (EstudianteId, ClaseId)
VALUES
(1, 1),
(2, 2);

-- EstudianteEvaluacion
INSERT INTO EstudianteEvaluacion (EstudianteId, ClaseId, UnidadI, UnidadII, UnidadIII, PuntosExtras)
VALUES
(1, 1, 9.0, 8.5, 10.0, 2),
(2, 2, 8.0, 7.5, 9.0, 1);

