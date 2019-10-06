USE [master]
GO
CREATE DATABASE [Contacto] ON  PRIMARY 
( NAME = N'Contacto', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL10.SQLEXPRESS\MSSQL\DATA\Contacto.mdf' , SIZE = 3072KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'Contacto_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL10.SQLEXPRESS\MSSQL\DATA\Contacto_log.ldf' , SIZE = 1024KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [Contacto] SET COMPATIBILITY_LEVEL = 100
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Contacto].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Contacto] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [Contacto] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [Contacto] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [Contacto] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [Contacto] SET ARITHABORT OFF 
GO
ALTER DATABASE [Contacto] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [Contacto] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [Contacto] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [Contacto] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [Contacto] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [Contacto] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [Contacto] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [Contacto] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [Contacto] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [Contacto] SET  DISABLE_BROKER 
GO
ALTER DATABASE [Contacto] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [Contacto] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [Contacto] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [Contacto] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [Contacto] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [Contacto] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [Contacto] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [Contacto] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [Contacto] SET  MULTI_USER 
GO
ALTER DATABASE [Contacto] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [Contacto] SET DB_CHAINING OFF 
GO
USE [Contacto]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [TblContacto](
	[Id] [int] NOT NULL,
	[Nombre] [varchar](50) NULL,
	[Telefono] [varchar](20) NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
INSERT [TblContacto] ([Id], [Nombre], [Telefono]) VALUES (1, N'Juana de Arco', N'1234567')
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [SPContacto]
@opc int,
@Id int = null,
@Nombre varchar(50) = null,
@Telefono varchar(20)= null
as
if @opc = 1
begin
select * from TblContacto
end

GO
USE [master]
GO
ALTER DATABASE [Contacto] SET  READ_WRITE 
GO
