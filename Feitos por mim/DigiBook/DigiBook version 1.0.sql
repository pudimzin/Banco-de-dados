USE [DigimonBook]
GO
/****** Object:  Table [dbo].[BurstMode]    Script Date: 11/10/2021 21:40:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BurstMode](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](50) NOT NULL,
	[About] [varchar](100) NULL,
 CONSTRAINT [PK_BurstMode] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DigiBurst]    Script Date: 11/10/2021 21:40:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DigiBurst](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Digimon] [int] NOT NULL,
	[BurstMode] [int] NOT NULL,
 CONSTRAINT [PK_DigiBurst] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DigiFusions]    Script Date: 11/10/2021 21:40:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DigiFusions](
	[IDFusão] [int] IDENTITY(1,1) NOT NULL,
	[IDPartner1] [int] NOT NULL,
	[IDPartner2] [int] NOT NULL,
	[IDFusion] [int] NOT NULL,
 CONSTRAINT [PK_DigiFusions_1] PRIMARY KEY CLUSTERED 
(
	[IDFusão] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Digimon]    Script Date: 11/10/2021 21:40:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Digimon](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](50) NULL,
	[Level] [int] NOT NULL,
	[Height] [int] NULL,
	[Evolution] [int] NULL,
 CONSTRAINT [PK_Digimon] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Fusions]    Script Date: 11/10/2021 21:40:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Fusions](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](50) NULL,
	[About] [varchar](100) NULL,
 CONSTRAINT [PK_Fusions] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Lista de nivel de evo]    Script Date: 11/10/2021 21:40:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Lista de nivel de evo](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](50) NULL,
	[About] [varchar](50) NULL,
 CONSTRAINT [PK_Lista de nivel de evo] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[BurstMode] ON 

INSERT [dbo].[BurstMode] ([ID], [Name], [About]) VALUES (1, N'ShadowSeraphimon', N'This is a Seraphimon corrupted by the devil')
SET IDENTITY_INSERT [dbo].[BurstMode] OFF
GO
SET IDENTITY_INSERT [dbo].[DigiBurst] ON 

INSERT [dbo].[DigiBurst] ([ID], [Digimon], [BurstMode]) VALUES (1, 26, 1)
SET IDENTITY_INSERT [dbo].[DigiBurst] OFF
GO
SET IDENTITY_INSERT [dbo].[DigiFusions] ON 

INSERT [dbo].[DigiFusions] ([IDFusão], [IDPartner1], [IDPartner2], [IDFusion]) VALUES (1, 13, 10, 1)
SET IDENTITY_INSERT [dbo].[DigiFusions] OFF
GO
SET IDENTITY_INSERT [dbo].[Digimon] ON 

INSERT [dbo].[Digimon] ([ID], [Name], [Level], [Height], [Evolution]) VALUES (1, N'Agumon', 3, 120, 2)
INSERT [dbo].[Digimon] ([ID], [Name], [Level], [Height], [Evolution]) VALUES (2, N'Greymon', 4, 240, 3)
INSERT [dbo].[Digimon] ([ID], [Name], [Level], [Height], [Evolution]) VALUES (3, N'MetalGreymon', 5, 300, 4)
INSERT [dbo].[Digimon] ([ID], [Name], [Level], [Height], [Evolution]) VALUES (4, N'WarGreymon', 6, 250, NULL)
INSERT [dbo].[Digimon] ([ID], [Name], [Level], [Height], [Evolution]) VALUES (5, N'Gabumon', 3, 120, 6)
INSERT [dbo].[Digimon] ([ID], [Name], [Level], [Height], [Evolution]) VALUES (6, N'Garurumon', 4, 200, 7)
INSERT [dbo].[Digimon] ([ID], [Name], [Level], [Height], [Evolution]) VALUES (7, N'WereGarurumon', 5, 250, 8)
INSERT [dbo].[Digimon] ([ID], [Name], [Level], [Height], [Evolution]) VALUES (8, N'MetalGarurumon', 6, 200, NULL)
INSERT [dbo].[Digimon] ([ID], [Name], [Level], [Height], [Evolution]) VALUES (9, N'Gatomon', 4, 120, 10)
INSERT [dbo].[Digimon] ([ID], [Name], [Level], [Height], [Evolution]) VALUES (10, N'Angewomon', 5, 160, 11)
INSERT [dbo].[Digimon] ([ID], [Name], [Level], [Height], [Evolution]) VALUES (11, N'Ophanimon', 6, 160, NULL)
INSERT [dbo].[Digimon] ([ID], [Name], [Level], [Height], [Evolution]) VALUES (12, N'BlackGatomon', 4, 120, 13)
INSERT [dbo].[Digimon] ([ID], [Name], [Level], [Height], [Evolution]) VALUES (13, N'LadyDevimon', 5, 160, 14)
INSERT [dbo].[Digimon] ([ID], [Name], [Level], [Height], [Evolution]) VALUES (14, N'Minervamon', 6, 160, NULL)
INSERT [dbo].[Digimon] ([ID], [Name], [Level], [Height], [Evolution]) VALUES (15, N'Palmon', 3, 110, 16)
INSERT [dbo].[Digimon] ([ID], [Name], [Level], [Height], [Evolution]) VALUES (16, N'Togemon', 4, 150, 17)
INSERT [dbo].[Digimon] ([ID], [Name], [Level], [Height], [Evolution]) VALUES (17, N'Lilymon', 5, 150, 18)
INSERT [dbo].[Digimon] ([ID], [Name], [Level], [Height], [Evolution]) VALUES (18, N'Rosemon', 6, 165, NULL)
INSERT [dbo].[Digimon] ([ID], [Name], [Level], [Height], [Evolution]) VALUES (19, N'Byomon', 3, 120, 20)
INSERT [dbo].[Digimon] ([ID], [Name], [Level], [Height], [Evolution]) VALUES (20, N'Birdramon', 4, 145, 21)
INSERT [dbo].[Digimon] ([ID], [Name], [Level], [Height], [Evolution]) VALUES (21, N'Garudamon', 5, 180, 22)
INSERT [dbo].[Digimon] ([ID], [Name], [Level], [Height], [Evolution]) VALUES (22, N'Hououmon', 6, 155, NULL)
INSERT [dbo].[Digimon] ([ID], [Name], [Level], [Height], [Evolution]) VALUES (23, N'Patamon', 3, 80, 24)
INSERT [dbo].[Digimon] ([ID], [Name], [Level], [Height], [Evolution]) VALUES (24, N'Angemon', 4, 170, 25)
INSERT [dbo].[Digimon] ([ID], [Name], [Level], [Height], [Evolution]) VALUES (25, N'MagnaAngemon', 5, 170, 26)
INSERT [dbo].[Digimon] ([ID], [Name], [Level], [Height], [Evolution]) VALUES (26, N'Seraphimon', 6, 170, NULL)
SET IDENTITY_INSERT [dbo].[Digimon] OFF
GO
SET IDENTITY_INSERT [dbo].[Fusions] ON 

INSERT [dbo].[Fusions] ([ID], [Name], [About]) VALUES (1, N'Mastermon', N'Is a part devil, part angel digimon.')
SET IDENTITY_INSERT [dbo].[Fusions] OFF
GO
SET IDENTITY_INSERT [dbo].[Lista de nivel de evo] ON 

INSERT [dbo].[Lista de nivel de evo] ([ID], [Name], [About]) VALUES (3, N'Rookie', N'This decide his after evolutions')
INSERT [dbo].[Lista de nivel de evo] ([ID], [Name], [About]) VALUES (4, N'Champion', N'Next evolution from Rookie form.')
INSERT [dbo].[Lista de nivel de evo] ([ID], [Name], [About]) VALUES (5, N'Ultimate', N'Next evolution from Champion form.')
INSERT [dbo].[Lista de nivel de evo] ([ID], [Name], [About]) VALUES (6, N'Mega', N'Final Evolution from a digimon(Base form)')
SET IDENTITY_INSERT [dbo].[Lista de nivel de evo] OFF
GO
ALTER TABLE [dbo].[DigiBurst]  WITH CHECK ADD  CONSTRAINT [FK_DigiBurst_BurstMode] FOREIGN KEY([BurstMode])
REFERENCES [dbo].[BurstMode] ([ID])
GO
ALTER TABLE [dbo].[DigiBurst] CHECK CONSTRAINT [FK_DigiBurst_BurstMode]
GO
ALTER TABLE [dbo].[DigiBurst]  WITH CHECK ADD  CONSTRAINT [FK_DigiBurst_Digimon] FOREIGN KEY([Digimon])
REFERENCES [dbo].[Digimon] ([ID])
GO
ALTER TABLE [dbo].[DigiBurst] CHECK CONSTRAINT [FK_DigiBurst_Digimon]
GO
ALTER TABLE [dbo].[DigiFusions]  WITH CHECK ADD  CONSTRAINT [FK_DigiFusions_Digimon] FOREIGN KEY([IDPartner1])
REFERENCES [dbo].[Digimon] ([ID])
GO
ALTER TABLE [dbo].[DigiFusions] CHECK CONSTRAINT [FK_DigiFusions_Digimon]
GO
ALTER TABLE [dbo].[DigiFusions]  WITH CHECK ADD  CONSTRAINT [FK_DigiFusions_Digimon1] FOREIGN KEY([IDPartner2])
REFERENCES [dbo].[Digimon] ([ID])
GO
ALTER TABLE [dbo].[DigiFusions] CHECK CONSTRAINT [FK_DigiFusions_Digimon1]
GO
ALTER TABLE [dbo].[DigiFusions]  WITH CHECK ADD  CONSTRAINT [FK_DigiFusions_Fusions] FOREIGN KEY([IDFusion])
REFERENCES [dbo].[Fusions] ([ID])
GO
ALTER TABLE [dbo].[DigiFusions] CHECK CONSTRAINT [FK_DigiFusions_Fusions]
GO
ALTER TABLE [dbo].[Digimon]  WITH CHECK ADD  CONSTRAINT [FK_Digimon_Digimon2] FOREIGN KEY([Evolution])
REFERENCES [dbo].[Digimon] ([ID])
GO
ALTER TABLE [dbo].[Digimon] CHECK CONSTRAINT [FK_Digimon_Digimon2]
GO
ALTER TABLE [dbo].[Digimon]  WITH CHECK ADD  CONSTRAINT [FK_Digimon_Lista de nivel de evo] FOREIGN KEY([Level])
REFERENCES [dbo].[Lista de nivel de evo] ([ID])
GO
ALTER TABLE [dbo].[Digimon] CHECK CONSTRAINT [FK_Digimon_Lista de nivel de evo]
GO
