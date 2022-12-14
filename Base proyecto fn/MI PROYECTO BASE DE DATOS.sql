/*Nombre:Naidely D. Amador Lara  Matricula:21-MIIT-1-035  Sección:0541 */
 
 USE [master]
GO
/****** Object:  Database [Softecnología]    Script Date: 14/12/2022 11:58:40 ******/
CREATE DATABASE [Softecnología]
CREATE TABLE [dbo].[Calificaciones](
	[CalificacionId] [int] NOT NULL,
	[MateriaId] [int] NULL,
	[Asistencia] [char](15) NULL,
	[TrabajoPractico] [char](15) NULL,
	[ExamenParcial] [char](15) NULL,
	[ExamenFinal] [char](15) NULL,
	[ProfesorId] [int] NULL,
	[Fecha] [datetime] NULL,
 CONSTRAINT [PK_Calificaciones] PRIMARY KEY CLUSTERED 
(
	[CalificacionId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Cursos]    Script Date: 14/12/2022 11:58:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Cursos](
	[CursoId] [int] NOT NULL,
	[Nombre] [varchar](30) NULL,
	[Horario] [varchar](20) NULL,
	[MateriaId] [int] NULL,
	[MaestroId] [int] NULL,
	[Salón] [int] NULL,
	[EstudianteId] [int] NULL,
	[ProfesorId] [int] NULL,
	[MateriasId] [int] NULL,
	[AsignaturaId] [int] NULL,
 CONSTRAINT [PK_Cursos] PRIMARY KEY CLUSTERED 
(
	[CursoId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Director]    Script Date: 14/12/2022 11:58:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Director](
	[DirectorId] [int] NOT NULL,
	[NombrePaterno] [varchar](50) NULL,
	[NombreMaterno] [varchar](50) NULL,
	[ApellidoPaterno] [varchar](50) NULL,
	[ApellidoMaterno] [varchar](50) NULL,
	[Cedula] [char](15) NULL,
	[Telefono] [char](15) NULL,
	[Direccion] [varchar](250) NULL,
	[Email] [varchar](50) NULL,
 CONSTRAINT [PK_Director] PRIMARY KEY CLUSTERED 
(
	[DirectorId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Estudiantes]    Script Date: 14/12/2022 11:58:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Estudiantes](
	[EstudianteId] [int] NOT NULL,
	[NombreMaterno] [varchar](50) NULL,
	[NombrePaterno] [varchar](50) NULL,
	[ApellidoMaterno] [varchar](50) NULL,
	[ApellidoPaterno] [varchar](50) NULL,
	[Matricula] [varchar](15) NULL,
	[CursoId] [int] NULL,
	[MateriaId] [int] NULL,
	[FechaNacimiento] [varchar](50) NULL,
	[Sexo] [char](1) NULL,
	[Dirección] [varchar](250) NULL,
	[Email] [varchar](50) NULL,
 CONSTRAINT [PK_Estudiantes] PRIMARY KEY CLUSTERED 
(
	[EstudianteId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Horario]    Script Date: 14/12/2022 11:58:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Horario](
	[HorarioId] [datetime] NULL,
	[MateriaId] [int] NULL,
	[EstudianteId] [int] NULL,
	[ProfesorId] [int] NULL,
	[Dia] [varchar](30) NULL,
	[Hora] [datetime] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Materias]    Script Date: 14/12/2022 11:58:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Materias](
	[MateriasId] [int] NOT NULL,
	[Nombre] [varchar](50) NULL,
	[CursoId] [int] NULL,
	[ProfesorId] [int] NULL,
	[EstudiantesId] [int] NULL,
	[HorarioId] [int] NULL,
	[Dias] [varchar](30) NULL,
	[Inicio] [char](10) NULL,
	[Fin] [char](10) NULL,
 CONSTRAINT [PK_Materias] PRIMARY KEY CLUSTERED 
(
	[MateriasId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Profesores]    Script Date: 14/12/2022 11:58:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Profesores](
	[ProfesorId] [int] NOT NULL,
	[NombreMaterno] [varchar](50) NULL,
	[NombrePaterno] [varchar](50) NULL,
	[Edad] [char](10) NULL,
	[Sexo] [char](1) NULL,
	[Cedula] [char](15) NULL,
	[Dirección] [varchar](250) NULL,
	[Email] [varchar](30) NULL,
	[Telefono] [varchar](13) NULL,
	[MateriaId] [int] NULL,
 CONSTRAINT [PK_Profesores] PRIMARY KEY CLUSTERED 
(
	[ProfesorId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[Director] ([DirectorId], [NombrePaterno], [NombreMaterno], [ApellidoPaterno], [ApellidoMaterno], [Cedula], [Telefono], [Direccion], [Email]) VALUES (0, N'Pedro', N'Ramon', N'Ruiz', N'Gonzales', N'104-162436     ', N'82971625       ', N'San cristobal', N'ramong@gmail.co')
GO
INSERT [dbo].[Profesores] ([ProfesorId], [NombreMaterno], [NombrePaterno], [Edad], [Sexo], [Cedula], [Dirección], [Email], [Telefono], [MateriaId]) VALUES (1, N'Johan', N'Jose', N'32        ', N'M', N'104-27347      ', N'San cristobal', N'johan@g.net', N'849162543', 2)
GO
ALTER TABLE [dbo].[Calificaciones]  WITH CHECK ADD  CONSTRAINT [FK_Calificaciones_Materias] FOREIGN KEY([MateriaId])
REFERENCES [dbo].[Materias] ([MateriasId])
GO
ALTER TABLE [dbo].[Calificaciones] CHECK CONSTRAINT [FK_Calificaciones_Materias]
GO
ALTER TABLE [dbo].[Cursos]  WITH CHECK ADD  CONSTRAINT [FK_Cursos_Materias] FOREIGN KEY([MateriaId])
REFERENCES [dbo].[Materias] ([MateriasId])
GO
ALTER TABLE [dbo].[Cursos] CHECK CONSTRAINT [FK_Cursos_Materias]
GO
ALTER TABLE [dbo].[Estudiantes]  WITH CHECK ADD  CONSTRAINT [FK_Estudiantes_Cursos] FOREIGN KEY([CursoId])
REFERENCES [dbo].[Cursos] ([CursoId])
GO
ALTER TABLE [dbo].[Estudiantes] CHECK CONSTRAINT [FK_Estudiantes_Cursos]
GO
ALTER TABLE [dbo].[Horario]  WITH CHECK ADD  CONSTRAINT [FK_Horario_Profesores] FOREIGN KEY([ProfesorId])
REFERENCES [dbo].[Profesores] ([ProfesorId])
GO
ALTER TABLE [dbo].[Horario] CHECK CONSTRAINT [FK_Horario_Profesores]
GO
ALTER TABLE [dbo].[Materias]  WITH CHECK ADD  CONSTRAINT [FK_Materias_Estudiantes] FOREIGN KEY([EstudiantesId])
REFERENCES [dbo].[Estudiantes] ([EstudianteId])
GO
ALTER TABLE [dbo].[Materias] CHECK CONSTRAINT [FK_Materias_Estudiantes]
GO
ALTER TABLE [dbo].[Materias]  WITH CHECK ADD  CONSTRAINT [FK_Materias_Profesores] FOREIGN KEY([ProfesorId])
REFERENCES [dbo].[Profesores] ([ProfesorId])
GO
ALTER TABLE [dbo].[Materias] CHECK CONSTRAINT [FK_Materias_Profesores]
GO
USE [master]
GO
ALTER DATABASE [Softecnología] SET  READ_WRITE 
GO
