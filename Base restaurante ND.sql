/*Nombre: Naidely D. Amador Lara  Matricula: 21-MIIT-1-035  Sección:0541*/

USE [master]
GO
/****** Object:  Database [Restaurante NF]    Script Date: 13/12/2022 15:52:00 ******/
CREATE DATABASE [Restaurante NF]
USE [Restaurante NF]
GO
/****** Object:  Table [dbo].[Administracion]    Script Date: 13/12/2022 15:52:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Administracion](
	[AdministracionId] [int] NOT NULL,
	[Empleados] [int] NULL,
	[ClientesId] [int] NULL,
	[IdDireccion] [int] NULL,
	[FacturaId] [int] NULL,
	[Meseras] [int] NULL,
	[Cocineros] [int] NULL,
	[Conserjes] [int] NULL,
	[Bartender] [int] NULL,
 CONSTRAINT [PK_Administracion] PRIMARY KEY CLUSTERED 
(
	[AdministracionId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Clientes]    Script Date: 13/12/2022 15:52:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Clientes](
	[ClientesId] [int] NOT NULL,
	[Nombre] [varchar](50) NULL,
	[ApellidoP] [varchar](50) NULL,
	[ApellidoM] [varchar](50) NULL,
	[Telefono] [char](13) NULL,
	[Compra] [varchar](50) NULL,
	[TarjetaEfectivo] [varchar](30) NULL,
	[Cedula] [varchar](15) NULL,
	[Total] [int] NULL,
	[Pago] [int] NULL,
	[Devuelta] [int] NULL,
 CONSTRAINT [PK_Clientes] PRIMARY KEY CLUSTERED 
(
	[ClientesId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Direccion]    Script Date: 13/12/2022 15:52:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Direccion](
	[DireccionId] [varchar](50) NOT NULL,
	[IdDireccion] [int] NULL,
	[IdClientes] [int] NULL,
	[Provincia] [varchar](50) NULL,
	[Municipio] [varchar](50) NULL,
	[Calle] [varchar](30) NULL,
 CONSTRAINT [PK_Direccion] PRIMARY KEY CLUSTERED 
(
	[DireccionId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Factura]    Script Date: 13/12/2022 15:52:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Factura](
	[FacturaId] [int] NOT NULL,
	[Tarjeta] [char](10) NULL,
	[Clave] [char](5) NULL,
	[Nombre] [varchar](50) NULL,
	[Piezas] [int] NULL,
	[Total] [int] NULL,
	[Fecha] [datetime] NULL,
	[ProductoId] [varchar](50) NULL,
 CONSTRAINT [PK_Factura] PRIMARY KEY CLUSTERED 
(
	[FacturaId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Producto]    Script Date: 13/12/2022 15:52:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Producto](
	[ProductoId] [varchar](50) NOT NULL,
	[Nombre] [varchar](50) NULL,
	[Tipo] [varchar](30) NULL,
	[Precio] [int] NULL,
	[Descuento] [int] NULL,
	[TotalPagar] [int] NULL,
	[Cantidad] [int] NULL,
 CONSTRAINT [PK_Producto] PRIMARY KEY CLUSTERED 
(
	[ProductoId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Tipo]    Script Date: 13/12/2022 15:52:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tipo](
	[TipoId] [varchar](50) NOT NULL,
	[ProductoId] [int] NULL,
	[Combos] [varchar](30) NULL,
	[Ofertas] [varchar](30) NULL,
	[Descuento] [int] NULL,
	[ParaLlevar] [char](10) NULL,
	[ParaConsumir] [char](10) NULL,
	[Grande] [int] NULL,
	[Pequeño] [int] NULL,
	[Mediano] [int] NULL,
 CONSTRAINT [PK_Tipo] PRIMARY KEY CLUSTERED 
(
	[TipoId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Vendedor]    Script Date: 13/12/2022 15:52:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Vendedor](
	[VendedorId] [varchar](50) NOT NULL,
	[Nombre] [varchar](50) NULL,
	[ApellidoP] [varchar](30) NULL,
	[ApellidoM] [varchar](30) NULL,
	[CodigoVendedor] [char](10) NULL,
	[Municipio] [varchar](30) NULL,
	[Idvendedor] [int] NULL,
 CONSTRAINT [PK_Vendedor] PRIMARY KEY CLUSTERED 
(
	[VendedorId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[Administracion] ([AdministracionId], [Empleados], [ClientesId], [IdDireccion], [FacturaId], [Meseras], [Cocineros], [Conserjes], [Bartender]) VALUES (1, 10, 1, 1, 637465, 4, 3, 1, 2)
GO
INSERT [dbo].[Clientes] ([ClientesId], [Nombre], [ApellidoP], [ApellidoM], [Telefono], [Compra], [TarjetaEfectivo], [Cedula], [Total], [Pago], [Devuelta]) VALUES (1, N'Nelianny', N'Amador', N'Lara', N'8098646832   ', N'1', N'Tarjeta', N'104-02463728', 350, 500, 150)
GO
INSERT [dbo].[Direccion] ([DireccionId], [IdDireccion], [IdClientes], [Provincia], [Municipio], [Calle]) VALUES (N'San cristobal', 1, 1, N'San cristobal', N'Las torres', N'3')
GO
INSERT [dbo].[Factura] ([FacturaId], [Tarjeta], [Clave], [Nombre], [Piezas], [Total], [Fecha], [ProductoId]) VALUES (1, N'1         ', N'0520 ', N'Naidely', 3, 350, CAST(N'2022-12-13T00:00:00.000' AS DateTime), N'3')
GO
INSERT [dbo].[Producto] ([ProductoId], [Nombre], [Tipo], [Precio], [Descuento], [TotalPagar], [Cantidad]) VALUES (N'3', N'Ensalada', N'Saludable', 500, 150, 350, 3)
GO
INSERT [dbo].[Tipo] ([TipoId], [ProductoId], [Combos], [Ofertas], [Descuento], [ParaLlevar], [ParaConsumir], [Grande], [Pequeño], [Mediano]) VALUES (N'Ofertas', 3, N'0', N'3', 50, N'No        ', N'Si        ', 0, 0, 3)
GO
INSERT [dbo].[Vendedor] ([VendedorId], [Nombre], [ApellidoP], [ApellidoM], [CodigoVendedor], [Municipio], [Idvendedor]) VALUES (N'1', N'Naidely', N'Amador', N'Lara', N'0541      ', N'Las torres', 541)
GO
USE [master]
GO
ALTER DATABASE [Restaurante NF] SET  READ_WRITE 
GO
