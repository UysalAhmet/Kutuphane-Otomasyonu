USE [master]
GO
/****** Object:  Database [Akinsoft_Kutuphane]    Script Date: 28.12.2020 09:09:55 ******/
CREATE DATABASE [Akinsoft_Kutuphane]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Akinsoft_Kutuphane', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\Akinsoft_Kutuphane.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'Akinsoft_Kutuphane_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\Akinsoft_Kutuphane_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [Akinsoft_Kutuphane] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Akinsoft_Kutuphane].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Akinsoft_Kutuphane] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [Akinsoft_Kutuphane] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [Akinsoft_Kutuphane] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [Akinsoft_Kutuphane] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [Akinsoft_Kutuphane] SET ARITHABORT OFF 
GO
ALTER DATABASE [Akinsoft_Kutuphane] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [Akinsoft_Kutuphane] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [Akinsoft_Kutuphane] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [Akinsoft_Kutuphane] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [Akinsoft_Kutuphane] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [Akinsoft_Kutuphane] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [Akinsoft_Kutuphane] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [Akinsoft_Kutuphane] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [Akinsoft_Kutuphane] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [Akinsoft_Kutuphane] SET  DISABLE_BROKER 
GO
ALTER DATABASE [Akinsoft_Kutuphane] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [Akinsoft_Kutuphane] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [Akinsoft_Kutuphane] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [Akinsoft_Kutuphane] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [Akinsoft_Kutuphane] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [Akinsoft_Kutuphane] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [Akinsoft_Kutuphane] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [Akinsoft_Kutuphane] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [Akinsoft_Kutuphane] SET  MULTI_USER 
GO
ALTER DATABASE [Akinsoft_Kutuphane] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [Akinsoft_Kutuphane] SET DB_CHAINING OFF 
GO
ALTER DATABASE [Akinsoft_Kutuphane] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [Akinsoft_Kutuphane] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [Akinsoft_Kutuphane] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [Akinsoft_Kutuphane] SET QUERY_STORE = OFF
GO
USE [Akinsoft_Kutuphane]
GO
/****** Object:  Table [dbo].[Bolum]    Script Date: 28.12.2020 09:09:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Bolum](
	[BolumId] [int] IDENTITY(1,1) NOT NULL,
	[BolumAd] [nvarchar](max) NULL,
	[FakulteId] [int] NULL,
 CONSTRAINT [PK_Bolum] PRIMARY KEY CLUSTERED 
(
	[BolumId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Fakulte]    Script Date: 28.12.2020 09:09:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Fakulte](
	[FakulteId] [int] IDENTITY(1,1) NOT NULL,
	[FakulteAd] [nvarchar](max) NULL,
 CONSTRAINT [PK_Fakulte] PRIMARY KEY CLUSTERED 
(
	[FakulteId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Kategori]    Script Date: 28.12.2020 09:09:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Kategori](
	[KategoriId] [int] IDENTITY(1,1) NOT NULL,
	[KategoriAd] [nvarchar](50) NULL,
 CONSTRAINT [PK_Kategori] PRIMARY KEY CLUSTERED 
(
	[KategoriId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Kitap]    Script Date: 28.12.2020 09:09:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Kitap](
	[KitapId] [int] IDENTITY(1,1) NOT NULL,
	[KitapAd] [nvarchar](max) NULL,
	[KategoriId] [int] NULL,
	[YayinYili] [int] NULL,
	[YazarId] [int] NULL,
	[SayfaSayisi] [int] NULL,
	[AnahtarKelime] [nvarchar](max) NULL,
	[ISBNNo] [nvarchar](max) NULL,
	[StokDurum] [bit] NULL,
 CONSTRAINT [PK_Kitap] PRIMARY KEY CLUSTERED 
(
	[KitapId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Kullanici]    Script Date: 28.12.2020 09:09:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Kullanici](
	[KullaniciId] [int] IDENTITY(1,1) NOT NULL,
	[KullaniciAd] [nvarchar](50) NULL,
	[KullaniciSifre] [nvarchar](max) NULL,
 CONSTRAINT [PK_Kullanici] PRIMARY KEY CLUSTERED 
(
	[KullaniciId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[OduncTeslim]    Script Date: 28.12.2020 09:09:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OduncTeslim](
	[OdunTeslimId] [int] IDENTITY(1,1) NOT NULL,
	[KitapId] [int] NULL,
	[OgrenciId] [int] NULL,
	[OduncTarihi] [datetime] NULL,
	[TeslimTarihi] [datetime] NULL,
 CONSTRAINT [PK_OduncTeslim] PRIMARY KEY CLUSTERED 
(
	[OdunTeslimId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Ogrenci]    Script Date: 28.12.2020 09:09:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Ogrenci](
	[OgrenciIId] [int] IDENTITY(1,1) NOT NULL,
	[OgrenciNo] [nvarchar](50) NULL,
	[Ad] [nvarchar](max) NULL,
	[Soyad] [nvarchar](max) NULL,
	[FakulteId] [int] NULL,
	[BolumId] [int] NULL,
	[Adres] [nvarchar](max) NULL,
	[MemleketAdres] [nvarchar](max) NULL,
	[KayitTarihi] [datetime] NULL,
	[CepTelefonu] [nvarchar](max) NULL,
 CONSTRAINT [PK_Ogrenci] PRIMARY KEY CLUSTERED 
(
	[OgrenciIId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Yazar]    Script Date: 28.12.2020 09:09:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Yazar](
	[YazarId] [int] IDENTITY(1,1) NOT NULL,
	[YazarAdSoyad] [nvarchar](max) NULL,
 CONSTRAINT [PK_Yazar] PRIMARY KEY CLUSTERED 
(
	[YazarId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Bolum] ON 

INSERT [dbo].[Bolum] ([BolumId], [BolumAd], [FakulteId]) VALUES (1, N'Bilgisayar Muhendisliği', 1)
INSERT [dbo].[Bolum] ([BolumId], [BolumAd], [FakulteId]) VALUES (2, N'Makina Muhendisligi', 1)
INSERT [dbo].[Bolum] ([BolumId], [BolumAd], [FakulteId]) VALUES (3, N'Matematik', 2)
INSERT [dbo].[Bolum] ([BolumId], [BolumAd], [FakulteId]) VALUES (4, N'Fen', 2)
INSERT [dbo].[Bolum] ([BolumId], [BolumAd], [FakulteId]) VALUES (5, N'Elektrik Muhendisligi', 1)
INSERT [dbo].[Bolum] ([BolumId], [BolumAd], [FakulteId]) VALUES (6, N'Dişş', 3)
INSERT [dbo].[Bolum] ([BolumId], [BolumAd], [FakulteId]) VALUES (8, N'qqq', 3)
SET IDENTITY_INSERT [dbo].[Bolum] OFF
GO
SET IDENTITY_INSERT [dbo].[Fakulte] ON 

INSERT [dbo].[Fakulte] ([FakulteId], [FakulteAd]) VALUES (1, N'Muhendislik')
INSERT [dbo].[Fakulte] ([FakulteId], [FakulteAd]) VALUES (2, N'Fen Edebiyat')
INSERT [dbo].[Fakulte] ([FakulteId], [FakulteAd]) VALUES (3, N'Tıpp')
SET IDENTITY_INSERT [dbo].[Fakulte] OFF
GO
SET IDENTITY_INSERT [dbo].[Kategori] ON 

INSERT [dbo].[Kategori] ([KategoriId], [KategoriAd]) VALUES (1, N'Romann')
INSERT [dbo].[Kategori] ([KategoriId], [KategoriAd]) VALUES (2, N'Polisiye  ')
INSERT [dbo].[Kategori] ([KategoriId], [KategoriAd]) VALUES (3, N'Gizem     ')
SET IDENTITY_INSERT [dbo].[Kategori] OFF
GO
SET IDENTITY_INSERT [dbo].[Kitap] ON 

INSERT [dbo].[Kitap] ([KitapId], [KitapAd], [KategoriId], [YayinYili], [YazarId], [SayfaSayisi], [AnahtarKelime], [ISBNNo], [StokDurum]) VALUES (1, N'Martin Eden', 1, NULL, 1, NULL, NULL, NULL, 1)
INSERT [dbo].[Kitap] ([KitapId], [KitapAd], [KategoriId], [YayinYili], [YazarId], [SayfaSayisi], [AnahtarKelime], [ISBNNo], [StokDurum]) VALUES (2, N'Demir Ökcem', 3, NULL, 2, NULL, NULL, NULL, 1)
INSERT [dbo].[Kitap] ([KitapId], [KitapAd], [KategoriId], [YayinYili], [YazarId], [SayfaSayisi], [AnahtarKelime], [ISBNNo], [StokDurum]) VALUES (3, N'dddd', 1, 2323, 1, 23232, N'23232', N'23232', 1)
INSERT [dbo].[Kitap] ([KitapId], [KitapAd], [KategoriId], [YayinYili], [YazarId], [SayfaSayisi], [AnahtarKelime], [ISBNNo], [StokDurum]) VALUES (4, N'rrr', 1, 333, 1, 3434, N'demir ökçe', N'334', 1)
INSERT [dbo].[Kitap] ([KitapId], [KitapAd], [KategoriId], [YayinYili], [YazarId], [SayfaSayisi], [AnahtarKelime], [ISBNNo], [StokDurum]) VALUES (5, NULL, 1, NULL, 1, NULL, NULL, NULL, 1)
INSERT [dbo].[Kitap] ([KitapId], [KitapAd], [KategoriId], [YayinYili], [YazarId], [SayfaSayisi], [AnahtarKelime], [ISBNNo], [StokDurum]) VALUES (6, N'asd', 1, NULL, 1, 2321, N'123123', N'12312', 1)
INSERT [dbo].[Kitap] ([KitapId], [KitapAd], [KategoriId], [YayinYili], [YazarId], [SayfaSayisi], [AnahtarKelime], [ISBNNo], [StokDurum]) VALUES (7, N'adad', 1, 232, 1, NULL, NULL, NULL, 1)
INSERT [dbo].[Kitap] ([KitapId], [KitapAd], [KategoriId], [YayinYili], [YazarId], [SayfaSayisi], [AnahtarKelime], [ISBNNo], [StokDurum]) VALUES (8, NULL, 1, NULL, 1, NULL, NULL, NULL, 1)
INSERT [dbo].[Kitap] ([KitapId], [KitapAd], [KategoriId], [YayinYili], [YazarId], [SayfaSayisi], [AnahtarKelime], [ISBNNo], [StokDurum]) VALUES (9, N'asda', 1, NULL, 1, NULL, NULL, NULL, 1)
INSERT [dbo].[Kitap] ([KitapId], [KitapAd], [KategoriId], [YayinYili], [YazarId], [SayfaSayisi], [AnahtarKelime], [ISBNNo], [StokDurum]) VALUES (10, NULL, 1, NULL, 1, NULL, NULL, NULL, 1)
INSERT [dbo].[Kitap] ([KitapId], [KitapAd], [KategoriId], [YayinYili], [YazarId], [SayfaSayisi], [AnahtarKelime], [ISBNNo], [StokDurum]) VALUES (11, NULL, 1, NULL, 1, NULL, NULL, NULL, 1)
INSERT [dbo].[Kitap] ([KitapId], [KitapAd], [KategoriId], [YayinYili], [YazarId], [SayfaSayisi], [AnahtarKelime], [ISBNNo], [StokDurum]) VALUES (12, NULL, 1, NULL, 1, NULL, NULL, NULL, 1)
INSERT [dbo].[Kitap] ([KitapId], [KitapAd], [KategoriId], [YayinYili], [YazarId], [SayfaSayisi], [AnahtarKelime], [ISBNNo], [StokDurum]) VALUES (13, NULL, 1, NULL, 1, NULL, NULL, NULL, 1)
INSERT [dbo].[Kitap] ([KitapId], [KitapAd], [KategoriId], [YayinYili], [YazarId], [SayfaSayisi], [AnahtarKelime], [ISBNNo], [StokDurum]) VALUES (14, NULL, 1, NULL, 1, NULL, NULL, NULL, 1)
INSERT [dbo].[Kitap] ([KitapId], [KitapAd], [KategoriId], [YayinYili], [YazarId], [SayfaSayisi], [AnahtarKelime], [ISBNNo], [StokDurum]) VALUES (16, N'Devlet', 1, 2020, 3, 455, N'Siyaset Felsefe', N'33333', 0)
INSERT [dbo].[Kitap] ([KitapId], [KitapAd], [KategoriId], [YayinYili], [YazarId], [SayfaSayisi], [AnahtarKelime], [ISBNNo], [StokDurum]) VALUES (19, N'eeeee', 1, 222, 1, 222, N'eee', N'222', 1)
INSERT [dbo].[Kitap] ([KitapId], [KitapAd], [KategoriId], [YayinYili], [YazarId], [SayfaSayisi], [AnahtarKelime], [ISBNNo], [StokDurum]) VALUES (20, N'ffff', 1, 333, 2, 333, N'3ff', N'3333', 1)
SET IDENTITY_INSERT [dbo].[Kitap] OFF
GO
SET IDENTITY_INSERT [dbo].[Kullanici] ON 

INSERT [dbo].[Kullanici] ([KullaniciId], [KullaniciAd], [KullaniciSifre]) VALUES (1, N'deneme', N'deneme')
INSERT [dbo].[Kullanici] ([KullaniciId], [KullaniciAd], [KullaniciSifre]) VALUES (2, N'Ahmet Uysal', N'123')
SET IDENTITY_INSERT [dbo].[Kullanici] OFF
GO
SET IDENTITY_INSERT [dbo].[OduncTeslim] ON 

INSERT [dbo].[OduncTeslim] ([OdunTeslimId], [KitapId], [OgrenciId], [OduncTarihi], [TeslimTarihi]) VALUES (1, 1, 1, CAST(N'2012-12-12T00:00:00.000' AS DateTime), CAST(N'2020-12-27T23:57:04.013' AS DateTime))
INSERT [dbo].[OduncTeslim] ([OdunTeslimId], [KitapId], [OgrenciId], [OduncTarihi], [TeslimTarihi]) VALUES (2, 2, 1, CAST(N'2012-12-12T00:00:00.000' AS DateTime), CAST(N'2020-12-27T20:49:41.550' AS DateTime))
INSERT [dbo].[OduncTeslim] ([OdunTeslimId], [KitapId], [OgrenciId], [OduncTarihi], [TeslimTarihi]) VALUES (3, 16, 1, CAST(N'2020-12-27T02:54:11.847' AS DateTime), NULL)
INSERT [dbo].[OduncTeslim] ([OdunTeslimId], [KitapId], [OgrenciId], [OduncTarihi], [TeslimTarihi]) VALUES (6, 1, 1, CAST(N'2020-12-27T03:45:43.543' AS DateTime), CAST(N'2020-12-27T03:47:35.527' AS DateTime))
INSERT [dbo].[OduncTeslim] ([OdunTeslimId], [KitapId], [OgrenciId], [OduncTarihi], [TeslimTarihi]) VALUES (7, 3, 1, CAST(N'2020-12-27T03:46:08.057' AS DateTime), CAST(N'2020-12-27T03:46:25.253' AS DateTime))
INSERT [dbo].[OduncTeslim] ([OdunTeslimId], [KitapId], [OgrenciId], [OduncTarihi], [TeslimTarihi]) VALUES (8, 7, 2, CAST(N'2020-12-27T03:47:12.447' AS DateTime), CAST(N'2020-12-27T03:47:26.213' AS DateTime))
INSERT [dbo].[OduncTeslim] ([OdunTeslimId], [KitapId], [OgrenciId], [OduncTarihi], [TeslimTarihi]) VALUES (9, 4, 1, CAST(N'2020-12-27T05:24:46.153' AS DateTime), CAST(N'2020-12-27T05:25:06.973' AS DateTime))
INSERT [dbo].[OduncTeslim] ([OdunTeslimId], [KitapId], [OgrenciId], [OduncTarihi], [TeslimTarihi]) VALUES (10, 1, 1, CAST(N'2020-12-27T05:50:11.210' AS DateTime), CAST(N'2020-12-27T05:51:21.387' AS DateTime))
INSERT [dbo].[OduncTeslim] ([OdunTeslimId], [KitapId], [OgrenciId], [OduncTarihi], [TeslimTarihi]) VALUES (11, 2, 1, CAST(N'2020-12-27T05:50:15.500' AS DateTime), CAST(N'2020-12-27T05:52:45.983' AS DateTime))
INSERT [dbo].[OduncTeslim] ([OdunTeslimId], [KitapId], [OgrenciId], [OduncTarihi], [TeslimTarihi]) VALUES (12, 1, 1, CAST(N'2020-12-27T05:52:38.530' AS DateTime), CAST(N'2020-12-27T06:05:12.923' AS DateTime))
INSERT [dbo].[OduncTeslim] ([OdunTeslimId], [KitapId], [OgrenciId], [OduncTarihi], [TeslimTarihi]) VALUES (13, 2, 1, CAST(N'2020-12-27T05:56:27.073' AS DateTime), CAST(N'2020-12-27T06:06:11.163' AS DateTime))
INSERT [dbo].[OduncTeslim] ([OdunTeslimId], [KitapId], [OgrenciId], [OduncTarihi], [TeslimTarihi]) VALUES (14, 3, 1, CAST(N'2020-12-27T05:57:49.110' AS DateTime), CAST(N'2020-12-27T06:05:28.697' AS DateTime))
INSERT [dbo].[OduncTeslim] ([OdunTeslimId], [KitapId], [OgrenciId], [OduncTarihi], [TeslimTarihi]) VALUES (15, 16, 1, CAST(N'2020-12-27T06:04:44.823' AS DateTime), CAST(N'2020-12-27T06:08:04.817' AS DateTime))
INSERT [dbo].[OduncTeslim] ([OdunTeslimId], [KitapId], [OgrenciId], [OduncTarihi], [TeslimTarihi]) VALUES (16, 1, 2, CAST(N'2020-12-27T06:05:49.527' AS DateTime), CAST(N'2020-12-27T06:05:54.483' AS DateTime))
INSERT [dbo].[OduncTeslim] ([OdunTeslimId], [KitapId], [OgrenciId], [OduncTarihi], [TeslimTarihi]) VALUES (17, 6, 3, CAST(N'2020-12-27T06:07:49.487' AS DateTime), CAST(N'2020-12-27T06:07:57.133' AS DateTime))
INSERT [dbo].[OduncTeslim] ([OdunTeslimId], [KitapId], [OgrenciId], [OduncTarihi], [TeslimTarihi]) VALUES (18, 1, 1, CAST(N'2020-12-27T06:30:22.697' AS DateTime), CAST(N'2020-12-27T20:36:05.117' AS DateTime))
INSERT [dbo].[OduncTeslim] ([OdunTeslimId], [KitapId], [OgrenciId], [OduncTarihi], [TeslimTarihi]) VALUES (19, 9, 3, CAST(N'2020-12-27T06:32:36.033' AS DateTime), CAST(N'2020-12-27T06:33:38.747' AS DateTime))
INSERT [dbo].[OduncTeslim] ([OdunTeslimId], [KitapId], [OgrenciId], [OduncTarihi], [TeslimTarihi]) VALUES (20, 2, 11, CAST(N'2020-12-27T20:38:06.867' AS DateTime), CAST(N'2020-12-27T20:38:29.427' AS DateTime))
INSERT [dbo].[OduncTeslim] ([OdunTeslimId], [KitapId], [OgrenciId], [OduncTarihi], [TeslimTarihi]) VALUES (21, 1, 3, CAST(N'2020-12-27T20:39:29.937' AS DateTime), CAST(N'2020-12-27T20:39:44.977' AS DateTime))
SET IDENTITY_INSERT [dbo].[OduncTeslim] OFF
GO
SET IDENTITY_INSERT [dbo].[Ogrenci] ON 

INSERT [dbo].[Ogrenci] ([OgrenciIId], [OgrenciNo], [Ad], [Soyad], [FakulteId], [BolumId], [Adres], [MemleketAdres], [KayitTarihi], [CepTelefonu]) VALUES (1, N'50160076027', N'Ahmet', N'Uysal', 1, 1, N'Durunday Mahallesi İbare Sokak no 14/A', N'Durunday Mahallesi İbare Sokak no 14/A', CAST(N'2020-12-12T00:00:00.000' AS DateTime), N'55555555')
INSERT [dbo].[Ogrenci] ([OgrenciIId], [OgrenciNo], [Ad], [Soyad], [FakulteId], [BolumId], [Adres], [MemleketAdres], [KayitTarihi], [CepTelefonu]) VALUES (2, N'50122222222', N'George ', N'Lee', 2, 4, N'addddddd', N'dddddffffff', CAST(N'2020-12-26T22:50:32.247' AS DateTime), N'23232323')
INSERT [dbo].[Ogrenci] ([OgrenciIId], [OgrenciNo], [Ad], [Soyad], [FakulteId], [BolumId], [Adres], [MemleketAdres], [KayitTarihi], [CepTelefonu]) VALUES (3, N'333333333', N'seqw', N'qweqw', 1, 5, N'eewqe', N'fsdfsdf', CAST(N'2020-12-26T23:05:02.143' AS DateTime), N'sdfdsf')
INSERT [dbo].[Ogrenci] ([OgrenciIId], [OgrenciNo], [Ad], [Soyad], [FakulteId], [BolumId], [Adres], [MemleketAdres], [KayitTarihi], [CepTelefonu]) VALUES (5, N'222222222', N'23334dsad', N'asda', 1, 5, N'23dsa', N'asdasd', CAST(N'2020-12-26T22:53:09.867' AS DateTime), N'3323')
INSERT [dbo].[Ogrenci] ([OgrenciIId], [OgrenciNo], [Ad], [Soyad], [FakulteId], [BolumId], [Adres], [MemleketAdres], [KayitTarihi], [CepTelefonu]) VALUES (11, N'222333', N'222333', N'22333', 2, 4, N'2222333', N'2233', CAST(N'2020-12-27T00:40:42.697' AS DateTime), N'212333')
INSERT [dbo].[Ogrenci] ([OgrenciIId], [OgrenciNo], [Ad], [Soyad], [FakulteId], [BolumId], [Adres], [MemleketAdres], [KayitTarihi], [CepTelefonu]) VALUES (12, N'99444', N'94', N'9999999444', 1, 1, N'999449999', N'44499999999', CAST(N'2020-12-27T00:43:35.390' AS DateTime), N'4449999')
INSERT [dbo].[Ogrenci] ([OgrenciIId], [OgrenciNo], [Ad], [Soyad], [FakulteId], [BolumId], [Adres], [MemleketAdres], [KayitTarihi], [CepTelefonu]) VALUES (16, N'123', N'Ahmet ', NULL, 2, 3, NULL, NULL, CAST(N'2020-12-27T23:18:24.160' AS DateTime), NULL)
INSERT [dbo].[Ogrenci] ([OgrenciIId], [OgrenciNo], [Ad], [Soyad], [FakulteId], [BolumId], [Adres], [MemleketAdres], [KayitTarihi], [CepTelefonu]) VALUES (17, N'1234', N'Ahmet ', NULL, 3, 8, NULL, NULL, CAST(N'2020-12-27T23:18:33.960' AS DateTime), NULL)
INSERT [dbo].[Ogrenci] ([OgrenciIId], [OgrenciNo], [Ad], [Soyad], [FakulteId], [BolumId], [Adres], [MemleketAdres], [KayitTarihi], [CepTelefonu]) VALUES (18, N'2222222', N'Ahmet ', N'3333', NULL, NULL, N'3333', N'33', CAST(N'2020-12-27T23:19:26.473' AS DateTime), N'3333')
SET IDENTITY_INSERT [dbo].[Ogrenci] OFF
GO
SET IDENTITY_INSERT [dbo].[Yazar] ON 

INSERT [dbo].[Yazar] ([YazarId], [YazarAdSoyad]) VALUES (1, N'Jack London')
INSERT [dbo].[Yazar] ([YazarId], [YazarAdSoyad]) VALUES (2, N'Tolstoy')
INSERT [dbo].[Yazar] ([YazarId], [YazarAdSoyad]) VALUES (3, N'Platon')
INSERT [dbo].[Yazar] ([YazarId], [YazarAdSoyad]) VALUES (4, N'Stephen Kingg')
SET IDENTITY_INSERT [dbo].[Yazar] OFF
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_Kullanici]    Script Date: 28.12.2020 09:09:55 ******/
CREATE UNIQUE NONCLUSTERED INDEX [IX_Kullanici] ON [dbo].[Kullanici]
(
	[KullaniciAd] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_Ogrenci]    Script Date: 28.12.2020 09:09:55 ******/
CREATE UNIQUE NONCLUSTERED INDEX [IX_Ogrenci] ON [dbo].[Ogrenci]
(
	[OgrenciNo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Bolum]  WITH CHECK ADD  CONSTRAINT [FK_Bolum_Fakulte] FOREIGN KEY([FakulteId])
REFERENCES [dbo].[Fakulte] ([FakulteId])
GO
ALTER TABLE [dbo].[Bolum] CHECK CONSTRAINT [FK_Bolum_Fakulte]
GO
ALTER TABLE [dbo].[Kitap]  WITH CHECK ADD  CONSTRAINT [FK_Kitap_Kategori] FOREIGN KEY([KategoriId])
REFERENCES [dbo].[Kategori] ([KategoriId])
GO
ALTER TABLE [dbo].[Kitap] CHECK CONSTRAINT [FK_Kitap_Kategori]
GO
ALTER TABLE [dbo].[Kitap]  WITH CHECK ADD  CONSTRAINT [FK_Kitap_Yazar] FOREIGN KEY([YazarId])
REFERENCES [dbo].[Yazar] ([YazarId])
GO
ALTER TABLE [dbo].[Kitap] CHECK CONSTRAINT [FK_Kitap_Yazar]
GO
ALTER TABLE [dbo].[OduncTeslim]  WITH CHECK ADD  CONSTRAINT [FK_OduncTeslim_Kitap] FOREIGN KEY([KitapId])
REFERENCES [dbo].[Kitap] ([KitapId])
GO
ALTER TABLE [dbo].[OduncTeslim] CHECK CONSTRAINT [FK_OduncTeslim_Kitap]
GO
ALTER TABLE [dbo].[OduncTeslim]  WITH CHECK ADD  CONSTRAINT [FK_OduncTeslim_Ogrenci] FOREIGN KEY([OgrenciId])
REFERENCES [dbo].[Ogrenci] ([OgrenciIId])
GO
ALTER TABLE [dbo].[OduncTeslim] CHECK CONSTRAINT [FK_OduncTeslim_Ogrenci]
GO
ALTER TABLE [dbo].[Ogrenci]  WITH CHECK ADD  CONSTRAINT [FK_Ogrenci_Bolum] FOREIGN KEY([BolumId])
REFERENCES [dbo].[Bolum] ([BolumId])
GO
ALTER TABLE [dbo].[Ogrenci] CHECK CONSTRAINT [FK_Ogrenci_Bolum]
GO
ALTER TABLE [dbo].[Ogrenci]  WITH CHECK ADD  CONSTRAINT [FK_Ogrenci_Fakulte] FOREIGN KEY([FakulteId])
REFERENCES [dbo].[Fakulte] ([FakulteId])
GO
ALTER TABLE [dbo].[Ogrenci] CHECK CONSTRAINT [FK_Ogrenci_Fakulte]
GO
USE [master]
GO
ALTER DATABASE [Akinsoft_Kutuphane] SET  READ_WRITE 
GO
