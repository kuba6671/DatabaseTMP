#1
USE [4ID12B]
GO

SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[Sprawcy](
	[idSprawcy] [int] NOT NULL,
	[imie] [nchar](50) NULL,
	[nazwisko] [nchar](50) NULL,
	[wiek] [int] NULL,
	[plec] [nchar](30) NULL,
 CONSTRAINT [PK_Sprawcy] PRIMARY KEY CLUSTERED 
(
	[idSprawcy] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO


#2
USE [4ID12B]
GO

SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[Podejrzani](
	[idPodejrzanego] [int] NOT NULL,
	[idSprawcy] [int] NULL,
 CONSTRAINT [PK_Podejrzani] PRIMARY KEY CLUSTERED 
(
	[idPodejrzanego] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

ALTER TABLE [dbo].[Podejrzani]  WITH CHECK ADD  CONSTRAINT [FK_Podejrzani_Sprawcy] FOREIGN KEY([idSprawcy])
REFERENCES [dbo].[Sprawcy] ([idSprawcy])
GO

ALTER TABLE [dbo].[Podejrzani] CHECK CONSTRAINT [FK_Podejrzani_Sprawcy]
GO




#3
USE [4ID12B]
GO

SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[Dowody](
	[idDowodu] [int] NOT NULL,
	[nazwa] [nchar](50) NULL,
	[typ] [nchar](50) NULL,
	[wagaDowodu] [int] NULL,
 CONSTRAINT [PK_Dowody] PRIMARY KEY CLUSTERED 
(
	[idDowodu] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO


#4
USE [4ID12B]
GO

SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[Lokalizacja](
	[idLokalizacja] [int] NOT NULL,
	[ulica] [nchar](50) NULL,
	[numerBudynku] [int] NULL,
 CONSTRAINT [PK_Lokalizacja] PRIMARY KEY CLUSTERED 
(
	[idLokalizacja] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO


#5
USE [4ID12B]
GO

SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[Ofiary](
	[idOfiary] [int] NOT NULL,
	[imie] [nchar](50) NULL,
	[nazwisko] [nchar](50) NULL,
	[wiek] [int] NULL,
	[plec] [nchar](30) NULL,
 CONSTRAINT [PK_Ofiary] PRIMARY KEY CLUSTERED 
(
	[idOfiary] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO


#6
USE [4ID12B]
GO

SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[Okolicznosci](
	[idOkolicznosci] [int] NOT NULL,
	[typ] [nchar](50) NULL,
 CONSTRAINT [PK_Okolicznosci] PRIMARY KEY CLUSTERED 
(
	[idOkolicznosci] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO


#7
USE [4ID12B]
GO

SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[Swiadkowie](
	[idSwiadka] [int] NOT NULL,
	[imie] [nchar](50) NULL,
	[nazwisko] [nchar](50) NULL,
	[wiek] [int] NULL,
	[plec] [nchar](50) NULL,
	[typSwiadka] [nchar](50) NULL,
 CONSTRAINT [PK_Swiadkowie] PRIMARY KEY CLUSTERED 
(
	[idSwiadka] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO


#8
USE [4ID12B]
GO

SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[WydarzeniaRozrywkowe](
	[idWydarzenia] [int] NOT NULL,
	[typWydarzenia] [nchar](50) NULL,
 CONSTRAINT [PK_WydarzeniaRozrywkowe] PRIMARY KEY CLUSTERED 
(
	[idWydarzenia] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO


#9
USE [4ID12B]
GO

SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[WykorzystanePrzedmioty](
	[idPrzedmiotu] [int] NOT NULL,
	[nazwa] [nchar](50) NULL,
	[typ] [nchar](50) NULL,
 CONSTRAINT [PK_WykorzystanePrzedmioty] PRIMARY KEY CLUSTERED 
(
	[idPrzedmiotu] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO


#10
USE [4ID12B]
GO

SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[Przestepstwa](
	[idPrzestepstwa] [int] NOT NULL,
	[data] [date] NULL,
	[typ] [nchar](50) NULL,
	[godzina] [datetime] NULL,
	[sprawcaZnaleziony] [bit] NULL,
	[idPodejrzany] [int] NULL,
	[idOfiara] [int] NULL,
	[idOkolicznosc] [int] NULL,
	[idLokalizacja] [int] NULL,
	[idWykorzystanyPrzedmiot] [int] NULL,
	[idSwiadek] [int] NULL,
	[idDowod] [int] NULL,
	[idWydarzenie] [int] NULL,
 CONSTRAINT [PK_Przestepstwa] PRIMARY KEY CLUSTERED 
(
	[idPrzestepstwa] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

ALTER TABLE [dbo].[Przestepstwa]  WITH CHECK ADD  CONSTRAINT [FK_Przestepstwa_Dowody] FOREIGN KEY([idDowod])
REFERENCES [dbo].[Dowody] ([idDowodu])
GO

ALTER TABLE [dbo].[Przestepstwa] CHECK CONSTRAINT [FK_Przestepstwa_Dowody]
GO

ALTER TABLE [dbo].[Przestepstwa]  WITH CHECK ADD  CONSTRAINT [FK_Przestepstwa_Lokalizacja] FOREIGN KEY([idLokalizacja])
REFERENCES [dbo].[Lokalizacja] ([idLokalizacja])
GO

ALTER TABLE [dbo].[Przestepstwa] CHECK CONSTRAINT [FK_Przestepstwa_Lokalizacja]
GO

ALTER TABLE [dbo].[Przestepstwa]  WITH CHECK ADD  CONSTRAINT [FK_Przestepstwa_Ofiary] FOREIGN KEY([idOfiara])
REFERENCES [dbo].[Ofiary] ([idOfiary])
GO

ALTER TABLE [dbo].[Przestepstwa] CHECK CONSTRAINT [FK_Przestepstwa_Ofiary]
GO

ALTER TABLE [dbo].[Przestepstwa]  WITH CHECK ADD  CONSTRAINT [FK_Przestepstwa_Okolicznosci] FOREIGN KEY([idOkolicznosc])
REFERENCES [dbo].[Okolicznosci] ([idOkolicznosci])
GO

ALTER TABLE [dbo].[Przestepstwa] CHECK CONSTRAINT [FK_Przestepstwa_Okolicznosci]
GO

ALTER TABLE [dbo].[Przestepstwa]  WITH CHECK ADD  CONSTRAINT [FK_Przestepstwa_Podejrzani] FOREIGN KEY([idPodejrzany])
REFERENCES [dbo].[Podejrzani] ([idPodejrzanego])
GO

ALTER TABLE [dbo].[Przestepstwa] CHECK CONSTRAINT [FK_Przestepstwa_Podejrzani]
GO

ALTER TABLE [dbo].[Przestepstwa]  WITH CHECK ADD  CONSTRAINT [FK_Przestepstwa_Swiadkowie] FOREIGN KEY([idSwiadek])
REFERENCES [dbo].[Swiadkowie] ([idSwiadka])
GO

ALTER TABLE [dbo].[Przestepstwa] CHECK CONSTRAINT [FK_Przestepstwa_Swiadkowie]
GO

ALTER TABLE [dbo].[Przestepstwa]  WITH CHECK ADD  CONSTRAINT [FK_Przestepstwa_WydarzeniaRozrywkowe] FOREIGN KEY([idWydarzenie])
REFERENCES [dbo].[WydarzeniaRozrywkowe] ([idWydarzenia])
GO

ALTER TABLE [dbo].[Przestepstwa] CHECK CONSTRAINT [FK_Przestepstwa_WydarzeniaRozrywkowe]
GO

ALTER TABLE [dbo].[Przestepstwa]  WITH CHECK ADD  CONSTRAINT [FK_Przestepstwa_WykorzystanePrzedmioty] FOREIGN KEY([idWykorzystanyPrzedmiot])
REFERENCES [dbo].[WykorzystanePrzedmioty] ([idPrzedmiotu])
GO

ALTER TABLE [dbo].[Przestepstwa] CHECK CONSTRAINT [FK_Przestepstwa_WykorzystanePrzedmioty]
GO


