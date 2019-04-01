IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Locations_Rosters_RosterId]') AND parent_object_id = OBJECT_ID(N'[dbo].[Locations]'))
ALTER TABLE [dbo].[Locations] DROP CONSTRAINT [FK_Locations_Rosters_RosterId]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_AspNetUserTokens_AspNetUsers_UserId]') AND parent_object_id = OBJECT_ID(N'[dbo].[AspNetUserTokens]'))
ALTER TABLE [dbo].[AspNetUserTokens] DROP CONSTRAINT [FK_AspNetUserTokens_AspNetUsers_UserId]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_AspNetUserRoles_AspNetUsers_UserId]') AND parent_object_id = OBJECT_ID(N'[dbo].[AspNetUserRoles]'))
ALTER TABLE [dbo].[AspNetUserRoles] DROP CONSTRAINT [FK_AspNetUserRoles_AspNetUsers_UserId]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_AspNetUserRoles_AspNetRoles_RoleId]') AND parent_object_id = OBJECT_ID(N'[dbo].[AspNetUserRoles]'))
ALTER TABLE [dbo].[AspNetUserRoles] DROP CONSTRAINT [FK_AspNetUserRoles_AspNetRoles_RoleId]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_AspNetUserLogins_AspNetUsers_UserId]') AND parent_object_id = OBJECT_ID(N'[dbo].[AspNetUserLogins]'))
ALTER TABLE [dbo].[AspNetUserLogins] DROP CONSTRAINT [FK_AspNetUserLogins_AspNetUsers_UserId]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_AspNetUserClaims_AspNetUsers_UserId]') AND parent_object_id = OBJECT_ID(N'[dbo].[AspNetUserClaims]'))
ALTER TABLE [dbo].[AspNetUserClaims] DROP CONSTRAINT [FK_AspNetUserClaims_AspNetUsers_UserId]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_AspNetRoleClaims_AspNetRoles_RoleId]') AND parent_object_id = OBJECT_ID(N'[dbo].[AspNetRoleClaims]'))
ALTER TABLE [dbo].[AspNetRoleClaims] DROP CONSTRAINT [FK_AspNetRoleClaims_AspNetRoles_RoleId]
GO
/****** Object:  Table [dbo].[Rosters]    Script Date: 2/24/2019 9:46:38 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Rosters]') AND type in (N'U'))
DROP TABLE [dbo].[Rosters]
GO
/****** Object:  Table [dbo].[Locations]    Script Date: 2/24/2019 9:46:38 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Locations]') AND type in (N'U'))
DROP TABLE [dbo].[Locations]
GO
/****** Object:  Table [dbo].[AspNetUserTokens]    Script Date: 2/24/2019 9:46:38 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[AspNetUserTokens]') AND type in (N'U'))
DROP TABLE [dbo].[AspNetUserTokens]
GO
/****** Object:  Table [dbo].[AspNetUsers]    Script Date: 2/24/2019 9:46:38 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[AspNetUsers]') AND type in (N'U'))
DROP TABLE [dbo].[AspNetUsers]
GO
/****** Object:  Table [dbo].[AspNetUserRoles]    Script Date: 2/24/2019 9:46:38 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[AspNetUserRoles]') AND type in (N'U'))
DROP TABLE [dbo].[AspNetUserRoles]
GO
/****** Object:  Table [dbo].[AspNetUserLogins]    Script Date: 2/24/2019 9:46:38 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[AspNetUserLogins]') AND type in (N'U'))
DROP TABLE [dbo].[AspNetUserLogins]
GO
/****** Object:  Table [dbo].[AspNetUserClaims]    Script Date: 2/24/2019 9:46:38 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[AspNetUserClaims]') AND type in (N'U'))
DROP TABLE [dbo].[AspNetUserClaims]
GO
/****** Object:  Table [dbo].[AspNetRoles]    Script Date: 2/24/2019 9:46:38 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[AspNetRoles]') AND type in (N'U'))
DROP TABLE [dbo].[AspNetRoles]
GO
/****** Object:  Table [dbo].[AspNetRoleClaims]    Script Date: 2/24/2019 9:46:38 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[AspNetRoleClaims]') AND type in (N'U'))
DROP TABLE [dbo].[AspNetRoleClaims]
GO
/****** Object:  Table [dbo].[AspNetRoleClaims]    Script Date: 2/24/2019 9:46:38 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[AspNetRoleClaims]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[AspNetRoleClaims](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[RoleId] [nvarchar](450) NOT NULL,
	[ClaimType] [nvarchar](max) NULL,
	[ClaimValue] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetRoleClaims] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[AspNetRoles]    Script Date: 2/24/2019 9:46:38 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[AspNetRoles]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[AspNetRoles](
	[Id] [nvarchar](450) NOT NULL,
	[Name] [nvarchar](256) NULL,
	[NormalizedName] [nvarchar](256) NULL,
	[ConcurrencyStamp] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetRoles] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[AspNetUserClaims]    Script Date: 2/24/2019 9:46:38 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[AspNetUserClaims]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[AspNetUserClaims](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[UserId] [nvarchar](450) NOT NULL,
	[ClaimType] [nvarchar](max) NULL,
	[ClaimValue] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetUserClaims] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[AspNetUserLogins]    Script Date: 2/24/2019 9:46:38 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[AspNetUserLogins]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[AspNetUserLogins](
	[LoginProvider] [nvarchar](450) NOT NULL,
	[ProviderKey] [nvarchar](450) NOT NULL,
	[ProviderDisplayName] [nvarchar](max) NULL,
	[UserId] [nvarchar](450) NOT NULL,
 CONSTRAINT [PK_AspNetUserLogins] PRIMARY KEY CLUSTERED 
(
	[LoginProvider] ASC,
	[ProviderKey] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[AspNetUserRoles]    Script Date: 2/24/2019 9:46:38 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[AspNetUserRoles]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[AspNetUserRoles](
	[UserId] [nvarchar](450) NOT NULL,
	[RoleId] [nvarchar](450) NOT NULL,
 CONSTRAINT [PK_AspNetUserRoles] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC,
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[AspNetUsers]    Script Date: 2/24/2019 9:46:38 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[AspNetUsers]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[AspNetUsers](
	[Id] [nvarchar](450) NOT NULL,
	[UserName] [nvarchar](256) NULL,
	[NormalizedUserName] [nvarchar](256) NULL,
	[Email] [nvarchar](256) NULL,
	[NormalizedEmail] [nvarchar](256) NULL,
	[EmailConfirmed] [bit] NOT NULL,
	[PasswordHash] [nvarchar](max) NULL,
	[SecurityStamp] [nvarchar](max) NULL,
	[ConcurrencyStamp] [nvarchar](max) NULL,
	[PhoneNumber] [nvarchar](max) NULL,
	[PhoneNumberConfirmed] [bit] NOT NULL,
	[TwoFactorEnabled] [bit] NOT NULL,
	[LockoutEnd] [datetimeoffset](7) NULL,
	[LockoutEnabled] [bit] NOT NULL,
	[AccessFailedCount] [int] NOT NULL,
	[FirstName] [nvarchar](max) NULL,
	[LastName] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetUsers] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[AspNetUserTokens]    Script Date: 2/24/2019 9:46:38 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[AspNetUserTokens]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[AspNetUserTokens](
	[UserId] [nvarchar](450) NOT NULL,
	[LoginProvider] [nvarchar](450) NOT NULL,
	[Name] [nvarchar](450) NOT NULL,
	[Value] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetUserTokens] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC,
	[LoginProvider] ASC,
	[Name] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[Locations]    Script Date: 2/24/2019 9:46:38 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Locations]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Locations](
	[LocationId] [int] IDENTITY(1,1) NOT NULL,
	[City] [nvarchar](max) NULL,
	[State] [nvarchar](max) NULL,
	[Country] [nvarchar](max) NULL,
	[RosterId] [int] NOT NULL,
 CONSTRAINT [PK_Locations] PRIMARY KEY CLUSTERED 
(
	[LocationId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[Rosters]    Script Date: 2/24/2019 9:46:38 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Rosters]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Rosters](
	[RosterId] [int] IDENTITY(1,1) NOT NULL,
	[FirstName] [nvarchar](max) NULL,
	[Middle] [nvarchar](max) NULL,
	[LastName] [nvarchar](max) NULL,
	[Image] [nvarchar](max) NULL,
	[Caption] [nvarchar](max) NULL,
	[Link] [nvarchar](max) NULL,
 CONSTRAINT [PK_Rosters] PRIMARY KEY CLUSTERED 
(
	[RosterId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
END
GO
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount], [FirstName], [LastName]) VALUES (N'a3d61364-8597-4302-8220-23cce83634f1', N'dedogs1', N'DEDOGS1', N'topdog@dedogs.com', N'TOPDOG@DEDOGS.COM', 0, N'AQAAAAEAACcQAAAAEDbF/6LOjpnFH9Y3uyhVgbF35+j9BBrwa5fAw7k2Xw9LW5QJzgeCFe28k+dVqCO1Rw==', N'CPL3Z3X4XXI2OYBGR75D66UQQP6ICSHV', N'3fb571e4-918d-4d05-8972-29357006dd59', NULL, 0, 0, NULL, 1, 0, N'Kirk', N'deDoes')
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount], [FirstName], [LastName]) VALUES (N'ac41aa74-56df-4aca-990e-e9ce812acf14', N'dedogs', N'DEDOGS', N'tea@dedogs.com', N'TEA@DEDOGS.COM', 0, N'AQAAAAEAACcQAAAAELkoSunOHTcZzzr4I4eznxRlkPtzfZAEmg47SKF+2bUijycr7KUc+EUDwKsBCM1Oiw==', N'2NHRE2CJG2PJVUP2S5CTTF5AXZSM4FW6', N'72a77792-2e78-431c-9082-582b33f754f8', NULL, 0, 0, NULL, 1, 0, N'Kirk', N'deDoes')
SET IDENTITY_INSERT [dbo].[Locations] ON 

INSERT [dbo].[Locations] ([LocationId], [City], [State], [Country], [RosterId], [Latitude], [Longitude]) VALUES (2, N'Lansing', N'Michigan', N'United States', 2, 42.732535, -84.5555347)
INSERT [dbo].[Locations] ([LocationId], [City], [State], [Country], [RosterId], [Latitude], [Longitude]) VALUES (4, N'  Lansing', N'Michigan', N'United States', 4, 42.732535, -84.5555347)
INSERT [dbo].[Locations] ([LocationId], [City], [State], [Country], [RosterId], [Latitude], [Longitude]) VALUES (5, N'Lansing', N'Michigan', N'United States', 5, 42.732535, -84.5555347)
INSERT [dbo].[Locations] ([LocationId], [City], [State], [Country], [RosterId], [Latitude], [Longitude]) VALUES (6, N'Lansing', N'Michigan', N'United States', 6, 42.732535, -84.5555347)
INSERT [dbo].[Locations] ([LocationId], [City], [State], [Country], [RosterId], [Latitude], [Longitude]) VALUES (7, N'Lansing', N'Michigan', N'United States', 7, 42.732535, -84.5555347)
INSERT [dbo].[Locations] ([LocationId], [City], [State], [Country], [RosterId], [Latitude], [Longitude]) VALUES (8, N'Lansing', N'Michigan', N'United States', 8, 42.732535, -84.5555347)
INSERT [dbo].[Locations] ([LocationId], [City], [State], [Country], [RosterId], [Latitude], [Longitude]) VALUES (9, N'Lansing', N'Michigan', N'United States', 9, 42.732535, -84.5555347)
INSERT [dbo].[Locations] ([LocationId], [City], [State], [Country], [RosterId], [Latitude], [Longitude]) VALUES (10, N'Lansing', N'Michigan', N'United States', 10, 42.732535, -84.5555347)
INSERT [dbo].[Locations] ([LocationId], [City], [State], [Country], [RosterId], [Latitude], [Longitude]) VALUES (11, N'Lansing', N'Michigan', N'United States', 11, 42.732535, -84.5555347)
INSERT [dbo].[Locations] ([LocationId], [City], [State], [Country], [RosterId], [Latitude], [Longitude]) VALUES (12, N'Lansing', N'Michigan', N'United States', 12, 42.732535, -84.5555347)
INSERT [dbo].[Locations] ([LocationId], [City], [State], [Country], [RosterId], [Latitude], [Longitude]) VALUES (13, N'Lansing', N'Michigan', N'United States', 13, 42.732535, -84.5555347)
INSERT [dbo].[Locations] ([LocationId], [City], [State], [Country], [RosterId], [Latitude], [Longitude]) VALUES (14, N'Lansing', N'Michigan', N'United States', 14, 42.732535, -84.5555347)
INSERT [dbo].[Locations] ([LocationId], [City], [State], [Country], [RosterId], [Latitude], [Longitude]) VALUES (15, N'Lansing', N'Michigan', N'United States', 15, 42.732535, -84.5555347)
INSERT [dbo].[Locations] ([LocationId], [City], [State], [Country], [RosterId], [Latitude], [Longitude]) VALUES (16, N'Lansing', N'Michigan', N'United States', 16, 42.732535, -84.5555347)
INSERT [dbo].[Locations] ([LocationId], [City], [State], [Country], [RosterId], [Latitude], [Longitude]) VALUES (17, N'Lansing', N'Michigan', N'United States', 17, 42.732535, -84.5555347)
INSERT [dbo].[Locations] ([LocationId], [City], [State], [Country], [RosterId], [Latitude], [Longitude]) VALUES (18, N'Lansing', N'Michigan', N'United States', 18, 42.732535, -84.5555347)
INSERT [dbo].[Locations] ([LocationId], [City], [State], [Country], [RosterId], [Latitude], [Longitude]) VALUES (19, N'Lansing', N'Michigan', N'United States', 19, 42.732535, -84.5555347)
INSERT [dbo].[Locations] ([LocationId], [City], [State], [Country], [RosterId], [Latitude], [Longitude]) VALUES (20, N'Lansing', N'Michigan', N'United States', 20, 42.732535, -84.5555347)
INSERT [dbo].[Locations] ([LocationId], [City], [State], [Country], [RosterId], [Latitude], [Longitude]) VALUES (21, N'Lansing', N'Michigan', N'United States', 21, 42.732535, -84.5555347)
INSERT [dbo].[Locations] ([LocationId], [City], [State], [Country], [RosterId], [Latitude], [Longitude]) VALUES (22, N'Lansing', N'Michigan', N'United States', 22, 42.732535, -84.5555347)
INSERT [dbo].[Locations] ([LocationId], [City], [State], [Country], [RosterId], [Latitude], [Longitude]) VALUES (23, N'Lansing', N'Michigan', N'United States', 23, 42.732535, -84.5555347)
INSERT [dbo].[Locations] ([LocationId], [City], [State], [Country], [RosterId], [Latitude], [Longitude]) VALUES (24, N'Lansing', N'Michigan', N'United States', 24, 42.732535, -84.5555347)
INSERT [dbo].[Locations] ([LocationId], [City], [State], [Country], [RosterId], [Latitude], [Longitude]) VALUES (25, N'Lansing', N'Michigan', N'United States', 25, 42.732535, -84.5555347)
INSERT [dbo].[Locations] ([LocationId], [City], [State], [Country], [RosterId], [Latitude], [Longitude]) VALUES (26, N'Lansing', N'Michigan', N'United States', 26, 42.732535, -84.5555347)
INSERT [dbo].[Locations] ([LocationId], [City], [State], [Country], [RosterId], [Latitude], [Longitude]) VALUES (27, N'Lansing', N'Michigan', N'United States', 27, 42.732535, -84.5555347)
INSERT [dbo].[Locations] ([LocationId], [City], [State], [Country], [RosterId], [Latitude], [Longitude]) VALUES (28, N'Lansing', N'Michigan', N'United States', 28, 42.732535, -84.5555347)
INSERT [dbo].[Locations] ([LocationId], [City], [State], [Country], [RosterId], [Latitude], [Longitude]) VALUES (29, N'Lansing', N'Michigan', N'United States', 29, 42.732535, -84.5555347)
INSERT [dbo].[Locations] ([LocationId], [City], [State], [Country], [RosterId], [Latitude], [Longitude]) VALUES (30, N'Lansing', N'Michigan', N'United States', 30, 42.732535, -84.5555347)
INSERT [dbo].[Locations] ([LocationId], [City], [State], [Country], [RosterId], [Latitude], [Longitude]) VALUES (31, N'Lansing', N'Michigan', N'United States', 31, 42.732535, -84.5555347)
INSERT [dbo].[Locations] ([LocationId], [City], [State], [Country], [RosterId], [Latitude], [Longitude]) VALUES (32, N'Lansing', N'Michigan', N'United States', 32, 42.732535, -84.5555347)
INSERT [dbo].[Locations] ([LocationId], [City], [State], [Country], [RosterId], [Latitude], [Longitude]) VALUES (33, N'Lansing', N'Michigan', N'United States', 33, 42.732535, -84.5555347)
INSERT [dbo].[Locations] ([LocationId], [City], [State], [Country], [RosterId], [Latitude], [Longitude]) VALUES (34, N'Lansing', N'Michigan', N'United States', 34, 42.732535, -84.5555347)
INSERT [dbo].[Locations] ([LocationId], [City], [State], [Country], [RosterId], [Latitude], [Longitude]) VALUES (35, N'Lansing', N'Michigan', N'United States', 35, 42.732535, -84.5555347)
INSERT [dbo].[Locations] ([LocationId], [City], [State], [Country], [RosterId], [Latitude], [Longitude]) VALUES (36, N'Lansing', N'Michigan', N'United States', 36, 42.732535, -84.5555347)
INSERT [dbo].[Locations] ([LocationId], [City], [State], [Country], [RosterId], [Latitude], [Longitude]) VALUES (37, N'Lansing', N'Michigan', N'United States', 37, 42.732535, -84.5555347)
INSERT [dbo].[Locations] ([LocationId], [City], [State], [Country], [RosterId], [Latitude], [Longitude]) VALUES (38, N'Lansing', N'Michigan', N'United States', 38, 42.732535, -84.5555347)
INSERT [dbo].[Locations] ([LocationId], [City], [State], [Country], [RosterId], [Latitude], [Longitude]) VALUES (39, N'Lansing', N'Michigan', N'United States', 39, 42.732535, -84.5555347)
INSERT [dbo].[Locations] ([LocationId], [City], [State], [Country], [RosterId], [Latitude], [Longitude]) VALUES (40, N'Lansing', N'Michigan', N'United States', 40, 42.732535, -84.5555347)
INSERT [dbo].[Locations] ([LocationId], [City], [State], [Country], [RosterId], [Latitude], [Longitude]) VALUES (41, N'Lansing', N'Michigan', N'United States', 41, 42.732535, -84.5555347)
INSERT [dbo].[Locations] ([LocationId], [City], [State], [Country], [RosterId], [Latitude], [Longitude]) VALUES (42, N'Lansing', N'Michigan', N'United States', 42, 42.732535, -84.5555347)
INSERT [dbo].[Locations] ([LocationId], [City], [State], [Country], [RosterId], [Latitude], [Longitude]) VALUES (43, N'Lansing', N'Michigan', N'United States', 43, 42.732535, -84.5555347)
INSERT [dbo].[Locations] ([LocationId], [City], [State], [Country], [RosterId], [Latitude], [Longitude]) VALUES (44, N'Lansing', N'Michigan', N'United States', 44, 42.732535, -84.5555347)
INSERT [dbo].[Locations] ([LocationId], [City], [State], [Country], [RosterId], [Latitude], [Longitude]) VALUES (45, N'Lansing', N'Michigan', N'United States', 45, 42.732535, -84.5555347)
INSERT [dbo].[Locations] ([LocationId], [City], [State], [Country], [RosterId], [Latitude], [Longitude]) VALUES (46, N'Lansing', N'Michigan', N'United States', 46, 42.732535, -84.5555347)
INSERT [dbo].[Locations] ([LocationId], [City], [State], [Country], [RosterId], [Latitude], [Longitude]) VALUES (47, N'Lansing', N'Michigan', N'United States', 47, 42.732535, -84.5555347)
INSERT [dbo].[Locations] ([LocationId], [City], [State], [Country], [RosterId], [Latitude], [Longitude]) VALUES (48, N'Lansing', N'Michigan', N'United States', 48, 42.732535, -84.5555347)
INSERT [dbo].[Locations] ([LocationId], [City], [State], [Country], [RosterId], [Latitude], [Longitude]) VALUES (49, N'Lansing', N'Michigan', N'United States', 49, 42.732535, -84.5555347)
INSERT [dbo].[Locations] ([LocationId], [City], [State], [Country], [RosterId], [Latitude], [Longitude]) VALUES (50, N'Lansing', N'Michigan', N'United States', 50, 42.732535, -84.5555347)
INSERT [dbo].[Locations] ([LocationId], [City], [State], [Country], [RosterId], [Latitude], [Longitude]) VALUES (51, N'Lansing', N'Michigan', N'United States', 51, 42.732535, -84.5555347)
INSERT [dbo].[Locations] ([LocationId], [City], [State], [Country], [RosterId], [Latitude], [Longitude]) VALUES (52, N'Lansing', N'Michigan', N'United States', 52, 42.732535, -84.5555347)
INSERT [dbo].[Locations] ([LocationId], [City], [State], [Country], [RosterId], [Latitude], [Longitude]) VALUES (53, N'Lansing', N'Michigan', N'United States', 53, 42.732535, -84.5555347)
INSERT [dbo].[Locations] ([LocationId], [City], [State], [Country], [RosterId], [Latitude], [Longitude]) VALUES (54, N'Lansing', N'Michigan', N'United States', 54, 42.732535, -84.5555347)
INSERT [dbo].[Locations] ([LocationId], [City], [State], [Country], [RosterId], [Latitude], [Longitude]) VALUES (55, N'Lansing', N'Michigan', N'United States', 55, 42.732535, -84.5555347)
INSERT [dbo].[Locations] ([LocationId], [City], [State], [Country], [RosterId], [Latitude], [Longitude]) VALUES (56, N'Lansing', N'Michigan', N'United States', 56, 42.732535, -84.5555347)
INSERT [dbo].[Locations] ([LocationId], [City], [State], [Country], [RosterId], [Latitude], [Longitude]) VALUES (57, N'Lansing', N'Michigan', N'United States', 57, 42.732535, -84.5555347)
INSERT [dbo].[Locations] ([LocationId], [City], [State], [Country], [RosterId], [Latitude], [Longitude]) VALUES (58, N'Lansing', N'Michigan', N'United States', 58, 42.732535, -84.5555347)
INSERT [dbo].[Locations] ([LocationId], [City], [State], [Country], [RosterId], [Latitude], [Longitude]) VALUES (59, N'Lansing', N'Michigan', N'United States', 59, 42.732535, -84.5555347)
INSERT [dbo].[Locations] ([LocationId], [City], [State], [Country], [RosterId], [Latitude], [Longitude]) VALUES (60, N'Lansing', N'Michigan', N'United States', 60, 42.732535, -84.5555347)
INSERT [dbo].[Locations] ([LocationId], [City], [State], [Country], [RosterId], [Latitude], [Longitude]) VALUES (61, N'Lansing', N'Michigan', N'United States', 61, 42.732535, -84.5555347)
INSERT [dbo].[Locations] ([LocationId], [City], [State], [Country], [RosterId], [Latitude], [Longitude]) VALUES (62, N'Lansing', N'Michigan', N'United States', 62, 42.732535, -84.5555347)
INSERT [dbo].[Locations] ([LocationId], [City], [State], [Country], [RosterId], [Latitude], [Longitude]) VALUES (63, N'Lansing', N'Michigan', N'United States', 63, 42.732535, -84.5555347)
INSERT [dbo].[Locations] ([LocationId], [City], [State], [Country], [RosterId], [Latitude], [Longitude]) VALUES (64, N'Lansing', N'Michigan', N'United States', 64, 42.732535, -84.5555347)
INSERT [dbo].[Locations] ([LocationId], [City], [State], [Country], [RosterId], [Latitude], [Longitude]) VALUES (65, N'Lansing', N'Michigan', N'United States', 65, 42.732535, -84.5555347)
INSERT [dbo].[Locations] ([LocationId], [City], [State], [Country], [RosterId], [Latitude], [Longitude]) VALUES (66, N'Lansing', N'Michigan', N'United States', 66, 42.732535, -84.5555347)
INSERT [dbo].[Locations] ([LocationId], [City], [State], [Country], [RosterId], [Latitude], [Longitude]) VALUES (67, N'Lansing', N'Michigan', N'United States', 67, 42.732535, -84.5555347)
INSERT [dbo].[Locations] ([LocationId], [City], [State], [Country], [RosterId], [Latitude], [Longitude]) VALUES (68, N'Lansing', N'Michigan', N'United States', 68, 42.732535, -84.5555347)
INSERT [dbo].[Locations] ([LocationId], [City], [State], [Country], [RosterId], [Latitude], [Longitude]) VALUES (69, N'Lansing', N'Michigan', N'United States', 69, 42.732535, -84.5555347)
INSERT [dbo].[Locations] ([LocationId], [City], [State], [Country], [RosterId], [Latitude], [Longitude]) VALUES (70, N'Lansing', N'Michigan', N'United States', 70, 42.732535, -84.5555347)
INSERT [dbo].[Locations] ([LocationId], [City], [State], [Country], [RosterId], [Latitude], [Longitude]) VALUES (71, N'Lansing', N'Michigan', N'United States', 71, 42.732535, -84.5555347)
INSERT [dbo].[Locations] ([LocationId], [City], [State], [Country], [RosterId], [Latitude], [Longitude]) VALUES (72, N'Lansing', N'Michigan', N'United States', 72, 42.732535, -84.5555347)
INSERT [dbo].[Locations] ([LocationId], [City], [State], [Country], [RosterId], [Latitude], [Longitude]) VALUES (73, N'Lansing', N'Michigan', N'United States', 73, 42.732535, -84.5555347)
INSERT [dbo].[Locations] ([LocationId], [City], [State], [Country], [RosterId], [Latitude], [Longitude]) VALUES (74, N'Lansing', N'Michigan', N'United States', 74, 42.732535, -84.5555347)
INSERT [dbo].[Locations] ([LocationId], [City], [State], [Country], [RosterId], [Latitude], [Longitude]) VALUES (75, N'Lansing', N'Michigan', N'United States', 75, 42.732535, -84.5555347)
INSERT [dbo].[Locations] ([LocationId], [City], [State], [Country], [RosterId], [Latitude], [Longitude]) VALUES (76, N'Lansing', N'Michigan', N'United States', 76, 42.732535, -84.5555347)
INSERT [dbo].[Locations] ([LocationId], [City], [State], [Country], [RosterId], [Latitude], [Longitude]) VALUES (77, N'Lansing', N'Michigan', N'United States', 77, 42.732535, -84.5555347)
INSERT [dbo].[Locations] ([LocationId], [City], [State], [Country], [RosterId], [Latitude], [Longitude]) VALUES (78, N'Lansing', N'Michigan', N'United States', 78, 42.732535, -84.5555347)
INSERT [dbo].[Locations] ([LocationId], [City], [State], [Country], [RosterId], [Latitude], [Longitude]) VALUES (79, N'Lansing', N'Michigan', N'United States', 79, 42.732535, -84.5555347)
INSERT [dbo].[Locations] ([LocationId], [City], [State], [Country], [RosterId], [Latitude], [Longitude]) VALUES (80, N'Lansing', N'Michigan', N'United States', 80, 42.732535, -84.5555347)
INSERT [dbo].[Locations] ([LocationId], [City], [State], [Country], [RosterId], [Latitude], [Longitude]) VALUES (81, N'Lansing', N'Michigan', N'United States', 81, 42.732535, -84.5555347)
INSERT [dbo].[Locations] ([LocationId], [City], [State], [Country], [RosterId], [Latitude], [Longitude]) VALUES (82, N'Lansing', N'Michigan', N'United States', 82, 42.732535, -84.5555347)
INSERT [dbo].[Locations] ([LocationId], [City], [State], [Country], [RosterId], [Latitude], [Longitude]) VALUES (83, N'Lansing', N'Michigan', N'United States', 83, 42.732535, -84.5555347)
INSERT [dbo].[Locations] ([LocationId], [City], [State], [Country], [RosterId], [Latitude], [Longitude]) VALUES (84, N'Lansing', N'Michigan', N'United States', 84, 42.732535, -84.5555347)
INSERT [dbo].[Locations] ([LocationId], [City], [State], [Country], [RosterId], [Latitude], [Longitude]) VALUES (85, N'  Lansing', N'Michigan', N'United States', 85, 42.732535, -84.5555347)
INSERT [dbo].[Locations] ([LocationId], [City], [State], [Country], [RosterId], [Latitude], [Longitude]) VALUES (86, N'Lansing', N'Michigan', N'United States', 86, 42.732535, -84.5555347)
INSERT [dbo].[Locations] ([LocationId], [City], [State], [Country], [RosterId], [Latitude], [Longitude]) VALUES (87, N'Lansing', N'Michigan', N'United States', 87, 42.732535, -84.5555347)
INSERT [dbo].[Locations] ([LocationId], [City], [State], [Country], [RosterId], [Latitude], [Longitude]) VALUES (88, N'Lansing', N'Michigan', N'United States', 88, 42.732535, -84.5555347)
INSERT [dbo].[Locations] ([LocationId], [City], [State], [Country], [RosterId], [Latitude], [Longitude]) VALUES (89, N'Lansing', N'Michigan', N'United States', 89, 42.732535, -84.5555347)
INSERT [dbo].[Locations] ([LocationId], [City], [State], [Country], [RosterId], [Latitude], [Longitude]) VALUES (90, N'Lansing', N'Michigan', N'United States', 90, 42.732535, -84.5555347)
INSERT [dbo].[Locations] ([LocationId], [City], [State], [Country], [RosterId], [Latitude], [Longitude]) VALUES (91, N'Lansing', N'Michigan', N'United States', 91, 42.732535, -84.5555347)
INSERT [dbo].[Locations] ([LocationId], [City], [State], [Country], [RosterId], [Latitude], [Longitude]) VALUES (92, N'Lansing', N'Michigan', N'United States', 92, 42.732535, -84.5555347)
INSERT [dbo].[Locations] ([LocationId], [City], [State], [Country], [RosterId], [Latitude], [Longitude]) VALUES (93, N'Lansing', N'Michigan', N'United States', 93, 42.732535, -84.5555347)
INSERT [dbo].[Locations] ([LocationId], [City], [State], [Country], [RosterId], [Latitude], [Longitude]) VALUES (94, N'Lansing', N'Michigan', N'United States', 94, 42.732535, -84.5555347)
INSERT [dbo].[Locations] ([LocationId], [City], [State], [Country], [RosterId], [Latitude], [Longitude]) VALUES (95, N'Lansing', N'Michigan', N'United States', 95, 42.732535, -84.5555347)
INSERT [dbo].[Locations] ([LocationId], [City], [State], [Country], [RosterId], [Latitude], [Longitude]) VALUES (96, N'Lansing', N'Michigan', N'United States', 96, 42.732535, -84.5555347)
INSERT [dbo].[Locations] ([LocationId], [City], [State], [Country], [RosterId], [Latitude], [Longitude]) VALUES (97, N'Lansing', N'Michigan', N'United States', 97, 42.732535, -84.5555347)
INSERT [dbo].[Locations] ([LocationId], [City], [State], [Country], [RosterId], [Latitude], [Longitude]) VALUES (98, N'Lansing', N'Michigan', N'United States', 98, 42.732535, -84.5555347)
INSERT [dbo].[Locations] ([LocationId], [City], [State], [Country], [RosterId], [Latitude], [Longitude]) VALUES (99, N'Lansing', N'Michigan', N'United States', 99, 42.732535, -84.5555347)
INSERT [dbo].[Locations] ([LocationId], [City], [State], [Country], [RosterId], [Latitude], [Longitude]) VALUES (100, N'Lansing', N'Michigan', N'United States', 100, 42.732535, -84.5555347)
INSERT [dbo].[Locations] ([LocationId], [City], [State], [Country], [RosterId], [Latitude], [Longitude]) VALUES (101, N'Lansing', N'Michigan', N'United States', 101, 42.732535, -84.5555347)
GO
INSERT [dbo].[Locations] ([LocationId], [City], [State], [Country], [RosterId], [Latitude], [Longitude]) VALUES (102, N'Lansing', N'Michigan', N'United States', 102, 42.732535, -84.5555347)
INSERT [dbo].[Locations] ([LocationId], [City], [State], [Country], [RosterId], [Latitude], [Longitude]) VALUES (103, N'Lansing', N'Michigan', N'United States', 103, 42.732535, -84.5555347)
INSERT [dbo].[Locations] ([LocationId], [City], [State], [Country], [RosterId], [Latitude], [Longitude]) VALUES (104, N'Lansing', N'Michigan', N'United States', 104, 42.732535, -84.5555347)
INSERT [dbo].[Locations] ([LocationId], [City], [State], [Country], [RosterId], [Latitude], [Longitude]) VALUES (105, N'Lansing', N'Michigan', N'United States', 105, 42.732535, -84.5555347)
INSERT [dbo].[Locations] ([LocationId], [City], [State], [Country], [RosterId], [Latitude], [Longitude]) VALUES (106, N'Lansing', N'Michigan', N'United States', 106, 42.732535, -84.5555347)
INSERT [dbo].[Locations] ([LocationId], [City], [State], [Country], [RosterId], [Latitude], [Longitude]) VALUES (107, N'Lansing', N'Michigan', N'United States', 107, 42.732535, -84.5555347)
INSERT [dbo].[Locations] ([LocationId], [City], [State], [Country], [RosterId], [Latitude], [Longitude]) VALUES (108, N'Lansing', N'Michigan', N'United States', 108, 42.732535, -84.5555347)
INSERT [dbo].[Locations] ([LocationId], [City], [State], [Country], [RosterId], [Latitude], [Longitude]) VALUES (109, N'Lansing', N'Michigan', N'United States', 109, 42.732535, -84.5555347)
INSERT [dbo].[Locations] ([LocationId], [City], [State], [Country], [RosterId], [Latitude], [Longitude]) VALUES (110, N'Lansing', N'Michigan', N'United States', 110, 42.732535, -84.5555347)
INSERT [dbo].[Locations] ([LocationId], [City], [State], [Country], [RosterId], [Latitude], [Longitude]) VALUES (111, N'Lansing', N'Michigan', N'United States', 111, 42.732535, -84.5555347)
INSERT [dbo].[Locations] ([LocationId], [City], [State], [Country], [RosterId], [Latitude], [Longitude]) VALUES (112, N'Lansing', N'Michigan', N'United States', 112, 42.732535, -84.5555347)
INSERT [dbo].[Locations] ([LocationId], [City], [State], [Country], [RosterId], [Latitude], [Longitude]) VALUES (113, N'Lansing', N'Michigan', N'United States', 113, 42.732535, -84.5555347)
INSERT [dbo].[Locations] ([LocationId], [City], [State], [Country], [RosterId], [Latitude], [Longitude]) VALUES (114, N'Lansing', N'Michigan', N'United States', 114, 42.732535, -84.5555347)
INSERT [dbo].[Locations] ([LocationId], [City], [State], [Country], [RosterId], [Latitude], [Longitude]) VALUES (115, N'Lansing', N'Michigan', N'United States', 115, 42.732535, -84.5555347)
INSERT [dbo].[Locations] ([LocationId], [City], [State], [Country], [RosterId], [Latitude], [Longitude]) VALUES (116, N'Lansing', N'Michigan', N'United States', 116, 42.732535, -84.5555347)
INSERT [dbo].[Locations] ([LocationId], [City], [State], [Country], [RosterId], [Latitude], [Longitude]) VALUES (117, N'Lansing', N'Michigan', N'United States', 117, 42.732535, -84.5555347)
INSERT [dbo].[Locations] ([LocationId], [City], [State], [Country], [RosterId], [Latitude], [Longitude]) VALUES (118, N'Lansing', N'Michigan', N'United States', 118, 42.732535, -84.5555347)
INSERT [dbo].[Locations] ([LocationId], [City], [State], [Country], [RosterId], [Latitude], [Longitude]) VALUES (119, N'Lansing', N'Michigan', N'United States', 119, 42.732535, -84.5555347)
INSERT [dbo].[Locations] ([LocationId], [City], [State], [Country], [RosterId], [Latitude], [Longitude]) VALUES (120, N'Lansing', N'Michigan', N'United States', 120, 42.732535, -84.5555347)
INSERT [dbo].[Locations] ([LocationId], [City], [State], [Country], [RosterId], [Latitude], [Longitude]) VALUES (121, N'Lansing', N'Michigan', N'United States', 121, 42.732535, -84.5555347)
INSERT [dbo].[Locations] ([LocationId], [City], [State], [Country], [RosterId], [Latitude], [Longitude]) VALUES (122, N'Lansing', N'Michigan', N'United States', 122, 42.732535, -84.5555347)
INSERT [dbo].[Locations] ([LocationId], [City], [State], [Country], [RosterId], [Latitude], [Longitude]) VALUES (123, N'Lansing', N'Michigan', N'United States', 123, 42.732535, -84.5555347)
INSERT [dbo].[Locations] ([LocationId], [City], [State], [Country], [RosterId], [Latitude], [Longitude]) VALUES (124, N'Lansing', N'Michigan', N'United States', 124, 42.732535, -84.5555347)
INSERT [dbo].[Locations] ([LocationId], [City], [State], [Country], [RosterId], [Latitude], [Longitude]) VALUES (125, N'Lansing', N'Michigan', N'United States', 125, 42.732535, -84.5555347)
INSERT [dbo].[Locations] ([LocationId], [City], [State], [Country], [RosterId], [Latitude], [Longitude]) VALUES (126, N'Lansing', N'Michigan', N'United States', 126, 42.732535, -84.5555347)
INSERT [dbo].[Locations] ([LocationId], [City], [State], [Country], [RosterId], [Latitude], [Longitude]) VALUES (127, N'Lansing', N'Michigan', N'United States', 127, 42.732535, -84.5555347)
INSERT [dbo].[Locations] ([LocationId], [City], [State], [Country], [RosterId], [Latitude], [Longitude]) VALUES (128, N'Lansing', N'Michigan', N'United States', 128, 42.732535, -84.5555347)
INSERT [dbo].[Locations] ([LocationId], [City], [State], [Country], [RosterId], [Latitude], [Longitude]) VALUES (129, N'Lansing', N'Michigan', N'United States', 129, 42.732535, -84.5555347)
INSERT [dbo].[Locations] ([LocationId], [City], [State], [Country], [RosterId], [Latitude], [Longitude]) VALUES (130, N'Lansing', N'Michigan', N'United States', 130, 42.732535, -84.5555347)
INSERT [dbo].[Locations] ([LocationId], [City], [State], [Country], [RosterId], [Latitude], [Longitude]) VALUES (131, N'Lansing', N'Michigan', N'United States', 131, 42.732535, -84.5555347)
INSERT [dbo].[Locations] ([LocationId], [City], [State], [Country], [RosterId], [Latitude], [Longitude]) VALUES (132, N'Lansing', N'Michigan', N'United States', 132, 42.732535, -84.5555347)
INSERT [dbo].[Locations] ([LocationId], [City], [State], [Country], [RosterId], [Latitude], [Longitude]) VALUES (133, N'Lansing', N'Michigan', N'United States', 133, 42.732535, -84.5555347)
INSERT [dbo].[Locations] ([LocationId], [City], [State], [Country], [RosterId], [Latitude], [Longitude]) VALUES (134, N'Lansing', N'Michigan', N'United States', 134, 42.732535, -84.5555347)
INSERT [dbo].[Locations] ([LocationId], [City], [State], [Country], [RosterId], [Latitude], [Longitude]) VALUES (135, N'Lansing', N'Michigan', N'United States', 135, 42.732535, -84.5555347)
INSERT [dbo].[Locations] ([LocationId], [City], [State], [Country], [RosterId], [Latitude], [Longitude]) VALUES (136, N'Lansing', N'Michigan', N'United States', 136, 42.732535, -84.5555347)
INSERT [dbo].[Locations] ([LocationId], [City], [State], [Country], [RosterId], [Latitude], [Longitude]) VALUES (137, N'Lansing', N'Michigan', N'United States', 137, 42.732535, -84.5555347)
INSERT [dbo].[Locations] ([LocationId], [City], [State], [Country], [RosterId], [Latitude], [Longitude]) VALUES (138, N'Lansing', N'Michigan', N'United States', 138, 42.732535, -84.5555347)
INSERT [dbo].[Locations] ([LocationId], [City], [State], [Country], [RosterId], [Latitude], [Longitude]) VALUES (139, N'Lansing', N'Michigan', N'United States', 139, 42.732535, -84.5555347)
INSERT [dbo].[Locations] ([LocationId], [City], [State], [Country], [RosterId], [Latitude], [Longitude]) VALUES (140, N'Lansing', N'Michigan', N'United States', 140, 42.732535, -84.5555347)
INSERT [dbo].[Locations] ([LocationId], [City], [State], [Country], [RosterId], [Latitude], [Longitude]) VALUES (141, N'Lansing', N'Michigan', N'United States', 141, 42.732535, -84.5555347)
INSERT [dbo].[Locations] ([LocationId], [City], [State], [Country], [RosterId], [Latitude], [Longitude]) VALUES (142, N'Lansing', N'Michigan', N'United States', 142, 42.732535, -84.5555347)
INSERT [dbo].[Locations] ([LocationId], [City], [State], [Country], [RosterId], [Latitude], [Longitude]) VALUES (143, N'Lansing', N'Michigan', N'United States', 143, 42.732535, -84.5555347)
INSERT [dbo].[Locations] ([LocationId], [City], [State], [Country], [RosterId], [Latitude], [Longitude]) VALUES (144, N'Lansing', N'Michigan', N'United States', 144, 42.732535, -84.5555347)
INSERT [dbo].[Locations] ([LocationId], [City], [State], [Country], [RosterId], [Latitude], [Longitude]) VALUES (145, N'Lansing', N'Michigan', N'United States', 145, 42.732535, -84.5555347)
INSERT [dbo].[Locations] ([LocationId], [City], [State], [Country], [RosterId], [Latitude], [Longitude]) VALUES (146, N'Lansing', N'Michigan', N'United States', 146, 42.732535, -84.5555347)
INSERT [dbo].[Locations] ([LocationId], [City], [State], [Country], [RosterId], [Latitude], [Longitude]) VALUES (147, N'Lansing', N'Michigan', N'United States', 147, 42.732535, -84.5555347)
INSERT [dbo].[Locations] ([LocationId], [City], [State], [Country], [RosterId], [Latitude], [Longitude]) VALUES (148, N'Lansing', N'Michigan', N'United States', 148, 42.732535, -84.5555347)
INSERT [dbo].[Locations] ([LocationId], [City], [State], [Country], [RosterId], [Latitude], [Longitude]) VALUES (149, N'Lansing', N'Michigan', N'United States', 149, 42.732535, -84.5555347)
INSERT [dbo].[Locations] ([LocationId], [City], [State], [Country], [RosterId], [Latitude], [Longitude]) VALUES (150, N'Lansing', N'Michigan', N'United States', 150, 42.732535, -84.5555347)
INSERT [dbo].[Locations] ([LocationId], [City], [State], [Country], [RosterId], [Latitude], [Longitude]) VALUES (151, N'Lansing', N'Michigan', N'United States', 151, 42.732535, -84.5555347)
INSERT [dbo].[Locations] ([LocationId], [City], [State], [Country], [RosterId], [Latitude], [Longitude]) VALUES (152, N'Lansing', N'Michigan', N'United States', 152, 42.732535, -84.5555347)
INSERT [dbo].[Locations] ([LocationId], [City], [State], [Country], [RosterId], [Latitude], [Longitude]) VALUES (153, N'Lansing', N'Michigan', N'United States', 153, 42.732535, -84.5555347)
INSERT [dbo].[Locations] ([LocationId], [City], [State], [Country], [RosterId], [Latitude], [Longitude]) VALUES (154, N'Lansing', N'Michigan', N'United States', 154, 42.732535, -84.5555347)
INSERT [dbo].[Locations] ([LocationId], [City], [State], [Country], [RosterId], [Latitude], [Longitude]) VALUES (155, N'Lansing', N'Michigan', N'United States', 155, 42.732535, -84.5555347)
INSERT [dbo].[Locations] ([LocationId], [City], [State], [Country], [RosterId], [Latitude], [Longitude]) VALUES (156, N'Lansing', N'Michigan', N'United States', 156, 42.732535, -84.5555347)
INSERT [dbo].[Locations] ([LocationId], [City], [State], [Country], [RosterId], [Latitude], [Longitude]) VALUES (157, N'Lansing', N'Michigan', N'United States', 157, 42.732535, -84.5555347)
INSERT [dbo].[Locations] ([LocationId], [City], [State], [Country], [RosterId], [Latitude], [Longitude]) VALUES (158, N'Lansing', N'Michigan', N'United States', 158, 42.732535, -84.5555347)
INSERT [dbo].[Locations] ([LocationId], [City], [State], [Country], [RosterId], [Latitude], [Longitude]) VALUES (159, N'Lansing', N'Michigan', N'United States', 159, 42.732535, -84.5555347)
INSERT [dbo].[Locations] ([LocationId], [City], [State], [Country], [RosterId], [Latitude], [Longitude]) VALUES (160, N'Lansing', N'Michigan', N'United States', 160, 42.732535, -84.5555347)
INSERT [dbo].[Locations] ([LocationId], [City], [State], [Country], [RosterId], [Latitude], [Longitude]) VALUES (161, N'Lansing', N'Michigan', N'United States', 161, 42.732535, -84.5555347)
INSERT [dbo].[Locations] ([LocationId], [City], [State], [Country], [RosterId], [Latitude], [Longitude]) VALUES (162, N'Lansing', N'Michigan', N'United States', 162, 42.732535, -84.5555347)
INSERT [dbo].[Locations] ([LocationId], [City], [State], [Country], [RosterId], [Latitude], [Longitude]) VALUES (163, N'Lansing', N'Michigan', N'United States', 163, 42.732535, -84.5555347)
INSERT [dbo].[Locations] ([LocationId], [City], [State], [Country], [RosterId], [Latitude], [Longitude]) VALUES (164, N'Lansing', N'Michigan', N'United States', 164, 42.732535, -84.5555347)
INSERT [dbo].[Locations] ([LocationId], [City], [State], [Country], [RosterId], [Latitude], [Longitude]) VALUES (165, N'Lansing', N'Michigan', N'United States', 165, 42.732535, -84.5555347)
INSERT [dbo].[Locations] ([LocationId], [City], [State], [Country], [RosterId], [Latitude], [Longitude]) VALUES (166, N'Lansing', N'Michigan', N'United States', 166, 42.732535, -84.5555347)
INSERT [dbo].[Locations] ([LocationId], [City], [State], [Country], [RosterId], [Latitude], [Longitude]) VALUES (167, N'Lansing', N'Michigan', N'United States', 167, 42.732535, -84.5555347)
INSERT [dbo].[Locations] ([LocationId], [City], [State], [Country], [RosterId], [Latitude], [Longitude]) VALUES (168, N'Lansing', N'Michigan', N'United States', 168, 42.732535, -84.5555347)
INSERT [dbo].[Locations] ([LocationId], [City], [State], [Country], [RosterId], [Latitude], [Longitude]) VALUES (169, N'Lansing', N'Michigan', N'United States', 169, 42.732535, -84.5555347)
INSERT [dbo].[Locations] ([LocationId], [City], [State], [Country], [RosterId], [Latitude], [Longitude]) VALUES (170, N'Lansing', N'Michigan', N'United States', 170, 42.732535, -84.5555347)
INSERT [dbo].[Locations] ([LocationId], [City], [State], [Country], [RosterId], [Latitude], [Longitude]) VALUES (171, N'Lansing', N'Michigan', N'United States', 171, 42.732535, -84.5555347)
INSERT [dbo].[Locations] ([LocationId], [City], [State], [Country], [RosterId], [Latitude], [Longitude]) VALUES (172, N'Lansing', N'Michigan', N'United States', 172, 42.732535, -84.5555347)
INSERT [dbo].[Locations] ([LocationId], [City], [State], [Country], [RosterId], [Latitude], [Longitude]) VALUES (173, N'Lansing', N'Michigan', N'United States', 173, 42.732535, -84.5555347)
INSERT [dbo].[Locations] ([LocationId], [City], [State], [Country], [RosterId], [Latitude], [Longitude]) VALUES (174, N'Lansing', N'Michigan', N'United States', 174, 42.732535, -84.5555347)
INSERT [dbo].[Locations] ([LocationId], [City], [State], [Country], [RosterId], [Latitude], [Longitude]) VALUES (175, N'Lansing', N'Michigan', N'United States', 175, 42.732535, -84.5555347)
INSERT [dbo].[Locations] ([LocationId], [City], [State], [Country], [RosterId], [Latitude], [Longitude]) VALUES (176, N'Lansing', N'Michigan', N'United States', 176, 42.732535, -84.5555347)
INSERT [dbo].[Locations] ([LocationId], [City], [State], [Country], [RosterId], [Latitude], [Longitude]) VALUES (177, N'Lansing', N'Michigan', N'United States', 177, 42.732535, -84.5555347)
INSERT [dbo].[Locations] ([LocationId], [City], [State], [Country], [RosterId], [Latitude], [Longitude]) VALUES (178, N'Lansing', N'Michigan', N'United States', 178, 42.732535, -84.5555347)
INSERT [dbo].[Locations] ([LocationId], [City], [State], [Country], [RosterId], [Latitude], [Longitude]) VALUES (179, N'Lansing', N'Michigan', N'United States', 179, 42.732535, -84.5555347)
INSERT [dbo].[Locations] ([LocationId], [City], [State], [Country], [RosterId], [Latitude], [Longitude]) VALUES (180, N'Lansing', N'Michigan', N'United States', 180, 42.732535, -84.5555347)
INSERT [dbo].[Locations] ([LocationId], [City], [State], [Country], [RosterId], [Latitude], [Longitude]) VALUES (181, N'Lansing', N'Michigan', N'United States', 181, 42.732535, -84.5555347)
INSERT [dbo].[Locations] ([LocationId], [City], [State], [Country], [RosterId], [Latitude], [Longitude]) VALUES (182, N'Lansing', N'Michigan', N'United States', 182, 42.732535, -84.5555347)
INSERT [dbo].[Locations] ([LocationId], [City], [State], [Country], [RosterId], [Latitude], [Longitude]) VALUES (183, N'Lansing', N'Michigan', N'United States', 183, 42.732535, -84.5555347)
INSERT [dbo].[Locations] ([LocationId], [City], [State], [Country], [RosterId], [Latitude], [Longitude]) VALUES (184, N'Lansing', N'Michigan', N'United States', 184, 42.732535, -84.5555347)
INSERT [dbo].[Locations] ([LocationId], [City], [State], [Country], [RosterId], [Latitude], [Longitude]) VALUES (185, N'Lansing', N'Michigan', N'United States', 185, 42.732535, -84.5555347)
INSERT [dbo].[Locations] ([LocationId], [City], [State], [Country], [RosterId], [Latitude], [Longitude]) VALUES (186, N'Lansing', N'Michigan', N'United States', 186, 42.732535, -84.5555347)
INSERT [dbo].[Locations] ([LocationId], [City], [State], [Country], [RosterId], [Latitude], [Longitude]) VALUES (187, N'Lansing', N'Michigan', N'United States', 187, 42.732535, -84.5555347)
INSERT [dbo].[Locations] ([LocationId], [City], [State], [Country], [RosterId], [Latitude], [Longitude]) VALUES (188, N'Lansing', N'Michigan', N'United States', 188, 42.732535, -84.5555347)
INSERT [dbo].[Locations] ([LocationId], [City], [State], [Country], [RosterId], [Latitude], [Longitude]) VALUES (189, N'Lansing', N'Michigan', N'United States', 189, 42.732535, -84.5555347)
INSERT [dbo].[Locations] ([LocationId], [City], [State], [Country], [RosterId], [Latitude], [Longitude]) VALUES (190, N'Lansing', N'Michigan', N'United States', 190, 42.732535, -84.5555347)
INSERT [dbo].[Locations] ([LocationId], [City], [State], [Country], [RosterId], [Latitude], [Longitude]) VALUES (191, N'Lansing', N'Michigan', N'United States', 191, 42.732535, -84.5555347)
INSERT [dbo].[Locations] ([LocationId], [City], [State], [Country], [RosterId], [Latitude], [Longitude]) VALUES (192, N'Lansing', N'Michigan', N'United States', 192, 42.732535, -84.5555347)
INSERT [dbo].[Locations] ([LocationId], [City], [State], [Country], [RosterId], [Latitude], [Longitude]) VALUES (193, N'Lansing', N'Michigan', N'United States', 193, 42.732535, -84.5555347)
INSERT [dbo].[Locations] ([LocationId], [City], [State], [Country], [RosterId], [Latitude], [Longitude]) VALUES (194, N'Lansing', N'Michigan', N'United States', 194, 42.732535, -84.5555347)
INSERT [dbo].[Locations] ([LocationId], [City], [State], [Country], [RosterId], [Latitude], [Longitude]) VALUES (195, N'Lansing', N'Michigan', N'United States', 195, 42.732535, -84.5555347)
INSERT [dbo].[Locations] ([LocationId], [City], [State], [Country], [RosterId], [Latitude], [Longitude]) VALUES (196, N'Lansing', N'Michigan', N'United States', 196, 42.732535, -84.5555347)
INSERT [dbo].[Locations] ([LocationId], [City], [State], [Country], [RosterId], [Latitude], [Longitude]) VALUES (197, N'Lansing', N'Michigan', N'United States', 197, 42.732535, -84.5555347)
INSERT [dbo].[Locations] ([LocationId], [City], [State], [Country], [RosterId], [Latitude], [Longitude]) VALUES (198, N'Lansing', N'Michigan', N'United States', 198, 42.732535, -84.5555347)
INSERT [dbo].[Locations] ([LocationId], [City], [State], [Country], [RosterId], [Latitude], [Longitude]) VALUES (199, N'Lansing', N'Michigan', N'United States', 199, 42.732535, -84.5555347)
INSERT [dbo].[Locations] ([LocationId], [City], [State], [Country], [RosterId], [Latitude], [Longitude]) VALUES (200, N'Lansing', N'Michigan', N'United States', 200, 42.732535, -84.5555347)
INSERT [dbo].[Locations] ([LocationId], [City], [State], [Country], [RosterId], [Latitude], [Longitude]) VALUES (201, N'Lansing', N'Michigan', N'United States', 201, 42.732535, -84.5555347)
GO
INSERT [dbo].[Locations] ([LocationId], [City], [State], [Country], [RosterId], [Latitude], [Longitude]) VALUES (202, N'Lansing', N'Michigan', N'United States', 202, 42.732535, -84.5555347)
INSERT [dbo].[Locations] ([LocationId], [City], [State], [Country], [RosterId], [Latitude], [Longitude]) VALUES (203, N'Lansing', N'Michigan', N'United States', 203, 42.732535, -84.5555347)
INSERT [dbo].[Locations] ([LocationId], [City], [State], [Country], [RosterId], [Latitude], [Longitude]) VALUES (204, N'Lansing', N'Michigan', N'United States', 204, 42.732535, -84.5555347)
INSERT [dbo].[Locations] ([LocationId], [City], [State], [Country], [RosterId], [Latitude], [Longitude]) VALUES (205, N'Lansing', N'Michigan', N'United States', 205, 42.732535, -84.5555347)
INSERT [dbo].[Locations] ([LocationId], [City], [State], [Country], [RosterId], [Latitude], [Longitude]) VALUES (206, N'Lansing', N'Michigan', N'United States', 206, 42.732535, -84.5555347)
INSERT [dbo].[Locations] ([LocationId], [City], [State], [Country], [RosterId], [Latitude], [Longitude]) VALUES (207, N'Lansing', N'Michigan', N'United States', 207, 42.732535, -84.5555347)
INSERT [dbo].[Locations] ([LocationId], [City], [State], [Country], [RosterId], [Latitude], [Longitude]) VALUES (208, N'Lansing', N'Michigan', N'United States', 208, 42.732535, -84.5555347)
INSERT [dbo].[Locations] ([LocationId], [City], [State], [Country], [RosterId], [Latitude], [Longitude]) VALUES (209, N'Lansing', N'Michigan', N'United States', 209, 42.732535, -84.5555347)
INSERT [dbo].[Locations] ([LocationId], [City], [State], [Country], [RosterId], [Latitude], [Longitude]) VALUES (210, N'Lansing', N'Michigan', N'United States', 210, 42.732535, -84.5555347)
INSERT [dbo].[Locations] ([LocationId], [City], [State], [Country], [RosterId], [Latitude], [Longitude]) VALUES (211, N'Lansing', N'Michigan', N'United States', 211, 42.732535, -84.5555347)
INSERT [dbo].[Locations] ([LocationId], [City], [State], [Country], [RosterId], [Latitude], [Longitude]) VALUES (212, N'Lansing', N'Michigan', N'United States', 212, 42.732535, -84.5555347)
INSERT [dbo].[Locations] ([LocationId], [City], [State], [Country], [RosterId], [Latitude], [Longitude]) VALUES (213, N'Lansing', N'Michigan', N'United States', 213, 42.732535, -84.5555347)
INSERT [dbo].[Locations] ([LocationId], [City], [State], [Country], [RosterId], [Latitude], [Longitude]) VALUES (214, N'Lansing', N'Michigan', N'United States', 214, 42.732535, -84.5555347)
INSERT [dbo].[Locations] ([LocationId], [City], [State], [Country], [RosterId], [Latitude], [Longitude]) VALUES (215, N'Lansing', N'Michigan', N'United States', 215, 42.732535, -84.5555347)
INSERT [dbo].[Locations] ([LocationId], [City], [State], [Country], [RosterId], [Latitude], [Longitude]) VALUES (216, N'Lansing', N'Michigan', N'United States', 216, 42.732535, -84.5555347)
INSERT [dbo].[Locations] ([LocationId], [City], [State], [Country], [RosterId], [Latitude], [Longitude]) VALUES (217, N'Lansing', N'Michigan', N'United States', 217, 42.732535, -84.5555347)
INSERT [dbo].[Locations] ([LocationId], [City], [State], [Country], [RosterId], [Latitude], [Longitude]) VALUES (218, N'Lansing', N'Michigan', N'United States', 218, 42.732535, -84.5555347)
INSERT [dbo].[Locations] ([LocationId], [City], [State], [Country], [RosterId], [Latitude], [Longitude]) VALUES (219, N'Lansing', N'Michigan', N'United States', 219, 42.732535, -84.5555347)
INSERT [dbo].[Locations] ([LocationId], [City], [State], [Country], [RosterId], [Latitude], [Longitude]) VALUES (220, N'Lansing', N'Michigan', N'United States', 220, 42.732535, -84.5555347)
INSERT [dbo].[Locations] ([LocationId], [City], [State], [Country], [RosterId], [Latitude], [Longitude]) VALUES (221, N'Lansing', N'Michigan', N'United States', 221, 42.732535, -84.5555347)
INSERT [dbo].[Locations] ([LocationId], [City], [State], [Country], [RosterId], [Latitude], [Longitude]) VALUES (222, N'Lansing', N'Michigan', N'United States', 222, 42.732535, -84.5555347)
INSERT [dbo].[Locations] ([LocationId], [City], [State], [Country], [RosterId], [Latitude], [Longitude]) VALUES (223, N'Lansing', N'Michigan', N'United States', 223, 42.732535, -84.5555347)
INSERT [dbo].[Locations] ([LocationId], [City], [State], [Country], [RosterId], [Latitude], [Longitude]) VALUES (224, N'Lansing', N'Michigan', N'United States', 224, 42.732535, -84.5555347)
INSERT [dbo].[Locations] ([LocationId], [City], [State], [Country], [RosterId], [Latitude], [Longitude]) VALUES (225, N'Lansing', N'Michigan', N'United States', 225, 42.732535, -84.5555347)
INSERT [dbo].[Locations] ([LocationId], [City], [State], [Country], [RosterId], [Latitude], [Longitude]) VALUES (226, N'Lansing', N'Michigan', N'United States', 226, 42.732535, -84.5555347)
INSERT [dbo].[Locations] ([LocationId], [City], [State], [Country], [RosterId], [Latitude], [Longitude]) VALUES (227, N'Lansing', N'Michigan', N'United States', 227, 42.732535, -84.5555347)
INSERT [dbo].[Locations] ([LocationId], [City], [State], [Country], [RosterId], [Latitude], [Longitude]) VALUES (228, N'Lansing', N'Michigan', N'United States', 228, 42.732535, -84.5555347)
INSERT [dbo].[Locations] ([LocationId], [City], [State], [Country], [RosterId], [Latitude], [Longitude]) VALUES (229, N'Lansing', N'Michigan', N'United States', 229, 42.732535, -84.5555347)
INSERT [dbo].[Locations] ([LocationId], [City], [State], [Country], [RosterId], [Latitude], [Longitude]) VALUES (230, N'Lansing', N'Michigan', N'United States', 230, 42.732535, -84.5555347)
INSERT [dbo].[Locations] ([LocationId], [City], [State], [Country], [RosterId], [Latitude], [Longitude]) VALUES (231, N'Lansing', N'Michigan', N'United States', 231, 42.732535, -84.5555347)
INSERT [dbo].[Locations] ([LocationId], [City], [State], [Country], [RosterId], [Latitude], [Longitude]) VALUES (232, N'Lansing', N'Michigan', N'United States', 232, 42.732535, -84.5555347)
INSERT [dbo].[Locations] ([LocationId], [City], [State], [Country], [RosterId], [Latitude], [Longitude]) VALUES (233, N'Lansing', N'Michigan', N'United States', 233, 42.732535, -84.5555347)
INSERT [dbo].[Locations] ([LocationId], [City], [State], [Country], [RosterId], [Latitude], [Longitude]) VALUES (234, N'Lansing', N'Michigan', N'United States', 234, 42.732535, -84.5555347)
INSERT [dbo].[Locations] ([LocationId], [City], [State], [Country], [RosterId], [Latitude], [Longitude]) VALUES (235, N'Lansing', N'Michigan', N'United States', 235, 42.732535, -84.5555347)
INSERT [dbo].[Locations] ([LocationId], [City], [State], [Country], [RosterId], [Latitude], [Longitude]) VALUES (236, N'Lansing', N'Michigan', N'United States', 236, 42.732535, -84.5555347)
INSERT [dbo].[Locations] ([LocationId], [City], [State], [Country], [RosterId], [Latitude], [Longitude]) VALUES (237, N'Lansing', N'Michigan', N'United States', 237, 42.732535, -84.5555347)
INSERT [dbo].[Locations] ([LocationId], [City], [State], [Country], [RosterId], [Latitude], [Longitude]) VALUES (238, N'Lansing', N'Michigan', N'United States', 238, 42.732535, -84.5555347)
INSERT [dbo].[Locations] ([LocationId], [City], [State], [Country], [RosterId], [Latitude], [Longitude]) VALUES (239, N'Lansing', N'Michigan', N'United States', 239, 42.732535, -84.5555347)
INSERT [dbo].[Locations] ([LocationId], [City], [State], [Country], [RosterId], [Latitude], [Longitude]) VALUES (240, N'Lansing', N'Michigan', N'United States', 240, 42.732535, -84.5555347)
INSERT [dbo].[Locations] ([LocationId], [City], [State], [Country], [RosterId], [Latitude], [Longitude]) VALUES (241, N'Lansing', N'Michigan', N'United States', 241, 42.732535, -84.5555347)
INSERT [dbo].[Locations] ([LocationId], [City], [State], [Country], [RosterId], [Latitude], [Longitude]) VALUES (242, N'Lansing', N'Michigan', N'United States', 242, 42.732535, -84.5555347)
INSERT [dbo].[Locations] ([LocationId], [City], [State], [Country], [RosterId], [Latitude], [Longitude]) VALUES (243, N'Lansing', N'Michigan', N'United States', 243, 42.732535, -84.5555347)
INSERT [dbo].[Locations] ([LocationId], [City], [State], [Country], [RosterId], [Latitude], [Longitude]) VALUES (244, N'Lansing', N'Michigan', N'United States', 244, 42.732535, -84.5555347)
INSERT [dbo].[Locations] ([LocationId], [City], [State], [Country], [RosterId], [Latitude], [Longitude]) VALUES (245, N'Lansing', N'Michigan', N'United States', 245, 42.732535, -84.5555347)
INSERT [dbo].[Locations] ([LocationId], [City], [State], [Country], [RosterId], [Latitude], [Longitude]) VALUES (246, N'Lansing', N'Michigan', N'United States', 246, 42.732535, -84.5555347)
INSERT [dbo].[Locations] ([LocationId], [City], [State], [Country], [RosterId], [Latitude], [Longitude]) VALUES (247, N'Lansing', N'Michigan', N'United States', 247, 42.732535, -84.5555347)
INSERT [dbo].[Locations] ([LocationId], [City], [State], [Country], [RosterId], [Latitude], [Longitude]) VALUES (248, N'Lansing', N'Michigan', N'United States', 248, 42.732535, -84.5555347)
INSERT [dbo].[Locations] ([LocationId], [City], [State], [Country], [RosterId], [Latitude], [Longitude]) VALUES (249, N'Lansing', N'Michigan', N'United States', 249, 42.732535, -84.5555347)
INSERT [dbo].[Locations] ([LocationId], [City], [State], [Country], [RosterId], [Latitude], [Longitude]) VALUES (250, N'Lansing', N'Michigan', N'United States', 250, 42.732535, -84.5555347)
INSERT [dbo].[Locations] ([LocationId], [City], [State], [Country], [RosterId], [Latitude], [Longitude]) VALUES (251, N'Lansing', N'Michigan', N'United States', 251, 42.732535, -84.5555347)
INSERT [dbo].[Locations] ([LocationId], [City], [State], [Country], [RosterId], [Latitude], [Longitude]) VALUES (252, N'Lansing', N'Michigan', N'United States', 252, 42.732535, -84.5555347)
INSERT [dbo].[Locations] ([LocationId], [City], [State], [Country], [RosterId], [Latitude], [Longitude]) VALUES (253, N'Lansing', N'Michigan', N'United States', 253, 42.732535, -84.5555347)
INSERT [dbo].[Locations] ([LocationId], [City], [State], [Country], [RosterId], [Latitude], [Longitude]) VALUES (254, N'Lansing', N'Michigan', N'United States', 254, 42.732535, -84.5555347)
INSERT [dbo].[Locations] ([LocationId], [City], [State], [Country], [RosterId], [Latitude], [Longitude]) VALUES (255, N'Lansing', N'Michigan', N'United States', 255, 42.732535, -84.5555347)
INSERT [dbo].[Locations] ([LocationId], [City], [State], [Country], [RosterId], [Latitude], [Longitude]) VALUES (256, N'Lansing', N'Michigan', N'United States', 256, 42.732535, -84.5555347)
INSERT [dbo].[Locations] ([LocationId], [City], [State], [Country], [RosterId], [Latitude], [Longitude]) VALUES (257, N'Lansing', N'Michigan', N'United States', 257, 42.732535, -84.5555347)
INSERT [dbo].[Locations] ([LocationId], [City], [State], [Country], [RosterId], [Latitude], [Longitude]) VALUES (258, N'Lansing', N'Michigan', N'United States', 258, 42.732535, -84.5555347)
INSERT [dbo].[Locations] ([LocationId], [City], [State], [Country], [RosterId], [Latitude], [Longitude]) VALUES (259, N'Lansing', N'Michigan', N'United States', 259, 42.732535, -84.5555347)
INSERT [dbo].[Locations] ([LocationId], [City], [State], [Country], [RosterId], [Latitude], [Longitude]) VALUES (260, N'Lansing', N'Michigan', N'United States', 260, 42.732535, -84.5555347)
INSERT [dbo].[Locations] ([LocationId], [City], [State], [Country], [RosterId], [Latitude], [Longitude]) VALUES (261, N'Lansing', N'Michigan', N'United States', 261, 42.732535, -84.5555347)
INSERT [dbo].[Locations] ([LocationId], [City], [State], [Country], [RosterId], [Latitude], [Longitude]) VALUES (262, N'Lansing', N'Michigan', N'United States', 262, 42.732535, -84.5555347)
INSERT [dbo].[Locations] ([LocationId], [City], [State], [Country], [RosterId], [Latitude], [Longitude]) VALUES (263, N'Lansing', N'Michigan', N'United States', 263, 42.732535, -84.5555347)
INSERT [dbo].[Locations] ([LocationId], [City], [State], [Country], [RosterId], [Latitude], [Longitude]) VALUES (264, N'Lansing', N'Michigan', N'United States', 264, 42.732535, -84.5555347)
INSERT [dbo].[Locations] ([LocationId], [City], [State], [Country], [RosterId], [Latitude], [Longitude]) VALUES (265, N'Lansing', N'Michigan', N'United States', 265, 42.732535, -84.5555347)
INSERT [dbo].[Locations] ([LocationId], [City], [State], [Country], [RosterId], [Latitude], [Longitude]) VALUES (266, N'Lansing', N'Michigan', N'United States', 266, 42.732535, -84.5555347)
INSERT [dbo].[Locations] ([LocationId], [City], [State], [Country], [RosterId], [Latitude], [Longitude]) VALUES (267, N'Lansing', N'Michigan', N'United States', 267, 42.732535, -84.5555347)
INSERT [dbo].[Locations] ([LocationId], [City], [State], [Country], [RosterId], [Latitude], [Longitude]) VALUES (268, N'Lansing', N'Michigan', N'United States', 268, 42.732535, -84.5555347)
INSERT [dbo].[Locations] ([LocationId], [City], [State], [Country], [RosterId], [Latitude], [Longitude]) VALUES (269, N'Lansing', N'Michigan', N'United States', 269, 42.732535, -84.5555347)
INSERT [dbo].[Locations] ([LocationId], [City], [State], [Country], [RosterId], [Latitude], [Longitude]) VALUES (270, N'Lansing', N'Michigan', N'United States', 270, 42.732535, -84.5555347)
INSERT [dbo].[Locations] ([LocationId], [City], [State], [Country], [RosterId], [Latitude], [Longitude]) VALUES (271, N'Lansing', N'Michigan', N'United States', 271, 42.732535, -84.5555347)
INSERT [dbo].[Locations] ([LocationId], [City], [State], [Country], [RosterId], [Latitude], [Longitude]) VALUES (272, N'Lansing', N'Michigan', N'United States', 272, 42.732535, -84.5555347)
INSERT [dbo].[Locations] ([LocationId], [City], [State], [Country], [RosterId], [Latitude], [Longitude]) VALUES (273, N'Lansing', N'Michigan', N'United States', 273, 42.732535, -84.5555347)
INSERT [dbo].[Locations] ([LocationId], [City], [State], [Country], [RosterId], [Latitude], [Longitude]) VALUES (274, N'Lansing', N'Michigan', N'United States', 274, 42.732535, -84.5555347)
INSERT [dbo].[Locations] ([LocationId], [City], [State], [Country], [RosterId], [Latitude], [Longitude]) VALUES (275, N'Lansing', N'Michigan', N'United States', 275, 42.732535, -84.5555347)
INSERT [dbo].[Locations] ([LocationId], [City], [State], [Country], [RosterId], [Latitude], [Longitude]) VALUES (276, N'Lansing', N'Michigan', N'United States', 276, 42.732535, -84.5555347)
INSERT [dbo].[Locations] ([LocationId], [City], [State], [Country], [RosterId], [Latitude], [Longitude]) VALUES (277, N'Lansing', N'Michigan', N'United States', 277, 42.732535, -84.5555347)
INSERT [dbo].[Locations] ([LocationId], [City], [State], [Country], [RosterId], [Latitude], [Longitude]) VALUES (278, N'Lansing', N'Michigan', N'United States', 278, 42.732535, -84.5555347)
INSERT [dbo].[Locations] ([LocationId], [City], [State], [Country], [RosterId], [Latitude], [Longitude]) VALUES (279, N'Lansing', N'Michigan', N'United States', 279, 42.732535, -84.5555347)
INSERT [dbo].[Locations] ([LocationId], [City], [State], [Country], [RosterId], [Latitude], [Longitude]) VALUES (280, N'Lansing', N'Michigan', N'United States', 280, 42.732535, -84.5555347)
INSERT [dbo].[Locations] ([LocationId], [City], [State], [Country], [RosterId], [Latitude], [Longitude]) VALUES (281, N'Lansing', N'Michigan', N'United States', 281, 42.732535, -84.5555347)
INSERT [dbo].[Locations] ([LocationId], [City], [State], [Country], [RosterId], [Latitude], [Longitude]) VALUES (282, N'Lansing', N'Michigan', N'United States', 282, 42.732535, -84.5555347)
INSERT [dbo].[Locations] ([LocationId], [City], [State], [Country], [RosterId], [Latitude], [Longitude]) VALUES (283, N'Lansing', N'Michigan', N'United States', 283, 42.732535, -84.5555347)
INSERT [dbo].[Locations] ([LocationId], [City], [State], [Country], [RosterId], [Latitude], [Longitude]) VALUES (284, N'Lansing', N'Michigan', N'United States', 284, 42.732535, -84.5555347)
INSERT [dbo].[Locations] ([LocationId], [City], [State], [Country], [RosterId], [Latitude], [Longitude]) VALUES (285, N'Lansing', N'Michigan', N'United States', 285, 42.732535, -84.5555347)
INSERT [dbo].[Locations] ([LocationId], [City], [State], [Country], [RosterId], [Latitude], [Longitude]) VALUES (286, N'Lansing', N'Michigan', N'United States', 286, 42.732535, -84.5555347)
INSERT [dbo].[Locations] ([LocationId], [City], [State], [Country], [RosterId], [Latitude], [Longitude]) VALUES (287, N'Lansing', N'Michigan', N'United States', 287, 42.732535, -84.5555347)
INSERT [dbo].[Locations] ([LocationId], [City], [State], [Country], [RosterId], [Latitude], [Longitude]) VALUES (288, N'Lansing', N'Michigan', N'United States', 288, 42.732535, -84.5555347)
INSERT [dbo].[Locations] ([LocationId], [City], [State], [Country], [RosterId], [Latitude], [Longitude]) VALUES (289, N'Lansing', N'Michigan', N'United States', 289, 42.732535, -84.5555347)
INSERT [dbo].[Locations] ([LocationId], [City], [State], [Country], [RosterId], [Latitude], [Longitude]) VALUES (290, N'Lansing', N'Michigan', N'United States', 290, 42.732535, -84.5555347)
INSERT [dbo].[Locations] ([LocationId], [City], [State], [Country], [RosterId], [Latitude], [Longitude]) VALUES (291, N'Lansing', N'Michigan', N'United States', 291, 42.732535, -84.5555347)
INSERT [dbo].[Locations] ([LocationId], [City], [State], [Country], [RosterId], [Latitude], [Longitude]) VALUES (292, N'Lansing', N'Michigan', N'United States', 292, 42.732535, -84.5555347)
INSERT [dbo].[Locations] ([LocationId], [City], [State], [Country], [RosterId], [Latitude], [Longitude]) VALUES (293, N'Lansing', N'Michigan', N'United States', 293, 42.732535, -84.5555347)
INSERT [dbo].[Locations] ([LocationId], [City], [State], [Country], [RosterId], [Latitude], [Longitude]) VALUES (294, N'Lansing', N'Michigan', N'United States', 294, 42.732535, -84.5555347)
INSERT [dbo].[Locations] ([LocationId], [City], [State], [Country], [RosterId], [Latitude], [Longitude]) VALUES (295, N'Lansing', N'Michigan', N'United States', 295, 42.732535, -84.5555347)
INSERT [dbo].[Locations] ([LocationId], [City], [State], [Country], [RosterId], [Latitude], [Longitude]) VALUES (296, N'Lansing', N'Michigan', N'United States', 296, 42.732535, -84.5555347)
INSERT [dbo].[Locations] ([LocationId], [City], [State], [Country], [RosterId], [Latitude], [Longitude]) VALUES (297, N'Lansing', N'Michigan', N'United States', 297, 42.732535, -84.5555347)
INSERT [dbo].[Locations] ([LocationId], [City], [State], [Country], [RosterId], [Latitude], [Longitude]) VALUES (298, N'Lansing', N'Michigan', N'United States', 298, 42.732535, -84.5555347)
INSERT [dbo].[Locations] ([LocationId], [City], [State], [Country], [RosterId], [Latitude], [Longitude]) VALUES (299, N'Lansing', N'Michigan', N'United States', 299, 42.732535, -84.5555347)
INSERT [dbo].[Locations] ([LocationId], [City], [State], [Country], [RosterId], [Latitude], [Longitude]) VALUES (300, N'Lansing', N'Michigan', N'United States', 300, 42.732535, -84.5555347)
INSERT [dbo].[Locations] ([LocationId], [City], [State], [Country], [RosterId], [Latitude], [Longitude]) VALUES (301, N'Lansing', N'Michigan', N'United States', 301, 42.732535, -84.5555347)
GO
INSERT [dbo].[Locations] ([LocationId], [City], [State], [Country], [RosterId], [Latitude], [Longitude]) VALUES (302, N'Lansing', N'Michigan', N'United States', 302, 42.732535, -84.5555347)
INSERT [dbo].[Locations] ([LocationId], [City], [State], [Country], [RosterId], [Latitude], [Longitude]) VALUES (303, N'Lansing', N'Michigan', N'United States', 303, 42.732535, -84.5555347)
INSERT [dbo].[Locations] ([LocationId], [City], [State], [Country], [RosterId], [Latitude], [Longitude]) VALUES (304, N'Lansing', N'Michigan', N'United States', 304, 42.732535, -84.5555347)
INSERT [dbo].[Locations] ([LocationId], [City], [State], [Country], [RosterId], [Latitude], [Longitude]) VALUES (305, N'Lansing', N'Michigan', N'United States', 305, 42.732535, -84.5555347)
INSERT [dbo].[Locations] ([LocationId], [City], [State], [Country], [RosterId], [Latitude], [Longitude]) VALUES (306, N'Lansing', N'Michigan', N'United States', 306, 42.732535, -84.5555347)
INSERT [dbo].[Locations] ([LocationId], [City], [State], [Country], [RosterId], [Latitude], [Longitude]) VALUES (307, N'Lansing', N'Michigan', N'United States', 307, 42.732535, -84.5555347)
INSERT [dbo].[Locations] ([LocationId], [City], [State], [Country], [RosterId], [Latitude], [Longitude]) VALUES (308, N'Lansing', N'Michigan', N'United States', 308, 42.732535, -84.5555347)
INSERT [dbo].[Locations] ([LocationId], [City], [State], [Country], [RosterId], [Latitude], [Longitude]) VALUES (309, N'Lansing', N'Michigan', N'United States', 309, 42.732535, -84.5555347)
INSERT [dbo].[Locations] ([LocationId], [City], [State], [Country], [RosterId], [Latitude], [Longitude]) VALUES (310, N'Lansing', N'Michigan', N'United States', 310, 42.732535, -84.5555347)
INSERT [dbo].[Locations] ([LocationId], [City], [State], [Country], [RosterId], [Latitude], [Longitude]) VALUES (311, N'Lansing', N'Michigan', N'United States', 311, 42.732535, -84.5555347)
INSERT [dbo].[Locations] ([LocationId], [City], [State], [Country], [RosterId], [Latitude], [Longitude]) VALUES (312, N'Lansing', N'Michigan', N'United States', 312, 42.732535, -84.5555347)
INSERT [dbo].[Locations] ([LocationId], [City], [State], [Country], [RosterId], [Latitude], [Longitude]) VALUES (313, N'Lansing', N'Michigan', N'United States', 313, 42.732535, -84.5555347)
INSERT [dbo].[Locations] ([LocationId], [City], [State], [Country], [RosterId], [Latitude], [Longitude]) VALUES (314, N'Lansing', N'Michigan', N'United States', 314, 42.732535, -84.5555347)
INSERT [dbo].[Locations] ([LocationId], [City], [State], [Country], [RosterId], [Latitude], [Longitude]) VALUES (315, N'Lansing', N'Michigan', N'United States', 315, 42.732535, -84.5555347)
INSERT [dbo].[Locations] ([LocationId], [City], [State], [Country], [RosterId], [Latitude], [Longitude]) VALUES (316, N'Lansing', N'Michigan', N'United States', 316, 42.732535, -84.5555347)
INSERT [dbo].[Locations] ([LocationId], [City], [State], [Country], [RosterId], [Latitude], [Longitude]) VALUES (317, N'Lansing', N'Michigan', N'United States', 317, 42.732535, -84.5555347)
INSERT [dbo].[Locations] ([LocationId], [City], [State], [Country], [RosterId], [Latitude], [Longitude]) VALUES (318, N'Lansing', N'Michigan', N'United States', 318, 42.732535, -84.5555347)
INSERT [dbo].[Locations] ([LocationId], [City], [State], [Country], [RosterId], [Latitude], [Longitude]) VALUES (319, N'Lansing', N'Michigan', N'United States', 319, 42.732535, -84.5555347)
INSERT [dbo].[Locations] ([LocationId], [City], [State], [Country], [RosterId], [Latitude], [Longitude]) VALUES (320, N'Lansing', N'Michigan', N'United States', 320, 42.732535, -84.5555347)
INSERT [dbo].[Locations] ([LocationId], [City], [State], [Country], [RosterId], [Latitude], [Longitude]) VALUES (321, N'Lansing', N'Michigan', N'United States', 321, 42.732535, -84.5555347)
INSERT [dbo].[Locations] ([LocationId], [City], [State], [Country], [RosterId], [Latitude], [Longitude]) VALUES (322, N'Lansing', N'Michigan', N'United States', 322, 42.732535, -84.5555347)
INSERT [dbo].[Locations] ([LocationId], [City], [State], [Country], [RosterId], [Latitude], [Longitude]) VALUES (323, N'Lansing', N'Michigan', N'United States', 323, 42.732535, -84.5555347)
INSERT [dbo].[Locations] ([LocationId], [City], [State], [Country], [RosterId], [Latitude], [Longitude]) VALUES (324, N'Lansing', N'Michigan', N'United States', 324, 42.732535, -84.5555347)
INSERT [dbo].[Locations] ([LocationId], [City], [State], [Country], [RosterId], [Latitude], [Longitude]) VALUES (325, N'Lansing', N'Michigan', N'United States', 325, 42.732535, -84.5555347)
INSERT [dbo].[Locations] ([LocationId], [City], [State], [Country], [RosterId], [Latitude], [Longitude]) VALUES (326, N'Lansing', N'Michigan', N'United States', 326, 42.732535, -84.5555347)
INSERT [dbo].[Locations] ([LocationId], [City], [State], [Country], [RosterId], [Latitude], [Longitude]) VALUES (327, N'Lansing', N'Michigan', N'United States', 327, 42.732535, -84.5555347)
INSERT [dbo].[Locations] ([LocationId], [City], [State], [Country], [RosterId], [Latitude], [Longitude]) VALUES (328, N'Lansing', N'Michigan', N'United States', 328, 42.732535, -84.5555347)
INSERT [dbo].[Locations] ([LocationId], [City], [State], [Country], [RosterId], [Latitude], [Longitude]) VALUES (329, N'Lansing', N'Michigan', N'United States', 329, 42.732535, -84.5555347)
INSERT [dbo].[Locations] ([LocationId], [City], [State], [Country], [RosterId], [Latitude], [Longitude]) VALUES (330, N'Lansing', N'Michigan', N'United States', 330, 42.732535, -84.5555347)
INSERT [dbo].[Locations] ([LocationId], [City], [State], [Country], [RosterId], [Latitude], [Longitude]) VALUES (331, N'Lansing', N'Michigan', N'United States', 331, 42.732535, -84.5555347)
INSERT [dbo].[Locations] ([LocationId], [City], [State], [Country], [RosterId], [Latitude], [Longitude]) VALUES (332, N'Lansing', N'Michigan', N'United States', 332, 42.732535, -84.5555347)
INSERT [dbo].[Locations] ([LocationId], [City], [State], [Country], [RosterId], [Latitude], [Longitude]) VALUES (333, N'Lansing', N'Michigan', N'United States', 333, 42.732535, -84.5555347)
INSERT [dbo].[Locations] ([LocationId], [City], [State], [Country], [RosterId], [Latitude], [Longitude]) VALUES (334, N'Lansing', N'Michigan', N'United States', 334, 42.732535, -84.5555347)
INSERT [dbo].[Locations] ([LocationId], [City], [State], [Country], [RosterId], [Latitude], [Longitude]) VALUES (335, N'Lansing', N'Michigan', N'United States', 335, 42.732535, -84.5555347)
INSERT [dbo].[Locations] ([LocationId], [City], [State], [Country], [RosterId], [Latitude], [Longitude]) VALUES (336, N'Lansing', N'Michigan', N'United States', 336, 42.732535, -84.5555347)
INSERT [dbo].[Locations] ([LocationId], [City], [State], [Country], [RosterId], [Latitude], [Longitude]) VALUES (337, N'Lansing', N'Michigan', N'United States', 337, 42.732535, -84.5555347)
INSERT [dbo].[Locations] ([LocationId], [City], [State], [Country], [RosterId], [Latitude], [Longitude]) VALUES (338, N'Lansing', N'Michigan', N'United States', 338, 42.732535, -84.5555347)
INSERT [dbo].[Locations] ([LocationId], [City], [State], [Country], [RosterId], [Latitude], [Longitude]) VALUES (339, N'Lansing', N'Michigan', N'United States', 339, 42.732535, -84.5555347)
INSERT [dbo].[Locations] ([LocationId], [City], [State], [Country], [RosterId], [Latitude], [Longitude]) VALUES (340, N'Lansing', N'Michigan', N'United States', 340, 42.732535, -84.5555347)
INSERT [dbo].[Locations] ([LocationId], [City], [State], [Country], [RosterId], [Latitude], [Longitude]) VALUES (341, N'Lansing', N'Michigan', N'United States', 341, 42.732535, -84.5555347)
INSERT [dbo].[Locations] ([LocationId], [City], [State], [Country], [RosterId], [Latitude], [Longitude]) VALUES (342, N'Lansing', N'Michigan', N'United States', 342, 42.732535, -84.5555347)
INSERT [dbo].[Locations] ([LocationId], [City], [State], [Country], [RosterId], [Latitude], [Longitude]) VALUES (343, N'Lansing', N'Michigan', N'United States', 343, 42.732535, -84.5555347)
INSERT [dbo].[Locations] ([LocationId], [City], [State], [Country], [RosterId], [Latitude], [Longitude]) VALUES (349, N'   Lansing', N'Michigan', N'United States', 3, 42.732535, -84.5555347)
INSERT [dbo].[Locations] ([LocationId], [City], [State], [Country], [RosterId], [Latitude], [Longitude]) VALUES (350, N'     Lansing', N'Michigan', N'United States', 1, 42.732535, -84.5555347)
SET IDENTITY_INSERT [dbo].[Locations] OFF
SET IDENTITY_INSERT [dbo].[Rosters] ON 

INSERT [dbo].[Rosters] ([RosterId], [FirstName], [Middle], [LastName], [Image], [Caption], [Link]) VALUES (1, N'Thomas', NULL, N'Adado', N'cm_2_1.jpg', N'Thomas Adado', NULL)
INSERT [dbo].[Rosters] ([RosterId], [FirstName], [Middle], [LastName], [Image], [Caption], [Link]) VALUES (2, N'Carla', NULL, N'Adams', N'cm_3_1.jpg', N'Carla Adams', NULL)
INSERT [dbo].[Rosters] ([RosterId], [FirstName], [Middle], [LastName], [Image], [Caption], [Link]) VALUES (3, N'Danny', NULL, N'Adams', N'cm_4_1.jpg', N'Danny Adams', NULL)
INSERT [dbo].[Rosters] ([RosterId], [FirstName], [Middle], [LastName], [Image], [Caption], [Link]) VALUES (4, N'Nancy', NULL, N'Albertson', N'cm_7_1.jpg', N'Nancy Albertson', NULL)
INSERT [dbo].[Rosters] ([RosterId], [FirstName], [Middle], [LastName], [Image], [Caption], [Link]) VALUES (5, N'Judy', NULL, N'Aldrich', N'cm_8_1.jpg', N'Judy Aldrich', NULL)
INSERT [dbo].[Rosters] ([RosterId], [FirstName], [Middle], [LastName], [Image], [Caption], [Link]) VALUES (6, N'Troy', NULL, N'Alexander', N'cm_9_1.jpg', N'Troy Alexander', NULL)
INSERT [dbo].[Rosters] ([RosterId], [FirstName], [Middle], [LastName], [Image], [Caption], [Link]) VALUES (7, N'Derrick', NULL, N'Allen', N'cm_10_1.jpg', N'Derrick Allen', NULL)
INSERT [dbo].[Rosters] ([RosterId], [FirstName], [Middle], [LastName], [Image], [Caption], [Link]) VALUES (8, N'Shellie', NULL, N'Allen', N'cm_12_1.jpg', N'Shellie Allen', NULL)
INSERT [dbo].[Rosters] ([RosterId], [FirstName], [Middle], [LastName], [Image], [Caption], [Link]) VALUES (9, N'Thurstan', NULL, N'Allen', N'cm_13_1.jpg', N'Thurstan Allen', NULL)
INSERT [dbo].[Rosters] ([RosterId], [FirstName], [Middle], [LastName], [Image], [Caption], [Link]) VALUES (10, N'Michelle', NULL, N'Alspaugh', N'cm_14_1.jpg', N'Michelle Alspaugh', NULL)
INSERT [dbo].[Rosters] ([RosterId], [FirstName], [Middle], [LastName], [Image], [Caption], [Link]) VALUES (11, N'Roberta', NULL, N'Ames', N'cm_15_1.jpg', N'Roberta Ames', NULL)
INSERT [dbo].[Rosters] ([RosterId], [FirstName], [Middle], [LastName], [Image], [Caption], [Link]) VALUES (12, N'Sandra', NULL, N'Andree', N'cm_2_2.jpg', N'Sandra Andree', NULL)
INSERT [dbo].[Rosters] ([RosterId], [FirstName], [Middle], [LastName], [Image], [Caption], [Link]) VALUES (13, N'Christopher', NULL, N'Andrews', N'cm_3_2.jpg', N'Christopher Andrews', NULL)
INSERT [dbo].[Rosters] ([RosterId], [FirstName], [Middle], [LastName], [Image], [Caption], [Link]) VALUES (14, N'Philip', NULL, N'Andrews', N'cm_4_2.jpg', N'Philip Andrews', NULL)
INSERT [dbo].[Rosters] ([RosterId], [FirstName], [Middle], [LastName], [Image], [Caption], [Link]) VALUES (15, N'Marcel', NULL, N'Arnalot', N'cm_5_2.jpg', N'Marcel Arnalot', NULL)
INSERT [dbo].[Rosters] ([RosterId], [FirstName], [Middle], [LastName], [Image], [Caption], [Link]) VALUES (16, N'Eileen', NULL, N'Arthur', N'cm_7_2.jpg', N'Eileen Arthur', NULL)
INSERT [dbo].[Rosters] ([RosterId], [FirstName], [Middle], [LastName], [Image], [Caption], [Link]) VALUES (17, N'Herbert', NULL, N'Austin', N'cm_8_2.jpg', N'Herbert Austin', NULL)
INSERT [dbo].[Rosters] ([RosterId], [FirstName], [Middle], [LastName], [Image], [Caption], [Link]) VALUES (18, N'Kelly', NULL, N'Back', N'cm_9_2.jpg', N'Kelly Back', NULL)
INSERT [dbo].[Rosters] ([RosterId], [FirstName], [Middle], [LastName], [Image], [Caption], [Link]) VALUES (19, N'Barbara', NULL, N'Bailey', N'cm_10_2.jpg', N'Barbara Bailey', NULL)
INSERT [dbo].[Rosters] ([RosterId], [FirstName], [Middle], [LastName], [Image], [Caption], [Link]) VALUES (20, N'Scott', NULL, N'Baker', N'cm_12_2.jpg', N'Scott Baker', NULL)
INSERT [dbo].[Rosters] ([RosterId], [FirstName], [Middle], [LastName], [Image], [Caption], [Link]) VALUES (21, N'Kim', NULL, N'Baldwin', N'cm_13_2.jpg', N'Kim Baldwin', NULL)
INSERT [dbo].[Rosters] ([RosterId], [FirstName], [Middle], [LastName], [Image], [Caption], [Link]) VALUES (22, N'Sidney', NULL, N'Bank', N'cm_14_2.jpg', N'Sidney Bank', NULL)
INSERT [dbo].[Rosters] ([RosterId], [FirstName], [Middle], [LastName], [Image], [Caption], [Link]) VALUES (23, N'Cheryl', NULL, N'Barnes', N'cm_15_2.jpg', N'Cheryl Barnes', NULL)
INSERT [dbo].[Rosters] ([RosterId], [FirstName], [Middle], [LastName], [Image], [Caption], [Link]) VALUES (24, N'Claudette', NULL, N'Bass', N'cm_01_3.jpg', N'Claudette Bass', NULL)
INSERT [dbo].[Rosters] ([RosterId], [FirstName], [Middle], [LastName], [Image], [Caption], [Link]) VALUES (25, N'Jacquelin', NULL, N'Bates', N'cm_02_3.jpg', N'Jacquelin Bates', NULL)
INSERT [dbo].[Rosters] ([RosterId], [FirstName], [Middle], [LastName], [Image], [Caption], [Link]) VALUES (26, N'Donald', NULL, N'Beavers', N'cm_03_3.jpg', N'Donald Beavers', NULL)
INSERT [dbo].[Rosters] ([RosterId], [FirstName], [Middle], [LastName], [Image], [Caption], [Link]) VALUES (27, N'Pamela', NULL, N'Beers', N'cm_04_3.jpg', N'Pamela Beers', NULL)
INSERT [dbo].[Rosters] ([RosterId], [FirstName], [Middle], [LastName], [Image], [Caption], [Link]) VALUES (28, N'Cynthia', NULL, N'Benavides', N'cm_06_3.jpg', N'Cynthia Benavides', NULL)
INSERT [dbo].[Rosters] ([RosterId], [FirstName], [Middle], [LastName], [Image], [Caption], [Link]) VALUES (29, N'Lee', NULL, N'Bennett', N'cm_07_3.jpg', N'Lee Bennett', NULL)
INSERT [dbo].[Rosters] ([RosterId], [FirstName], [Middle], [LastName], [Image], [Caption], [Link]) VALUES (30, N'Lori', NULL, N'Bergemann', N'cm_08_3.jpg', N'Lori Bergemann', NULL)
INSERT [dbo].[Rosters] ([RosterId], [FirstName], [Middle], [LastName], [Image], [Caption], [Link]) VALUES (31, N'Frederick', NULL, N'Berry', N'cm_09_3.jpg', N'Frederick Berry', NULL)
INSERT [dbo].[Rosters] ([RosterId], [FirstName], [Middle], [LastName], [Image], [Caption], [Link]) VALUES (32, N'Kim', NULL, N'Bigham', N'cm_11_3.jpg', N'Kim Bigham', NULL)
INSERT [dbo].[Rosters] ([RosterId], [FirstName], [Middle], [LastName], [Image], [Caption], [Link]) VALUES (33, N'Bryan', NULL, N'Bishop', N'cm_12_3.jpg', N'Bryan Bishop', NULL)
INSERT [dbo].[Rosters] ([RosterId], [FirstName], [Middle], [LastName], [Image], [Caption], [Link]) VALUES (34, N'Rechelle', NULL, N'Black', N'cm_13_3.jpg', N'Rechelle Black', NULL)
INSERT [dbo].[Rosters] ([RosterId], [FirstName], [Middle], [LastName], [Image], [Caption], [Link]) VALUES (35, N'Gerald', NULL, N'Blackman', N'cm_14_3.jpg', N'Gerald Blackman', NULL)
INSERT [dbo].[Rosters] ([RosterId], [FirstName], [Middle], [LastName], [Image], [Caption], [Link]) VALUES (36, N'Audie', NULL, N'Blaylock', N'cm_1_4.jpg', N'Audie Blaylock', NULL)
INSERT [dbo].[Rosters] ([RosterId], [FirstName], [Middle], [LastName], [Image], [Caption], [Link]) VALUES (37, N'Pamala', NULL, N'Bounds', N'cm_2_4.jpg', N'Pamala Bounds', NULL)
INSERT [dbo].[Rosters] ([RosterId], [FirstName], [Middle], [LastName], [Image], [Caption], [Link]) VALUES (38, N'Mark', NULL, N'Bowers', N'cm_3_4.jpg', N'Mark Bowers', NULL)
INSERT [dbo].[Rosters] ([RosterId], [FirstName], [Middle], [LastName], [Image], [Caption], [Link]) VALUES (39, N'Barbara', NULL, N'Bozung', N'cm_4_4.jpg', N'Barbara Bozung', NULL)
INSERT [dbo].[Rosters] ([RosterId], [FirstName], [Middle], [LastName], [Image], [Caption], [Link]) VALUES (40, N'Teresa', NULL, N'Bozung', N'cm_6_4.jpg', N'Teresa Bozung', NULL)
INSERT [dbo].[Rosters] ([RosterId], [FirstName], [Middle], [LastName], [Image], [Caption], [Link]) VALUES (41, N'Kevin', NULL, N'Brodberg', N'cm_7_4.jpg', N'Kevin Brodberg', NULL)
INSERT [dbo].[Rosters] ([RosterId], [FirstName], [Middle], [LastName], [Image], [Caption], [Link]) VALUES (42, N'Marvin', NULL, N'Brown', N'cm_8_4.jpg', N'Marvin Brown', NULL)
INSERT [dbo].[Rosters] ([RosterId], [FirstName], [Middle], [LastName], [Image], [Caption], [Link]) VALUES (43, N'Russell', NULL, N'Brown', N'cm_9_4.jpg', N'Russell Brown', NULL)
INSERT [dbo].[Rosters] ([RosterId], [FirstName], [Middle], [LastName], [Image], [Caption], [Link]) VALUES (44, N'Sabrina', NULL, N'Brown', N'cm_11_4.jpg', N'Sabrina Brown', NULL)
INSERT [dbo].[Rosters] ([RosterId], [FirstName], [Middle], [LastName], [Image], [Caption], [Link]) VALUES (45, N'Susan', NULL, N'Brown', N'cm_12_4.jpg', N'Susan Brown', NULL)
INSERT [dbo].[Rosters] ([RosterId], [FirstName], [Middle], [LastName], [Image], [Caption], [Link]) VALUES (46, N'Karen', NULL, N'Burgen', N'cm_13_4.jpg', N'Karen Burgen', NULL)
INSERT [dbo].[Rosters] ([RosterId], [FirstName], [Middle], [LastName], [Image], [Caption], [Link]) VALUES (47, N'Susan', NULL, N'Burgess', N'cm_14_4.jpg', N'Susan Burgess', NULL)
INSERT [dbo].[Rosters] ([RosterId], [FirstName], [Middle], [LastName], [Image], [Caption], [Link]) VALUES (48, N'Edwin', NULL, N'Burtley', N'cm_1_5.jpg', N'Edwin Burtley', NULL)
INSERT [dbo].[Rosters] ([RosterId], [FirstName], [Middle], [LastName], [Image], [Caption], [Link]) VALUES (49, N'Karen', NULL, N'Butterwick', N'cm_2_5.jpg', N'Karen Butterwick', NULL)
INSERT [dbo].[Rosters] ([RosterId], [FirstName], [Middle], [LastName], [Image], [Caption], [Link]) VALUES (50, N'Shirley', NULL, N'Buxton', N'cm_3_5.jpg', N'Shirley Buxton', NULL)
INSERT [dbo].[Rosters] ([RosterId], [FirstName], [Middle], [LastName], [Image], [Caption], [Link]) VALUES (51, N'Robert', NULL, N'Byrnes', N'cm_4_5.jpg', N'Robert Byrnes', NULL)
INSERT [dbo].[Rosters] ([RosterId], [FirstName], [Middle], [LastName], [Image], [Caption], [Link]) VALUES (52, N'Lisa', NULL, N'Callahan', N'cm_6_5.jpg', N'Lisa Callahan', NULL)
INSERT [dbo].[Rosters] ([RosterId], [FirstName], [Middle], [LastName], [Image], [Caption], [Link]) VALUES (53, N'Darrel', NULL, N'Camble', N'cm_7_5.jpg', N'Darrel Camble', NULL)
INSERT [dbo].[Rosters] ([RosterId], [FirstName], [Middle], [LastName], [Image], [Caption], [Link]) VALUES (54, N'Karen', NULL, N'Camp', N'cm_8_5.jpg', N'Keren Camp', NULL)
INSERT [dbo].[Rosters] ([RosterId], [FirstName], [Middle], [LastName], [Image], [Caption], [Link]) VALUES (55, N'Tammy', NULL, N'Campbell', N'cm_9_5.jpg', N'Tammy Campbell', NULL)
INSERT [dbo].[Rosters] ([RosterId], [FirstName], [Middle], [LastName], [Image], [Caption], [Link]) VALUES (56, N'Antoinett', NULL, N'Carter', N'cm_11_5.jpg', N'Antoinett Carter', NULL)
INSERT [dbo].[Rosters] ([RosterId], [FirstName], [Middle], [LastName], [Image], [Caption], [Link]) VALUES (57, N'Mark', NULL, N'Cartwright', N'cm_12_5.jpg', N'Mark Cartwright', NULL)
INSERT [dbo].[Rosters] ([RosterId], [FirstName], [Middle], [LastName], [Image], [Caption], [Link]) VALUES (58, N'Linda', NULL, N'Case', N'cm_13_5.jpg', N'Linda Case', NULL)
INSERT [dbo].[Rosters] ([RosterId], [FirstName], [Middle], [LastName], [Image], [Caption], [Link]) VALUES (59, N'John', NULL, N'Charles', N'cm_14_5.jpg', N'John Charles', NULL)
INSERT [dbo].[Rosters] ([RosterId], [FirstName], [Middle], [LastName], [Image], [Caption], [Link]) VALUES (60, N'Kevin', NULL, N'Chenault', N'cm_1_6.jpg', N'Kevin Chenault', NULL)
INSERT [dbo].[Rosters] ([RosterId], [FirstName], [Middle], [LastName], [Image], [Caption], [Link]) VALUES (61, N'Andre', NULL, N'Clark', N'cm_2_6.jpg', N'Andre Clark', NULL)
INSERT [dbo].[Rosters] ([RosterId], [FirstName], [Middle], [LastName], [Image], [Caption], [Link]) VALUES (62, N'Bryan', NULL, N'Clark', N'cm_3_6.jpg', N'Bryan Clark', NULL)
INSERT [dbo].[Rosters] ([RosterId], [FirstName], [Middle], [LastName], [Image], [Caption], [Link]) VALUES (63, N'David', NULL, N'Clark', N'cm_4_6.jpg', N'David Clark', NULL)
INSERT [dbo].[Rosters] ([RosterId], [FirstName], [Middle], [LastName], [Image], [Caption], [Link]) VALUES (64, N'Tara', NULL, N'Clem', N'cm_6_6.jpg', N'Tara Clem', NULL)
INSERT [dbo].[Rosters] ([RosterId], [FirstName], [Middle], [LastName], [Image], [Caption], [Link]) VALUES (65, N'Sally', NULL, N'Coats', N'cm_7_6.jpg', N'Sally Coats', NULL)
INSERT [dbo].[Rosters] ([RosterId], [FirstName], [Middle], [LastName], [Image], [Caption], [Link]) VALUES (66, N'Sandra', NULL, N'Cochran', N'cm_8_6.jpg', N'Sandra Cochran', NULL)
INSERT [dbo].[Rosters] ([RosterId], [FirstName], [Middle], [LastName], [Image], [Caption], [Link]) VALUES (67, N'JoAnn', NULL, N'Coffey', N'cm_9_6.jpg', N'JoAnn Coffey', NULL)
INSERT [dbo].[Rosters] ([RosterId], [FirstName], [Middle], [LastName], [Image], [Caption], [Link]) VALUES (68, N'Craig', NULL, N'Collins', N'cm_11_6.jpg', N'Craig Collins', NULL)
INSERT [dbo].[Rosters] ([RosterId], [FirstName], [Middle], [LastName], [Image], [Caption], [Link]) VALUES (69, N'Douglas', NULL, N'Coon', N'cm_12_6.jpg', N'Douglas Coon', NULL)
INSERT [dbo].[Rosters] ([RosterId], [FirstName], [Middle], [LastName], [Image], [Caption], [Link]) VALUES (70, N'Tammie', NULL, N'Copper', N'cm_13_6.jpg', N'Tammie Copper', NULL)
INSERT [dbo].[Rosters] ([RosterId], [FirstName], [Middle], [LastName], [Image], [Caption], [Link]) VALUES (71, N'Carey', NULL, N'Couthen', N'cm_14_6.jpg', N'Carey Couthen', NULL)
INSERT [dbo].[Rosters] ([RosterId], [FirstName], [Middle], [LastName], [Image], [Caption], [Link]) VALUES (72, N'Gregory', NULL, N'Crawford', N'cm_1_7.jpg', N'Gregory Crawford', NULL)
INSERT [dbo].[Rosters] ([RosterId], [FirstName], [Middle], [LastName], [Image], [Caption], [Link]) VALUES (73, N'Katherine', NULL, N'Curtis', N'cm_2_7.jpg', N'Katherine Curtis', NULL)
INSERT [dbo].[Rosters] ([RosterId], [FirstName], [Middle], [LastName], [Image], [Caption], [Link]) VALUES (74, N'Thomas', NULL, N'Daggett', N'cm_3_7.jpg', N'Thomas Daggett', NULL)
INSERT [dbo].[Rosters] ([RosterId], [FirstName], [Middle], [LastName], [Image], [Caption], [Link]) VALUES (75, N'Melanie', NULL, N'Dalrymple', N'cm_4_7.jpg', N'Melanie Dalrymple', NULL)
INSERT [dbo].[Rosters] ([RosterId], [FirstName], [Middle], [LastName], [Image], [Caption], [Link]) VALUES (76, N'Kathleen', NULL, N'Daniel', N'cm_6_7.jpg', N'Kathleen Daniel', NULL)
INSERT [dbo].[Rosters] ([RosterId], [FirstName], [Middle], [LastName], [Image], [Caption], [Link]) VALUES (77, N'Jan', NULL, N'Davenport', N'cm_7_7.jpg', N'Jan Davenport', NULL)
INSERT [dbo].[Rosters] ([RosterId], [FirstName], [Middle], [LastName], [Image], [Caption], [Link]) VALUES (78, N'Mary Ann', NULL, N'Davidson', N'cm_8_7.jpg', N'Mary Ann Davidson', NULL)
INSERT [dbo].[Rosters] ([RosterId], [FirstName], [Middle], [LastName], [Image], [Caption], [Link]) VALUES (79, N'Andrea', NULL, N'Davis', N'cm_9_7.jpg', N'Andrea Davis', NULL)
INSERT [dbo].[Rosters] ([RosterId], [FirstName], [Middle], [LastName], [Image], [Caption], [Link]) VALUES (80, N'Anthony', NULL, N'Davis', N'cm_11_7.jpg', N'Anthony Davis', NULL)
INSERT [dbo].[Rosters] ([RosterId], [FirstName], [Middle], [LastName], [Image], [Caption], [Link]) VALUES (81, N'Brenda', NULL, N'Davis', N'cm_12_7.jpg', N'Brenda Davis', NULL)
INSERT [dbo].[Rosters] ([RosterId], [FirstName], [Middle], [LastName], [Image], [Caption], [Link]) VALUES (82, N'Curt', NULL, N'Davisson', N'cm_13_7.jpg', N'Curt Davisson', NULL)
INSERT [dbo].[Rosters] ([RosterId], [FirstName], [Middle], [LastName], [Image], [Caption], [Link]) VALUES (83, N'Nancy', NULL, N'Dean', N'cm_14_7.jpg', N'Nancy Dean', NULL)
INSERT [dbo].[Rosters] ([RosterId], [FirstName], [Middle], [LastName], [Image], [Caption], [Link]) VALUES (84, N'Gayle', NULL, N'Decker', N'cm_1_8.jpg', N'Gayle Decker', NULL)
INSERT [dbo].[Rosters] ([RosterId], [FirstName], [Middle], [LastName], [Image], [Caption], [Link]) VALUES (85, N'Kirk', NULL, N'Dedoes', N'cm_2_8.jpg', N'Kirk Dedoes', NULL)
INSERT [dbo].[Rosters] ([RosterId], [FirstName], [Middle], [LastName], [Image], [Caption], [Link]) VALUES (86, N'Jon', NULL, N'Deford', N'cm_3_8.jpg', N'Jon Deford', NULL)
INSERT [dbo].[Rosters] ([RosterId], [FirstName], [Middle], [LastName], [Image], [Caption], [Link]) VALUES (87, N'Pamela', NULL, N'Deiter', N'cm_4_8.jpg', N'Pamela Deiter', NULL)
INSERT [dbo].[Rosters] ([RosterId], [FirstName], [Middle], [LastName], [Image], [Caption], [Link]) VALUES (88, N'Carmen', NULL, N'Deleon', N'cm_6_8.jpg', N'Carmen Deleon', NULL)
INSERT [dbo].[Rosters] ([RosterId], [FirstName], [Middle], [LastName], [Image], [Caption], [Link]) VALUES (89, N'Kenneth', NULL, N'Dennings', N'cm_7_8.jpg', N'Kenneth Dennings', NULL)
INSERT [dbo].[Rosters] ([RosterId], [FirstName], [Middle], [LastName], [Image], [Caption], [Link]) VALUES (90, N'Kent', NULL, N'Dennings', N'cm_8_8.jpg', N'Kent Dennings', NULL)
INSERT [dbo].[Rosters] ([RosterId], [FirstName], [Middle], [LastName], [Image], [Caption], [Link]) VALUES (91, N'Carol', NULL, N'Dixon', N'cm_9_8.jpg', N'Carol Dixon', NULL)
INSERT [dbo].[Rosters] ([RosterId], [FirstName], [Middle], [LastName], [Image], [Caption], [Link]) VALUES (92, N'Steven', NULL, N'Dodge', N'cm_11_8.jpg', N'Steven Dodge', NULL)
INSERT [dbo].[Rosters] ([RosterId], [FirstName], [Middle], [LastName], [Image], [Caption], [Link]) VALUES (93, N'Ricardo', NULL, N'Dominguez', N'cm_12_8.jpg', N'Ricardo Dominguez', NULL)
INSERT [dbo].[Rosters] ([RosterId], [FirstName], [Middle], [LastName], [Image], [Caption], [Link]) VALUES (94, N'Sandra', NULL, N'Dormand', N'cm_13_8.jpg', N'Sandra Dormand', NULL)
INSERT [dbo].[Rosters] ([RosterId], [FirstName], [Middle], [LastName], [Image], [Caption], [Link]) VALUES (95, N'James', NULL, N'Dotts', N'cm_14_8.jpg', N'James Dotts', NULL)
INSERT [dbo].[Rosters] ([RosterId], [FirstName], [Middle], [LastName], [Image], [Caption], [Link]) VALUES (96, N'Charles', NULL, N'Draper', N'cm_1_9.jpg', N'Charles Draper', NULL)
INSERT [dbo].[Rosters] ([RosterId], [FirstName], [Middle], [LastName], [Image], [Caption], [Link]) VALUES (97, N'Robin', NULL, N'Dunbar', N'cm_2_9.jpg', N'Robin Dunbar', NULL)
INSERT [dbo].[Rosters] ([RosterId], [FirstName], [Middle], [LastName], [Image], [Caption], [Link]) VALUES (98, N'Sandra', NULL, N'Ecker', N'cm_3_9.jpg', N'Sandra Ecker', NULL)
INSERT [dbo].[Rosters] ([RosterId], [FirstName], [Middle], [LastName], [Image], [Caption], [Link]) VALUES (99, N'Sharmel', NULL, N'Edwards', N'cm_4_9.jpg', N'Sharmel Edwards', NULL)
GO
INSERT [dbo].[Rosters] ([RosterId], [FirstName], [Middle], [LastName], [Image], [Caption], [Link]) VALUES (100, N'Michael', NULL, N'Erzen', N'cm_6_9.jpg', N'Michael Erzen', NULL)
INSERT [dbo].[Rosters] ([RosterId], [FirstName], [Middle], [LastName], [Image], [Caption], [Link]) VALUES (101, N'Rolando', NULL, N'Escobedo', N'cm_7_9.jpg', N'Rolando Escobedo', NULL)
INSERT [dbo].[Rosters] ([RosterId], [FirstName], [Middle], [LastName], [Image], [Caption], [Link]) VALUES (102, N'Frederick', NULL, N'Faison', N'cm_8_9.jpg', N'Frederick Faison', NULL)
INSERT [dbo].[Rosters] ([RosterId], [FirstName], [Middle], [LastName], [Image], [Caption], [Link]) VALUES (103, N'Michael', NULL, N'Ferguson', N'cm_9_9.jpg', N'Michael Ferguson', NULL)
INSERT [dbo].[Rosters] ([RosterId], [FirstName], [Middle], [LastName], [Image], [Caption], [Link]) VALUES (104, N'Pamela', NULL, N'Ferguson', N'cm_11_9.jpg', N'Pamela Ferguson', NULL)
INSERT [dbo].[Rosters] ([RosterId], [FirstName], [Middle], [LastName], [Image], [Caption], [Link]) VALUES (105, N'Marilyn', NULL, N'Finch', N'cm_12_9.jpg', N'Marilyn Finch', NULL)
INSERT [dbo].[Rosters] ([RosterId], [FirstName], [Middle], [LastName], [Image], [Caption], [Link]) VALUES (106, N'Paul', NULL, N'Fleisher', N'cm_13_9.jpg', N'Paul Fleisher', NULL)
INSERT [dbo].[Rosters] ([RosterId], [FirstName], [Middle], [LastName], [Image], [Caption], [Link]) VALUES (107, N'James', NULL, N'Flowers', N'cm_14_9.jpg', N'James Flowers', NULL)
INSERT [dbo].[Rosters] ([RosterId], [FirstName], [Middle], [LastName], [Image], [Caption], [Link]) VALUES (108, N'JoHanna', NULL, N'Ford', N'cm_1_10.jpg', N'JoHanna Ford', NULL)
INSERT [dbo].[Rosters] ([RosterId], [FirstName], [Middle], [LastName], [Image], [Caption], [Link]) VALUES (109, N'Lori', NULL, N'Fossum', N'cm_2_10.jpg', N'Lori Fossum', NULL)
INSERT [dbo].[Rosters] ([RosterId], [FirstName], [Middle], [LastName], [Image], [Caption], [Link]) VALUES (110, N'Marcia', NULL, N'Foster', N'cm_3_10.jpg', N'Marcia Foster', NULL)
INSERT [dbo].[Rosters] ([RosterId], [FirstName], [Middle], [LastName], [Image], [Caption], [Link]) VALUES (111, N'Richard', NULL, N'Freed', N'cm_4_10.jpg', N'Richard Freed', NULL)
INSERT [dbo].[Rosters] ([RosterId], [FirstName], [Middle], [LastName], [Image], [Caption], [Link]) VALUES (112, N'Norma', NULL, N'Garcia', N'cm_6_10.jpg', N'Norma Garcia', NULL)
INSERT [dbo].[Rosters] ([RosterId], [FirstName], [Middle], [LastName], [Image], [Caption], [Link]) VALUES (113, N'Darryl', NULL, N'Gardner', N'cm_7_10.jpg', N'Darryl Gardner', NULL)
INSERT [dbo].[Rosters] ([RosterId], [FirstName], [Middle], [LastName], [Image], [Caption], [Link]) VALUES (114, N'Eliseo', NULL, N'Gauna', N'cm_8_10.jpg', N'Eliseo Gauna', NULL)
INSERT [dbo].[Rosters] ([RosterId], [FirstName], [Middle], [LastName], [Image], [Caption], [Link]) VALUES (115, N'Stephen', NULL, N'Gauss', N'cm_9_10.jpg', N'Stephen Gauss', NULL)
INSERT [dbo].[Rosters] ([RosterId], [FirstName], [Middle], [LastName], [Image], [Caption], [Link]) VALUES (116, N'Max', NULL, N'Gibson', N'cm_11_10.jpg', N'Max Gibson', NULL)
INSERT [dbo].[Rosters] ([RosterId], [FirstName], [Middle], [LastName], [Image], [Caption], [Link]) VALUES (117, N'Patricia', NULL, N'Gibson', N'cm_12_10.jpg', N'Patricia Gibson', NULL)
INSERT [dbo].[Rosters] ([RosterId], [FirstName], [Middle], [LastName], [Image], [Caption], [Link]) VALUES (118, N'Sheria', NULL, N'Gibson', N'cm_13_10.jpg', N'Sheria Gibson', NULL)
INSERT [dbo].[Rosters] ([RosterId], [FirstName], [Middle], [LastName], [Image], [Caption], [Link]) VALUES (119, N'Lisa', NULL, N'Gilbert', N'cm_14_10.jpg', N'Lisa Gilbert', NULL)
INSERT [dbo].[Rosters] ([RosterId], [FirstName], [Middle], [LastName], [Image], [Caption], [Link]) VALUES (120, N'Beth', NULL, N'Gilmore', N'cm_1_11.jpg', N'Beth Gilmore', NULL)
INSERT [dbo].[Rosters] ([RosterId], [FirstName], [Middle], [LastName], [Image], [Caption], [Link]) VALUES (121, N'Linda', NULL, N'Glynn', N'cm_2_11.jpg', N'Linda Glynn', NULL)
INSERT [dbo].[Rosters] ([RosterId], [FirstName], [Middle], [LastName], [Image], [Caption], [Link]) VALUES (122, N'Gail', NULL, N'Goetze', N'cm_3_11.jpg', N'Gail Goetze', NULL)
INSERT [dbo].[Rosters] ([RosterId], [FirstName], [Middle], [LastName], [Image], [Caption], [Link]) VALUES (123, N'Sherry', NULL, N'Gorman', N'cm_4_11.jpg', N'Sherry Gorman', NULL)
INSERT [dbo].[Rosters] ([RosterId], [FirstName], [Middle], [LastName], [Image], [Caption], [Link]) VALUES (124, N'Christopher', NULL, N'Goyt', N'cm_6_11.jpg', N'Christopher Goyt', NULL)
INSERT [dbo].[Rosters] ([RosterId], [FirstName], [Middle], [LastName], [Image], [Caption], [Link]) VALUES (125, N'Thomas', NULL, N'Graber', N'cm_7_11.jpg', N'Thomas Graber', NULL)
INSERT [dbo].[Rosters] ([RosterId], [FirstName], [Middle], [LastName], [Image], [Caption], [Link]) VALUES (126, N'Mark', NULL, N'Greenhoe', N'cm_8_11.jpg', N'Mark Greenhoe', NULL)
INSERT [dbo].[Rosters] ([RosterId], [FirstName], [Middle], [LastName], [Image], [Caption], [Link]) VALUES (127, N'Clark', NULL, N'Griffin', N'cm_9_11.jpg', N'Clark Griffin', NULL)
INSERT [dbo].[Rosters] ([RosterId], [FirstName], [Middle], [LastName], [Image], [Caption], [Link]) VALUES (128, N'Gregory', NULL, N'Griffith', N'cm_11_11.jpg', N'Gregory Griffith', NULL)
INSERT [dbo].[Rosters] ([RosterId], [FirstName], [Middle], [LastName], [Image], [Caption], [Link]) VALUES (129, N'Laurie', NULL, N'Guttridge', N'cm_12_11.jpg', N'Laurie Guttridge', NULL)
INSERT [dbo].[Rosters] ([RosterId], [FirstName], [Middle], [LastName], [Image], [Caption], [Link]) VALUES (130, N'Madeline', NULL, N'Guyton', N'cm_13_11.jpg', N'Madeline Guyton', NULL)
INSERT [dbo].[Rosters] ([RosterId], [FirstName], [Middle], [LastName], [Image], [Caption], [Link]) VALUES (131, N'Karen', NULL, N'Hadley', N'cm_14_11.jpg', N'Karen Hadley', NULL)
INSERT [dbo].[Rosters] ([RosterId], [FirstName], [Middle], [LastName], [Image], [Caption], [Link]) VALUES (132, N'Tonya', NULL, N'Hagerty', N'cm_1_12.jpg', N'Tonya Hagerty', NULL)
INSERT [dbo].[Rosters] ([RosterId], [FirstName], [Middle], [LastName], [Image], [Caption], [Link]) VALUES (133, N'Carla', NULL, N'Hall', N'cm_2_12.jpg', N'Carla Hall', NULL)
INSERT [dbo].[Rosters] ([RosterId], [FirstName], [Middle], [LastName], [Image], [Caption], [Link]) VALUES (134, N'Cheryl', NULL, N'Hall', N'cm_3_12.jpg', N'Cheryl Hall', NULL)
INSERT [dbo].[Rosters] ([RosterId], [FirstName], [Middle], [LastName], [Image], [Caption], [Link]) VALUES (135, N'Duane', NULL, N'Halliburton', N'cm_4_12.jpg', N'Duane Halliburton', NULL)
INSERT [dbo].[Rosters] ([RosterId], [FirstName], [Middle], [LastName], [Image], [Caption], [Link]) VALUES (136, N'Nancy', NULL, N'Ham', N'cm_6_12.jpg', N'Nancy Ham', NULL)
INSERT [dbo].[Rosters] ([RosterId], [FirstName], [Middle], [LastName], [Image], [Caption], [Link]) VALUES (137, N'Daniel', NULL, N'Hartman', N'cm_7_12.jpg', N'Daniel Hartman', NULL)
INSERT [dbo].[Rosters] ([RosterId], [FirstName], [Middle], [LastName], [Image], [Caption], [Link]) VALUES (138, N'Aileen', NULL, N'Hedden', N'cm_8_12.jpg', N'Aileen Hedden', NULL)
INSERT [dbo].[Rosters] ([RosterId], [FirstName], [Middle], [LastName], [Image], [Caption], [Link]) VALUES (139, N'Jeff', NULL, N'Henderson', N'cm_9_12.jpg', N'Jeff Henderson', NULL)
INSERT [dbo].[Rosters] ([RosterId], [FirstName], [Middle], [LastName], [Image], [Caption], [Link]) VALUES (140, N'Anita', NULL, N'Henry', N'cm_11_12.jpg', N'Anita Henry', NULL)
INSERT [dbo].[Rosters] ([RosterId], [FirstName], [Middle], [LastName], [Image], [Caption], [Link]) VALUES (141, N'Josephine', NULL, N'Hernandez', N'cm_12_12.jpg', N'Josephine Hernandez', NULL)
INSERT [dbo].[Rosters] ([RosterId], [FirstName], [Middle], [LastName], [Image], [Caption], [Link]) VALUES (142, N'Michael', NULL, N'Higel', N'cm_13_12.jpg', N'Michael Higel', NULL)
INSERT [dbo].[Rosters] ([RosterId], [FirstName], [Middle], [LastName], [Image], [Caption], [Link]) VALUES (143, N'Mary', NULL, N'Hilliker', N'cm_14_12.jpg', N'Mary Hilliker', NULL)
INSERT [dbo].[Rosters] ([RosterId], [FirstName], [Middle], [LastName], [Image], [Caption], [Link]) VALUES (144, N'Natalie', NULL, N'Hill', N'cm_1_13.jpg', N'Natalie Hill', NULL)
INSERT [dbo].[Rosters] ([RosterId], [FirstName], [Middle], [LastName], [Image], [Caption], [Link]) VALUES (145, N'Troy', NULL, N'Hill', N'cm_2_13.jpg', N'Troy Hill', NULL)
INSERT [dbo].[Rosters] ([RosterId], [FirstName], [Middle], [LastName], [Image], [Caption], [Link]) VALUES (146, N'Kathleen', NULL, N'Hoatlin', N'cm_3_13.jpg', N'Kathleen Hoatlin', NULL)
INSERT [dbo].[Rosters] ([RosterId], [FirstName], [Middle], [LastName], [Image], [Caption], [Link]) VALUES (147, N'Scott', NULL, N'Hodges', N'cm_4_13.jpg', N'Scott Hodges', NULL)
INSERT [dbo].[Rosters] ([RosterId], [FirstName], [Middle], [LastName], [Image], [Caption], [Link]) VALUES (148, N'Charles', NULL, N'Holbrook', N'cm_6_13.jpg', N'Charles Holbrook', NULL)
INSERT [dbo].[Rosters] ([RosterId], [FirstName], [Middle], [LastName], [Image], [Caption], [Link]) VALUES (149, N'Karen', NULL, N'Holcomb', N'cm_7_13.jpg', N'Karen Holcomb', NULL)
INSERT [dbo].[Rosters] ([RosterId], [FirstName], [Middle], [LastName], [Image], [Caption], [Link]) VALUES (150, N'Gloria', NULL, N'Horning', N'cm_8_13.jpg', N'Gloria Horning', NULL)
INSERT [dbo].[Rosters] ([RosterId], [FirstName], [Middle], [LastName], [Image], [Caption], [Link]) VALUES (151, N'Ronald', NULL, N'Hudcosky', N'cm_9_13.jpg', N'Ronald Hudcosky', NULL)
INSERT [dbo].[Rosters] ([RosterId], [FirstName], [Middle], [LastName], [Image], [Caption], [Link]) VALUES (152, N'Allan', NULL, N'Hughey', N'cm_11_13.jpg', N'Allan Hughey', NULL)
INSERT [dbo].[Rosters] ([RosterId], [FirstName], [Middle], [LastName], [Image], [Caption], [Link]) VALUES (153, N'Celeste', NULL, N'Hurtado', N'cm_12_13.jpg', N'Celeste Hurtado', NULL)
INSERT [dbo].[Rosters] ([RosterId], [FirstName], [Middle], [LastName], [Image], [Caption], [Link]) VALUES (154, N'Dawn', NULL, N'Jarvis', N'cm_13_13.jpg', N'Dawn Jarvis', NULL)
INSERT [dbo].[Rosters] ([RosterId], [FirstName], [Middle], [LastName], [Image], [Caption], [Link]) VALUES (155, N'Jerri', NULL, N'Jensen', N'cm_14_13.jpg', N'Jerri Jensen', NULL)
INSERT [dbo].[Rosters] ([RosterId], [FirstName], [Middle], [LastName], [Image], [Caption], [Link]) VALUES (156, N'Monilola', NULL, N'Johnson', N'cm_2_14.jpg', N'Monilola Johnson', NULL)
INSERT [dbo].[Rosters] ([RosterId], [FirstName], [Middle], [LastName], [Image], [Caption], [Link]) VALUES (157, N'Tim', NULL, N'Johnson', N'cm_3_14.jpg', N'Tim Johnson', NULL)
INSERT [dbo].[Rosters] ([RosterId], [FirstName], [Middle], [LastName], [Image], [Caption], [Link]) VALUES (158, N'Natalie', NULL, N'Jones', N'cm_4_14.jpg', N'Natalie Jones', NULL)
INSERT [dbo].[Rosters] ([RosterId], [FirstName], [Middle], [LastName], [Image], [Caption], [Link]) VALUES (159, N'Christopher', NULL, N'Kelly', N'cm_5_14.jpg', N'Christopher Kelly', NULL)
INSERT [dbo].[Rosters] ([RosterId], [FirstName], [Middle], [LastName], [Image], [Caption], [Link]) VALUES (160, N'Norman', NULL, N'Kempt', N'cm_8_14.jpg', N'Norman Kempt', NULL)
INSERT [dbo].[Rosters] ([RosterId], [FirstName], [Middle], [LastName], [Image], [Caption], [Link]) VALUES (161, N'Kristine', NULL, N'Kenyon', N'cm_9_14.jpg', N'Kristine Kenyon', NULL)
INSERT [dbo].[Rosters] ([RosterId], [FirstName], [Middle], [LastName], [Image], [Caption], [Link]) VALUES (162, N'Lauralie', NULL, N'Kinney', N'cm_10_14.jpg', N'Lauralie Kinney', NULL)
INSERT [dbo].[Rosters] ([RosterId], [FirstName], [Middle], [LastName], [Image], [Caption], [Link]) VALUES (163, N'Bryce', NULL, N'Kinnison', N'cm_11_14.jpg', N'Bryce Kinnison', NULL)
INSERT [dbo].[Rosters] ([RosterId], [FirstName], [Middle], [LastName], [Image], [Caption], [Link]) VALUES (164, N'Nancy', NULL, N'Kirvan', N'cm_15_14.jpg', N'Nancy Kirvan', NULL)
INSERT [dbo].[Rosters] ([RosterId], [FirstName], [Middle], [LastName], [Image], [Caption], [Link]) VALUES (165, N'Gregory', NULL, N'Kiter', N'cm_16_14.jpg', N'Gregory Kiter', NULL)
INSERT [dbo].[Rosters] ([RosterId], [FirstName], [Middle], [LastName], [Image], [Caption], [Link]) VALUES (166, N'Penny', NULL, N'Klettke', N'cm_17_14.jpg', N'Penny Klettke', NULL)
INSERT [dbo].[Rosters] ([RosterId], [FirstName], [Middle], [LastName], [Image], [Caption], [Link]) VALUES (167, N'Leo', NULL, N'Klisch', N'cm_18_14.jpg', N'Leo Klisch', NULL)
INSERT [dbo].[Rosters] ([RosterId], [FirstName], [Middle], [LastName], [Image], [Caption], [Link]) VALUES (168, N'Laura', NULL, N'Korloch', N'cm_2_15.jpg', N'Laura Korloch', NULL)
INSERT [dbo].[Rosters] ([RosterId], [FirstName], [Middle], [LastName], [Image], [Caption], [Link]) VALUES (169, N'Jo Ann', NULL, N'Land', N'cm_3_15.jpg', N'Jo Ann Land', NULL)
INSERT [dbo].[Rosters] ([RosterId], [FirstName], [Middle], [LastName], [Image], [Caption], [Link]) VALUES (170, N'Richard', NULL, N'Lashley', N'cm_4_15.jpg', N'Richard Lashley', NULL)
INSERT [dbo].[Rosters] ([RosterId], [FirstName], [Middle], [LastName], [Image], [Caption], [Link]) VALUES (171, N'Donna', NULL, N'Lauzun', N'cm_5_15.jpg', N'Donna Lauzun', NULL)
INSERT [dbo].[Rosters] ([RosterId], [FirstName], [Middle], [LastName], [Image], [Caption], [Link]) VALUES (172, N'Timothy', NULL, N'Lewis', N'cm_8_15.jpg', N'Timothy Lewis', NULL)
INSERT [dbo].[Rosters] ([RosterId], [FirstName], [Middle], [LastName], [Image], [Caption], [Link]) VALUES (173, N'Petaling', NULL, N'Li', N'cm_9_15.jpg', N'Petaling Li', NULL)
INSERT [dbo].[Rosters] ([RosterId], [FirstName], [Middle], [LastName], [Image], [Caption], [Link]) VALUES (174, N'Trina', NULL, N'Liles', N'cm_10_15.jpg', N'Trina Liles', NULL)
INSERT [dbo].[Rosters] ([RosterId], [FirstName], [Middle], [LastName], [Image], [Caption], [Link]) VALUES (175, N'Jeanette', NULL, N'Littlejohn', N'cm_11_15.jpg', N'Jeanette Littlejohn', NULL)
INSERT [dbo].[Rosters] ([RosterId], [FirstName], [Middle], [LastName], [Image], [Caption], [Link]) VALUES (176, N'William', NULL, N'Long', N'cm_15_15.jpg', N'William Long', NULL)
INSERT [dbo].[Rosters] ([RosterId], [FirstName], [Middle], [LastName], [Image], [Caption], [Link]) VALUES (177, N'Scott', NULL, N'Longhurst', N'cm_16_15.jpg', N'Scott Longhurst', NULL)
INSERT [dbo].[Rosters] ([RosterId], [FirstName], [Middle], [LastName], [Image], [Caption], [Link]) VALUES (178, N'Bryon', NULL, N'Longmire', N'cm_17_15.jpg', N'Bryon Longmire', NULL)
INSERT [dbo].[Rosters] ([RosterId], [FirstName], [Middle], [LastName], [Image], [Caption], [Link]) VALUES (179, N'Tammy', NULL, N'Losey', N'cm_18_15.jpg', N'Tammy Losey', NULL)
INSERT [dbo].[Rosters] ([RosterId], [FirstName], [Middle], [LastName], [Image], [Caption], [Link]) VALUES (180, N'David', NULL, N'Lopez', N'cm_2_16.jpg', N'David Lopez', NULL)
INSERT [dbo].[Rosters] ([RosterId], [FirstName], [Middle], [LastName], [Image], [Caption], [Link]) VALUES (181, N'William', NULL, N'Luttrell', N'cm_3_16.jpg', N'William Luttrell', NULL)
INSERT [dbo].[Rosters] ([RosterId], [FirstName], [Middle], [LastName], [Image], [Caption], [Link]) VALUES (182, N'Michelle', NULL, N'Major', N'cm_4_16.jpg', N'Michelle Major', NULL)
INSERT [dbo].[Rosters] ([RosterId], [FirstName], [Middle], [LastName], [Image], [Caption], [Link]) VALUES (183, N'Arthur', NULL, N'Makries', N'cm_5_16.jpg', N'Arthur Makries', NULL)
INSERT [dbo].[Rosters] ([RosterId], [FirstName], [Middle], [LastName], [Image], [Caption], [Link]) VALUES (184, N'Nancy', NULL, N'Maksymowski', N'cm_8_16.jpg', N'Nancy Maksymowski', NULL)
INSERT [dbo].[Rosters] ([RosterId], [FirstName], [Middle], [LastName], [Image], [Caption], [Link]) VALUES (185, N'Sandra', NULL, N'Marshall', N'cm_9_16.jpg', N'Sandra Marshall', NULL)
INSERT [dbo].[Rosters] ([RosterId], [FirstName], [Middle], [LastName], [Image], [Caption], [Link]) VALUES (186, N'Zandra', NULL, N'Mask', N'cm_10_16.jpg', N'Zandra Mask', NULL)
INSERT [dbo].[Rosters] ([RosterId], [FirstName], [Middle], [LastName], [Image], [Caption], [Link]) VALUES (187, N'Gerald', NULL, N'Massingill', N'cm_11_16.jpg', N'Gerald Massingill', NULL)
INSERT [dbo].[Rosters] ([RosterId], [FirstName], [Middle], [LastName], [Image], [Caption], [Link]) VALUES (188, N'Steven', NULL, N'Matthews', N'cm_15_16.jpg', N'Steven Matthews', NULL)
INSERT [dbo].[Rosters] ([RosterId], [FirstName], [Middle], [LastName], [Image], [Caption], [Link]) VALUES (189, N'Colleen', NULL, N'McBryde', N'cm_16_16.jpg', N'Colleen McBryde', NULL)
INSERT [dbo].[Rosters] ([RosterId], [FirstName], [Middle], [LastName], [Image], [Caption], [Link]) VALUES (190, N'John', NULL, N'McCormick', N'cm_17_16.jpg', N'John McCormick', NULL)
INSERT [dbo].[Rosters] ([RosterId], [FirstName], [Middle], [LastName], [Image], [Caption], [Link]) VALUES (191, N'Steven', NULL, N'McDonald', N'cm_18_16.jpg', N'Steven McDonald', NULL)
INSERT [dbo].[Rosters] ([RosterId], [FirstName], [Middle], [LastName], [Image], [Caption], [Link]) VALUES (192, N'Crystal', NULL, N'McFadden', N'cm_2_17.jpg', N'Crystal McFadden', NULL)
INSERT [dbo].[Rosters] ([RosterId], [FirstName], [Middle], [LastName], [Image], [Caption], [Link]) VALUES (193, N'Thomas', NULL, N'McMahon', N'cm_3_17.jpg', N'Thomas McMahon', NULL)
INSERT [dbo].[Rosters] ([RosterId], [FirstName], [Middle], [LastName], [Image], [Caption], [Link]) VALUES (194, N'Christine', NULL, N'McMullen', N'cm_4_17.jpg', N'Christine McMullen', NULL)
INSERT [dbo].[Rosters] ([RosterId], [FirstName], [Middle], [LastName], [Image], [Caption], [Link]) VALUES (195, N'David', NULL, N'McNeilly', N'cm_5_17.jpg', N'David McNeilly', NULL)
INSERT [dbo].[Rosters] ([RosterId], [FirstName], [Middle], [LastName], [Image], [Caption], [Link]) VALUES (196, N'James', NULL, N'McQueen', N'cm_8_17.jpg', N'James McQueen', NULL)
INSERT [dbo].[Rosters] ([RosterId], [FirstName], [Middle], [LastName], [Image], [Caption], [Link]) VALUES (197, N'Lisa', NULL, N'McQueen', N'cm_9_17.jpg', N'Lisa McQueen', NULL)
INSERT [dbo].[Rosters] ([RosterId], [FirstName], [Middle], [LastName], [Image], [Caption], [Link]) VALUES (198, N'Shelly', NULL, N'McSherry', N'cm_10_17.jpg', N'Shelly McSherry', NULL)
INSERT [dbo].[Rosters] ([RosterId], [FirstName], [Middle], [LastName], [Image], [Caption], [Link]) VALUES (199, N'Maria', NULL, N'Mendez', N'cm_11_17.jpg', N'Maria Mendez', NULL)
GO
INSERT [dbo].[Rosters] ([RosterId], [FirstName], [Middle], [LastName], [Image], [Caption], [Link]) VALUES (200, N'Roger', NULL, N'Migendt', N'cm_15_17.jpg', N'Roger Migendt', NULL)
INSERT [dbo].[Rosters] ([RosterId], [FirstName], [Middle], [LastName], [Image], [Caption], [Link]) VALUES (201, N'Emmett', NULL, N'Miller', N'cm_16_17.jpg', N'Emmett Miller', NULL)
INSERT [dbo].[Rosters] ([RosterId], [FirstName], [Middle], [LastName], [Image], [Caption], [Link]) VALUES (202, N'Mark', NULL, N'Miller', N'cm_17_17.jpg', N'Mark Miller', NULL)
INSERT [dbo].[Rosters] ([RosterId], [FirstName], [Middle], [LastName], [Image], [Caption], [Link]) VALUES (203, N'John', NULL, N'Minnard', N'cm_18_17.jpg', N'John Minnard', NULL)
INSERT [dbo].[Rosters] ([RosterId], [FirstName], [Middle], [LastName], [Image], [Caption], [Link]) VALUES (204, N'Mark', NULL, N'Mitchell', N'cm_2_18.jpg', N'Mark Mitchell', NULL)
INSERT [dbo].[Rosters] ([RosterId], [FirstName], [Middle], [LastName], [Image], [Caption], [Link]) VALUES (205, N'Kim', NULL, N'Moore', N'cm_3_18.jpg', N'Kim Moore', NULL)
INSERT [dbo].[Rosters] ([RosterId], [FirstName], [Middle], [LastName], [Image], [Caption], [Link]) VALUES (206, N'Marsha', NULL, N'Moore', N'cm_4_18.jpg', N'Marsha Moore', NULL)
INSERT [dbo].[Rosters] ([RosterId], [FirstName], [Middle], [LastName], [Image], [Caption], [Link]) VALUES (207, N'Karen', NULL, N'Morgan', N'cm_5_18.jpg', N'Karen Morgan', NULL)
INSERT [dbo].[Rosters] ([RosterId], [FirstName], [Middle], [LastName], [Image], [Caption], [Link]) VALUES (208, N'Keri', NULL, N'Mosher', N'cm_8_18.jpg', N'Keri Mosher', NULL)
INSERT [dbo].[Rosters] ([RosterId], [FirstName], [Middle], [LastName], [Image], [Caption], [Link]) VALUES (209, N'Robert', NULL, N'Myers', N'cm_9_18.jpg', N'Robert Myers', NULL)
INSERT [dbo].[Rosters] ([RosterId], [FirstName], [Middle], [LastName], [Image], [Caption], [Link]) VALUES (210, N'Benny', NULL, N'Newman', N'cm_10_18.jpg', N'Benny Newman', NULL)
INSERT [dbo].[Rosters] ([RosterId], [FirstName], [Middle], [LastName], [Image], [Caption], [Link]) VALUES (211, N'Adrien', NULL, N'Nicholas', N'cm_11_18.jpg', N'Adrien Nicholas', NULL)
INSERT [dbo].[Rosters] ([RosterId], [FirstName], [Middle], [LastName], [Image], [Caption], [Link]) VALUES (212, N'Duane', NULL, N'Norwood', N'cm_15_18.jpg', N'Duane Norwood', NULL)
INSERT [dbo].[Rosters] ([RosterId], [FirstName], [Middle], [LastName], [Image], [Caption], [Link]) VALUES (213, N'James', NULL, N'Nussdorfer', N'cm_16_18.jpg', N'James Nussdorfer', NULL)
INSERT [dbo].[Rosters] ([RosterId], [FirstName], [Middle], [LastName], [Image], [Caption], [Link]) VALUES (214, N'Brian', NULL, N'Oatley', N'cm_17_18.jpg', N'Brian Oatley', NULL)
INSERT [dbo].[Rosters] ([RosterId], [FirstName], [Middle], [LastName], [Image], [Caption], [Link]) VALUES (215, N'Karlene', NULL, N'Ogston', N'cm_18_18.jpg', N'Karlene Ogston', NULL)
INSERT [dbo].[Rosters] ([RosterId], [FirstName], [Middle], [LastName], [Image], [Caption], [Link]) VALUES (216, N'Mark', NULL, N'Ostrander', N'cm_3_19.jpg', N'Mark Ostrander', NULL)
INSERT [dbo].[Rosters] ([RosterId], [FirstName], [Middle], [LastName], [Image], [Caption], [Link]) VALUES (217, N'Benjamin', NULL, N'Oviedo', N'cm_5_19.jpg', N'Benjamin Oviedo', NULL)
INSERT [dbo].[Rosters] ([RosterId], [FirstName], [Middle], [LastName], [Image], [Caption], [Link]) VALUES (218, N'Jose', NULL, N'Oviedo', N'cm_7_19.jpg', N'Jose Oviedo', NULL)
INSERT [dbo].[Rosters] ([RosterId], [FirstName], [Middle], [LastName], [Image], [Caption], [Link]) VALUES (219, N'Fred', NULL, N'Page', N'cm_9_19.jpg', N'Fred Page', NULL)
INSERT [dbo].[Rosters] ([RosterId], [FirstName], [Middle], [LastName], [Image], [Caption], [Link]) VALUES (220, N'Shari', NULL, N'Page', N'cm_15_19.jpg', N'Shari Page', NULL)
INSERT [dbo].[Rosters] ([RosterId], [FirstName], [Middle], [LastName], [Image], [Caption], [Link]) VALUES (221, N'Charles', NULL, N'Pakkala', N'cm_16_19.jpg', N'Charles Pakkala', NULL)
INSERT [dbo].[Rosters] ([RosterId], [FirstName], [Middle], [LastName], [Image], [Caption], [Link]) VALUES (222, N'Debra', NULL, N'Palmer', N'cm_17_19.jpg', N'Debra Palmer', NULL)
INSERT [dbo].[Rosters] ([RosterId], [FirstName], [Middle], [LastName], [Image], [Caption], [Link]) VALUES (223, N'Darrell', NULL, N'Parker', N'cm_18_19.jpg', N'Darrell Parker', NULL)
INSERT [dbo].[Rosters] ([RosterId], [FirstName], [Middle], [LastName], [Image], [Caption], [Link]) VALUES (224, N'Ronald', NULL, N'Partlo', N'cm_23_19.jpg', N'Ronald Partlo', NULL)
INSERT [dbo].[Rosters] ([RosterId], [FirstName], [Middle], [LastName], [Image], [Caption], [Link]) VALUES (225, N'Heather', NULL, N'Parviainen', N'cm_24_19.jpg', N'Heather Parviainen', NULL)
INSERT [dbo].[Rosters] ([RosterId], [FirstName], [Middle], [LastName], [Image], [Caption], [Link]) VALUES (226, N'Robert', NULL, N'Pavwoski', N'cm_25_19.jpg', N'Robert Pavwoski', NULL)
INSERT [dbo].[Rosters] ([RosterId], [FirstName], [Middle], [LastName], [Image], [Caption], [Link]) VALUES (227, N'Robert', NULL, N'Payne', N'cm_26_19.jpg', N'Robert Payne', NULL)
INSERT [dbo].[Rosters] ([RosterId], [FirstName], [Middle], [LastName], [Image], [Caption], [Link]) VALUES (228, N'Beverly', NULL, N'Pede', N'cm_2_20.jpg', N'Beverly Pede', NULL)
INSERT [dbo].[Rosters] ([RosterId], [FirstName], [Middle], [LastName], [Image], [Caption], [Link]) VALUES (229, N'Dlyn', NULL, N'Penix', N'cm_3_20.jpg', N'Dlyn Penix', NULL)
INSERT [dbo].[Rosters] ([RosterId], [FirstName], [Middle], [LastName], [Image], [Caption], [Link]) VALUES (230, N'Richard', NULL, N'Perrin', N'cm_4_20.jpg', N'Richard Perrin', NULL)
INSERT [dbo].[Rosters] ([RosterId], [FirstName], [Middle], [LastName], [Image], [Caption], [Link]) VALUES (231, N'Nancy', NULL, N'Peters', N'cm_5_20.jpg', N'Nancy Peters', NULL)
INSERT [dbo].[Rosters] ([RosterId], [FirstName], [Middle], [LastName], [Image], [Caption], [Link]) VALUES (232, N'Hien', NULL, N'Pham', N'cm_8_20.jpg', N'Hien Pham', NULL)
INSERT [dbo].[Rosters] ([RosterId], [FirstName], [Middle], [LastName], [Image], [Caption], [Link]) VALUES (233, N'Susie', NULL, N'Phillips', N'cm_9_20.jpg', N'Susie Phillips', NULL)
INSERT [dbo].[Rosters] ([RosterId], [FirstName], [Middle], [LastName], [Image], [Caption], [Link]) VALUES (234, N'Timothy', NULL, N'Phillips', N'cm_10_20.jpg', N'Timothy Phillips', NULL)
INSERT [dbo].[Rosters] ([RosterId], [FirstName], [Middle], [LastName], [Image], [Caption], [Link]) VALUES (235, N'Linda', NULL, N'Philo', N'cm_11_20.jpg', N'Linda Philo', NULL)
INSERT [dbo].[Rosters] ([RosterId], [FirstName], [Middle], [LastName], [Image], [Caption], [Link]) VALUES (236, N'Bryan', NULL, N'Polihonki', N'cm_15_20.jpg', N'Bryan Polihonki', NULL)
INSERT [dbo].[Rosters] ([RosterId], [FirstName], [Middle], [LastName], [Image], [Caption], [Link]) VALUES (237, N'James', NULL, N'Pratt', N'cm_16_20.jpg', N'James Pratt', NULL)
INSERT [dbo].[Rosters] ([RosterId], [FirstName], [Middle], [LastName], [Image], [Caption], [Link]) VALUES (238, N'Anne', NULL, N'Priebe', N'cm_17_20.jpg', N'Anne Priebe', NULL)
INSERT [dbo].[Rosters] ([RosterId], [FirstName], [Middle], [LastName], [Image], [Caption], [Link]) VALUES (239, N'Darryl', NULL, N'Proffit', N'cm_18_20.jpg', N'Darryl Proffit', NULL)
INSERT [dbo].[Rosters] ([RosterId], [FirstName], [Middle], [LastName], [Image], [Caption], [Link]) VALUES (240, N'Victoria', NULL, N'Pulido', N'cm_2_21.jpg', N'Victoria Pulido', NULL)
INSERT [dbo].[Rosters] ([RosterId], [FirstName], [Middle], [LastName], [Image], [Caption], [Link]) VALUES (241, N'Gerald', NULL, N'Puma', N'cm_3_21.jpg', N'Gerald Puma', NULL)
INSERT [dbo].[Rosters] ([RosterId], [FirstName], [Middle], [LastName], [Image], [Caption], [Link]) VALUES (242, N'Russell', NULL, N'Purvis', N'cm_4_21.jpg', N'Russell Purvis', NULL)
INSERT [dbo].[Rosters] ([RosterId], [FirstName], [Middle], [LastName], [Image], [Caption], [Link]) VALUES (243, N'Renee', NULL, N'Reed', N'cm_5_21.jpg', N'Renee Reed', NULL)
INSERT [dbo].[Rosters] ([RosterId], [FirstName], [Middle], [LastName], [Image], [Caption], [Link]) VALUES (244, N'Patrick', NULL, N'Reedy', N'cm_8_21.jpg', N'Patrick Reedy', NULL)
INSERT [dbo].[Rosters] ([RosterId], [FirstName], [Middle], [LastName], [Image], [Caption], [Link]) VALUES (245, N'Jane', NULL, N'Reibeling', N'cm_9_21.jpg', N'Jane Reibeling', NULL)
INSERT [dbo].[Rosters] ([RosterId], [FirstName], [Middle], [LastName], [Image], [Caption], [Link]) VALUES (246, N'Thomas', NULL, N'Rice', N'cm_10_21.jpg', N'Thomas Rice', NULL)
INSERT [dbo].[Rosters] ([RosterId], [FirstName], [Middle], [LastName], [Image], [Caption], [Link]) VALUES (247, N'Tamela', NULL, N'Richard', N'cm_11_21.jpg', N'Tamela Richard', NULL)
INSERT [dbo].[Rosters] ([RosterId], [FirstName], [Middle], [LastName], [Image], [Caption], [Link]) VALUES (248, N'Richard', NULL, N'Richter', N'cm_15_21.jpg', N'Richard Richter', NULL)
INSERT [dbo].[Rosters] ([RosterId], [FirstName], [Middle], [LastName], [Image], [Caption], [Link]) VALUES (249, N'Karon', NULL, N'Riley', N'cm_16_21.jpg', N'Karon Riley', NULL)
INSERT [dbo].[Rosters] ([RosterId], [FirstName], [Middle], [LastName], [Image], [Caption], [Link]) VALUES (250, N'Kevin', NULL, N'Robbins', N'cm_17_21.jpg', N'Kevin Robbins', NULL)
INSERT [dbo].[Rosters] ([RosterId], [FirstName], [Middle], [LastName], [Image], [Caption], [Link]) VALUES (251, N'Dealia', NULL, N'Roberts', N'cm_18_21.jpg', N'Dealia Roberts', NULL)
INSERT [dbo].[Rosters] ([RosterId], [FirstName], [Middle], [LastName], [Image], [Caption], [Link]) VALUES (252, N'Roger', NULL, N'Roberts', N'cm_2_22.jpg', N'Roger Roberts', NULL)
INSERT [dbo].[Rosters] ([RosterId], [FirstName], [Middle], [LastName], [Image], [Caption], [Link]) VALUES (253, N'Gregory', NULL, N'Robinson', N'cm_3_22.jpg', N'Gregory Robinson', NULL)
INSERT [dbo].[Rosters] ([RosterId], [FirstName], [Middle], [LastName], [Image], [Caption], [Link]) VALUES (254, N'Darian', NULL, N'Roby', N'cm_4_22.jpg', N'Darian Roby', NULL)
INSERT [dbo].[Rosters] ([RosterId], [FirstName], [Middle], [LastName], [Image], [Caption], [Link]) VALUES (255, N'Cindy', NULL, N'Rodriguez', N'cm_5_22.jpg', N'Cindy Rodriguez', NULL)
INSERT [dbo].[Rosters] ([RosterId], [FirstName], [Middle], [LastName], [Image], [Caption], [Link]) VALUES (256, N'Lisa', NULL, N'Rose', N'cm_8_22.jpg', N'Lisa Rose', NULL)
INSERT [dbo].[Rosters] ([RosterId], [FirstName], [Middle], [LastName], [Image], [Caption], [Link]) VALUES (257, N'Brigitte', NULL, N'Ross', N'cm_9_22.jpg', N'Brigitte Ross', NULL)
INSERT [dbo].[Rosters] ([RosterId], [FirstName], [Middle], [LastName], [Image], [Caption], [Link]) VALUES (258, N'Linda', NULL, N'Rueckert', N'cm_10_22.jpg', N'Linda Rueckert', NULL)
INSERT [dbo].[Rosters] ([RosterId], [FirstName], [Middle], [LastName], [Image], [Caption], [Link]) VALUES (259, N'Irene', NULL, N'Ruiz', N'cm_11_22.jpg', N'Irene Ruiz', NULL)
INSERT [dbo].[Rosters] ([RosterId], [FirstName], [Middle], [LastName], [Image], [Caption], [Link]) VALUES (260, N'Ann', NULL, N'Russell', N'cm_15_22.jpg', N'Ann Russell', NULL)
INSERT [dbo].[Rosters] ([RosterId], [FirstName], [Middle], [LastName], [Image], [Caption], [Link]) VALUES (261, N'Julie', NULL, N'Russell', N'cm_16_22.jpg', N'Julie Russell', NULL)
INSERT [dbo].[Rosters] ([RosterId], [FirstName], [Middle], [LastName], [Image], [Caption], [Link]) VALUES (262, N'Michael', NULL, N'Salazar', N'cm_17_22.jpg', N'Michael Salazar', NULL)
INSERT [dbo].[Rosters] ([RosterId], [FirstName], [Middle], [LastName], [Image], [Caption], [Link]) VALUES (263, N'Rosemary', NULL, N'Salazar', N'cm_18_22.jpg', N'Rosemary Salazar', NULL)
INSERT [dbo].[Rosters] ([RosterId], [FirstName], [Middle], [LastName], [Image], [Caption], [Link]) VALUES (264, N'Sandra', NULL, N'Salisbury', N'cm_2_23.jpg', N'Sandra Salisbury', NULL)
INSERT [dbo].[Rosters] ([RosterId], [FirstName], [Middle], [LastName], [Image], [Caption], [Link]) VALUES (265, N'Hector', NULL, N'Sanchez', N'cm_3_23.jpg', N'Hector Sanchez', NULL)
INSERT [dbo].[Rosters] ([RosterId], [FirstName], [Middle], [LastName], [Image], [Caption], [Link]) VALUES (266, N'Miguel', NULL, N'Sanchez', N'cm_4_23.jpg', N'Miguel Sanchez', NULL)
INSERT [dbo].[Rosters] ([RosterId], [FirstName], [Middle], [LastName], [Image], [Caption], [Link]) VALUES (267, N'Sonya', NULL, N'Sanford', N'cm_5_23.jpg', N'Sonya Sanford', NULL)
INSERT [dbo].[Rosters] ([RosterId], [FirstName], [Middle], [LastName], [Image], [Caption], [Link]) VALUES (268, N'Geannine', NULL, N'Sawyer', N'cm_8_23.jpg', N'Geannine Sawyer', NULL)
INSERT [dbo].[Rosters] ([RosterId], [FirstName], [Middle], [LastName], [Image], [Caption], [Link]) VALUES (269, N'Glenn', NULL, N'Sawyer', N'cm_9_23.jpg', N'Glenn Sawyer', NULL)
INSERT [dbo].[Rosters] ([RosterId], [FirstName], [Middle], [LastName], [Image], [Caption], [Link]) VALUES (270, N'Christopher', NULL, N'Schieberl', N'cm_10_23.jpg', N'Christopher Schieberl', NULL)
INSERT [dbo].[Rosters] ([RosterId], [FirstName], [Middle], [LastName], [Image], [Caption], [Link]) VALUES (271, N'Michael', NULL, N'Schramm', N'cm_11_23.jpg', N'Michael Schramm', NULL)
INSERT [dbo].[Rosters] ([RosterId], [FirstName], [Middle], [LastName], [Image], [Caption], [Link]) VALUES (272, N'Crystal', NULL, N'Scott', N'cm_15_23.jpg', N'Crystal Scott', NULL)
INSERT [dbo].[Rosters] ([RosterId], [FirstName], [Middle], [LastName], [Image], [Caption], [Link]) VALUES (273, N'Marvin', NULL, N'Scott', N'cm_16_23.jpg', N'Marvin Scott', NULL)
INSERT [dbo].[Rosters] ([RosterId], [FirstName], [Middle], [LastName], [Image], [Caption], [Link]) VALUES (274, N'Robert', NULL, N'Scott', N'cm_17_23.jpg', N'Robert Scott', NULL)
INSERT [dbo].[Rosters] ([RosterId], [FirstName], [Middle], [LastName], [Image], [Caption], [Link]) VALUES (275, N'Robin', NULL, N'Seling', N'cm_18_23.jpg', N'Robin Seling', NULL)
INSERT [dbo].[Rosters] ([RosterId], [FirstName], [Middle], [LastName], [Image], [Caption], [Link]) VALUES (276, N'Rebecca', NULL, N'Settle', N'cm_2_24.jpg', N'Rebecca Settle', NULL)
INSERT [dbo].[Rosters] ([RosterId], [FirstName], [Middle], [LastName], [Image], [Caption], [Link]) VALUES (277, N'Kelly', NULL, N'Sevenski', N'cm_3_24.jpg', N'Kelly Sevenski', NULL)
INSERT [dbo].[Rosters] ([RosterId], [FirstName], [Middle], [LastName], [Image], [Caption], [Link]) VALUES (278, N'Emerson', NULL, N'Sheffey', N'cm_4_24.jpg', N'Emerson Sheffey', NULL)
INSERT [dbo].[Rosters] ([RosterId], [FirstName], [Middle], [LastName], [Image], [Caption], [Link]) VALUES (279, N'Eric', NULL, N'Shields', N'cm_5_24.jpg', N'Eric Shields', NULL)
INSERT [dbo].[Rosters] ([RosterId], [FirstName], [Middle], [LastName], [Image], [Caption], [Link]) VALUES (280, N'Rebecca', NULL, N'Shockley', N'cm_8_24.jpg', N'Rebecca Shockley', NULL)
INSERT [dbo].[Rosters] ([RosterId], [FirstName], [Middle], [LastName], [Image], [Caption], [Link]) VALUES (281, N'Bryan', NULL, N'Smith', N'cm_9_24.jpg', N'Bryan Smith', NULL)
INSERT [dbo].[Rosters] ([RosterId], [FirstName], [Middle], [LastName], [Image], [Caption], [Link]) VALUES (282, N'Julie', NULL, N'Smith', N'cm_10_24.jpg', N'Julie Smith', NULL)
INSERT [dbo].[Rosters] ([RosterId], [FirstName], [Middle], [LastName], [Image], [Caption], [Link]) VALUES (283, N'Stephanie', NULL, N'Smith', N'cm_11_24.jpg', N'Stephanie Smith', NULL)
INSERT [dbo].[Rosters] ([RosterId], [FirstName], [Middle], [LastName], [Image], [Caption], [Link]) VALUES (284, N'Rebecca', NULL, N'Spurling', N'cm_15_24.jpg', N'Rebecca Spurling', NULL)
INSERT [dbo].[Rosters] ([RosterId], [FirstName], [Middle], [LastName], [Image], [Caption], [Link]) VALUES (285, N'Dondi', NULL, N'Squires', N'cm_16_24.jpg', N'Dondi Squires', NULL)
INSERT [dbo].[Rosters] ([RosterId], [FirstName], [Middle], [LastName], [Image], [Caption], [Link]) VALUES (286, N'John', NULL, N'Steadman', N'cm_17_24.jpg', N'John Steadman', NULL)
INSERT [dbo].[Rosters] ([RosterId], [FirstName], [Middle], [LastName], [Image], [Caption], [Link]) VALUES (287, N'Tammy', NULL, N'Stephens', N'cm_18_24.jpg', N'Tammy Stephens', NULL)
INSERT [dbo].[Rosters] ([RosterId], [FirstName], [Middle], [LastName], [Image], [Caption], [Link]) VALUES (288, N'Ann', NULL, N'Stockwell', N'cm_2_25.jpg', N'Ann Stockwell', NULL)
INSERT [dbo].[Rosters] ([RosterId], [FirstName], [Middle], [LastName], [Image], [Caption], [Link]) VALUES (289, N'Timothy', NULL, N'Stokes', N'cm_3_25.jpg', N'Timothy Stokes', NULL)
INSERT [dbo].[Rosters] ([RosterId], [FirstName], [Middle], [LastName], [Image], [Caption], [Link]) VALUES (290, N'Louis', NULL, N'Streeter', N'cm_4_25.jpg', N'Louis Streeter', NULL)
INSERT [dbo].[Rosters] ([RosterId], [FirstName], [Middle], [LastName], [Image], [Caption], [Link]) VALUES (291, N'Patricia', NULL, N'Stroesenreuther', N'cm_5_25.jpg', N'Patricia Stroesenreuther', NULL)
INSERT [dbo].[Rosters] ([RosterId], [FirstName], [Middle], [LastName], [Image], [Caption], [Link]) VALUES (292, N'Shari', NULL, N'Struthers', N'cm_8_25.jpg', N'Shari Struthers', NULL)
INSERT [dbo].[Rosters] ([RosterId], [FirstName], [Middle], [LastName], [Image], [Caption], [Link]) VALUES (293, N'Jill', NULL, N'Sturk', N'cm_9_25.jpg', N'Jill Sturk', NULL)
INSERT [dbo].[Rosters] ([RosterId], [FirstName], [Middle], [LastName], [Image], [Caption], [Link]) VALUES (294, N'Christine', NULL, N'Summers', N'cm_10_25.jpg', N'Christine Summers', NULL)
INSERT [dbo].[Rosters] ([RosterId], [FirstName], [Middle], [LastName], [Image], [Caption], [Link]) VALUES (295, N'Carol', NULL, N'Sutter', N'cm_11_25.jpg', N'Carol Sutter', NULL)
INSERT [dbo].[Rosters] ([RosterId], [FirstName], [Middle], [LastName], [Image], [Caption], [Link]) VALUES (296, N'Jean', NULL, N'Syswerda', N'cm_15_25.jpg', N'Jean Syswerda', NULL)
INSERT [dbo].[Rosters] ([RosterId], [FirstName], [Middle], [LastName], [Image], [Caption], [Link]) VALUES (297, N'Artlaine', NULL, N'Thomas', N'cm_16_25.jpg', N'Artlaine Thomas', NULL)
INSERT [dbo].[Rosters] ([RosterId], [FirstName], [Middle], [LastName], [Image], [Caption], [Link]) VALUES (298, N'Kimberly', NULL, N'Thompson', N'cm_17_25.jpg', N'Kimberly Thompson', NULL)
INSERT [dbo].[Rosters] ([RosterId], [FirstName], [Middle], [LastName], [Image], [Caption], [Link]) VALUES (299, N'Cynthia', NULL, N'Todd', N'cm_18_25.jpg', N'Cynthia Todd', NULL)
GO
INSERT [dbo].[Rosters] ([RosterId], [FirstName], [Middle], [LastName], [Image], [Caption], [Link]) VALUES (300, N'Gregory', NULL, N'Toman', N'cm_2_26.jpg', N'Gregory Toman', NULL)
INSERT [dbo].[Rosters] ([RosterId], [FirstName], [Middle], [LastName], [Image], [Caption], [Link]) VALUES (301, N'Diana', NULL, N'Torres', N'cm_3_26.jpg', N'Diana Torres', NULL)
INSERT [dbo].[Rosters] ([RosterId], [FirstName], [Middle], [LastName], [Image], [Caption], [Link]) VALUES (302, N'Donna', NULL, N'Traverse', N'cm_4_26.jpg', N'Donna Traverse', NULL)
INSERT [dbo].[Rosters] ([RosterId], [FirstName], [Middle], [LastName], [Image], [Caption], [Link]) VALUES (303, N'Joseph', NULL, N'Tremblay', N'cm_5_26.jpg', N'Joseph Tremblay', NULL)
INSERT [dbo].[Rosters] ([RosterId], [FirstName], [Middle], [LastName], [Image], [Caption], [Link]) VALUES (304, N'Cynthia', NULL, N'Trice', N'cm_8_26.jpg', N'Cynthia Trice', NULL)
INSERT [dbo].[Rosters] ([RosterId], [FirstName], [Middle], [LastName], [Image], [Caption], [Link]) VALUES (305, N'Robert', NULL, N'Troon', N'cm_9_26.jpg', N'Robert Troon', NULL)
INSERT [dbo].[Rosters] ([RosterId], [FirstName], [Middle], [LastName], [Image], [Caption], [Link]) VALUES (306, N'Shelton', NULL, N'Tyson', N'cm_10_26.jpg', N'Shelton Tyson', NULL)
INSERT [dbo].[Rosters] ([RosterId], [FirstName], [Middle], [LastName], [Image], [Caption], [Link]) VALUES (307, N'Ben', NULL, N'Upton', N'cm_11_26.jpg', N'Ben Upton', NULL)
INSERT [dbo].[Rosters] ([RosterId], [FirstName], [Middle], [LastName], [Image], [Caption], [Link]) VALUES (308, N'Nasrin', NULL, N'Vaiya', N'cm_15_26.jpg', N'Nasrin Vaiya', NULL)
INSERT [dbo].[Rosters] ([RosterId], [FirstName], [Middle], [LastName], [Image], [Caption], [Link]) VALUES (309, N'Donald', NULL, N'VanElls', N'cm_16_26.jpg', N'Donald VanElls', NULL)
INSERT [dbo].[Rosters] ([RosterId], [FirstName], [Middle], [LastName], [Image], [Caption], [Link]) VALUES (310, N'Jayne', NULL, N'VanKirk', N'cm_17_26.jpg', N'Jayne VanKirk', NULL)
INSERT [dbo].[Rosters] ([RosterId], [FirstName], [Middle], [LastName], [Image], [Caption], [Link]) VALUES (311, N'Jose', NULL, N'Velasquez', N'cm_18_26.jpg', N'Jose Velasquez', NULL)
INSERT [dbo].[Rosters] ([RosterId], [FirstName], [Middle], [LastName], [Image], [Caption], [Link]) VALUES (312, N'Magdalena', NULL, N'Velazquez', N'cm_2_27.jpg', N'Magdalena Velazquez', NULL)
INSERT [dbo].[Rosters] ([RosterId], [FirstName], [Middle], [LastName], [Image], [Caption], [Link]) VALUES (313, N'Edward', NULL, N'Vinette', N'cm_3_27.jpg', N'Edward Vinette', NULL)
INSERT [dbo].[Rosters] ([RosterId], [FirstName], [Middle], [LastName], [Image], [Caption], [Link]) VALUES (314, N'Bryan', NULL, N'Wade', N'cm_4_27.jpg', N'Bryan Wade', NULL)
INSERT [dbo].[Rosters] ([RosterId], [FirstName], [Middle], [LastName], [Image], [Caption], [Link]) VALUES (315, N'Ann', NULL, N'Wagner', N'cm_5_27.jpg', N'Ann Wagner', NULL)
INSERT [dbo].[Rosters] ([RosterId], [FirstName], [Middle], [LastName], [Image], [Caption], [Link]) VALUES (316, N'Sheryl', NULL, N'Walker', N'cm_8_27.jpg', N'Sheryl Walker', NULL)
INSERT [dbo].[Rosters] ([RosterId], [FirstName], [Middle], [LastName], [Image], [Caption], [Link]) VALUES (317, N'Constance', NULL, N'Walters', N'cm_9_27.jpg', N'Constance Walters', NULL)
INSERT [dbo].[Rosters] ([RosterId], [FirstName], [Middle], [LastName], [Image], [Caption], [Link]) VALUES (318, N'Nadine', NULL, N'Walters', N'cm_10_27.jpg', N'Nadine Walters', NULL)
INSERT [dbo].[Rosters] ([RosterId], [FirstName], [Middle], [LastName], [Image], [Caption], [Link]) VALUES (319, N'James', NULL, N'Wardell', N'cm_11_27.jpg', N'James Wardell', NULL)
INSERT [dbo].[Rosters] ([RosterId], [FirstName], [Middle], [LastName], [Image], [Caption], [Link]) VALUES (320, N'Jeff', NULL, N'Warren', N'cm_15_27.jpg', N'Jeff Warren', NULL)
INSERT [dbo].[Rosters] ([RosterId], [FirstName], [Middle], [LastName], [Image], [Caption], [Link]) VALUES (321, N'Fredrick', NULL, N'Watson', N'cm_16_27.jpg', N'Fredrick Watson', NULL)
INSERT [dbo].[Rosters] ([RosterId], [FirstName], [Middle], [LastName], [Image], [Caption], [Link]) VALUES (322, N'Timothy', NULL, N'Weigel', N'cm_17_27.jpg', N'Timothy Weigel', NULL)
INSERT [dbo].[Rosters] ([RosterId], [FirstName], [Middle], [LastName], [Image], [Caption], [Link]) VALUES (323, N'Tina', NULL, N'Whitford', N'cm_18_27.jpg', N'Tina Whitford', NULL)
INSERT [dbo].[Rosters] ([RosterId], [FirstName], [Middle], [LastName], [Image], [Caption], [Link]) VALUES (324, N'Michael', NULL, N'Whitman', N'cm_2_28.jpg', N'Michael Whitman', NULL)
INSERT [dbo].[Rosters] ([RosterId], [FirstName], [Middle], [LastName], [Image], [Caption], [Link]) VALUES (325, N'Christina', NULL, N'Wichtoski', N'cm_3_28.jpg', N'Christina Wichtoski', NULL)
INSERT [dbo].[Rosters] ([RosterId], [FirstName], [Middle], [LastName], [Image], [Caption], [Link]) VALUES (326, N'Dennis', NULL, N'Williams', N'cm_4_28.jpg', N'Dennis Williams', NULL)
INSERT [dbo].[Rosters] ([RosterId], [FirstName], [Middle], [LastName], [Image], [Caption], [Link]) VALUES (327, N'Dollie', NULL, N'Williams', N'cm_5_28.jpg', N'Dollie Williams', NULL)
INSERT [dbo].[Rosters] ([RosterId], [FirstName], [Middle], [LastName], [Image], [Caption], [Link]) VALUES (328, N'Royce', NULL, N'Wills', N'cm_8_28.jpg', N'Royce Wills', NULL)
INSERT [dbo].[Rosters] ([RosterId], [FirstName], [Middle], [LastName], [Image], [Caption], [Link]) VALUES (329, N'Lorie', NULL, N'Wilson', N'cm_9_28.jpg', N'Lorie Wilson', NULL)
INSERT [dbo].[Rosters] ([RosterId], [FirstName], [Middle], [LastName], [Image], [Caption], [Link]) VALUES (330, N'Ronald', NULL, N'Wilson', N'cm_10_28.jpg', N'Ronald Wilson', NULL)
INSERT [dbo].[Rosters] ([RosterId], [FirstName], [Middle], [LastName], [Image], [Caption], [Link]) VALUES (331, N'Scott', NULL, N'Wilson', N'cm_11_28.jpg', N'Scott Wilson', NULL)
INSERT [dbo].[Rosters] ([RosterId], [FirstName], [Middle], [LastName], [Image], [Caption], [Link]) VALUES (332, N'Kathleen', NULL, N'Winter', N'cm_15_28.jpg', N'Kathleen Winter', NULL)
INSERT [dbo].[Rosters] ([RosterId], [FirstName], [Middle], [LastName], [Image], [Caption], [Link]) VALUES (333, N'Kimberly', NULL, N'Wiseman', N'cm_16_28.jpg', N'Kimberly Wiseman', NULL)
INSERT [dbo].[Rosters] ([RosterId], [FirstName], [Middle], [LastName], [Image], [Caption], [Link]) VALUES (334, N'Ella', NULL, N'Wisner', N'cm_17_28.jpg', N'Ella Wisner', NULL)
INSERT [dbo].[Rosters] ([RosterId], [FirstName], [Middle], [LastName], [Image], [Caption], [Link]) VALUES (335, N'Parry', NULL, N'Wolfe', N'cm_18_28.jpg', N'Parry Wolfe', NULL)
INSERT [dbo].[Rosters] ([RosterId], [FirstName], [Middle], [LastName], [Image], [Caption], [Link]) VALUES (336, N'Shelly', NULL, N'Wresinski', N'cm_2_29.jpg', N'Shelly Wresinski', NULL)
INSERT [dbo].[Rosters] ([RosterId], [FirstName], [Middle], [LastName], [Image], [Caption], [Link]) VALUES (337, N'Edward', NULL, N'Wright', N'cm_3_29.jpg', N'Edward Wright', NULL)
INSERT [dbo].[Rosters] ([RosterId], [FirstName], [Middle], [LastName], [Image], [Caption], [Link]) VALUES (338, N'Joy', NULL, N'Wright', N'cm_4_29.jpg', N'Joy Wright', NULL)
INSERT [dbo].[Rosters] ([RosterId], [FirstName], [Middle], [LastName], [Image], [Caption], [Link]) VALUES (339, N'Karen', NULL, N'Wrzesinski', N'cm_5_29.jpg', N'Karen Wrzesinski', NULL)
INSERT [dbo].[Rosters] ([RosterId], [FirstName], [Middle], [LastName], [Image], [Caption], [Link]) VALUES (340, N'Kirk', NULL, N'Young', N'cm_8_29.jpg', N'Kirk Young', NULL)
INSERT [dbo].[Rosters] ([RosterId], [FirstName], [Middle], [LastName], [Image], [Caption], [Link]) VALUES (341, N'Jon', NULL, N'Youngquist', N'cm_9_29.jpg', N'Jon Youngquist', NULL)
INSERT [dbo].[Rosters] ([RosterId], [FirstName], [Middle], [LastName], [Image], [Caption], [Link]) VALUES (342, N'Brenda', NULL, N'Yurchak', N'cm_10_29.jpg', N'Brenda Yurchak', NULL)
INSERT [dbo].[Rosters] ([RosterId], [FirstName], [Middle], [LastName], [Image], [Caption], [Link]) VALUES (343, N'Karen', NULL, N'Ziegenhagen', N'cm_11_29.jpg', N'Karen Ziegenhagen', NULL)
SET IDENTITY_INSERT [dbo].[Rosters] OFF
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_AspNetRoleClaims_AspNetRoles_RoleId]') AND parent_object_id = OBJECT_ID(N'[dbo].[AspNetRoleClaims]'))
ALTER TABLE [dbo].[AspNetRoleClaims]  WITH CHECK ADD  CONSTRAINT [FK_AspNetRoleClaims_AspNetRoles_RoleId] FOREIGN KEY([RoleId])
REFERENCES [dbo].[AspNetRoles] ([Id])
ON DELETE CASCADE
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_AspNetRoleClaims_AspNetRoles_RoleId]') AND parent_object_id = OBJECT_ID(N'[dbo].[AspNetRoleClaims]'))
ALTER TABLE [dbo].[AspNetRoleClaims] CHECK CONSTRAINT [FK_AspNetRoleClaims_AspNetRoles_RoleId]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_AspNetUserClaims_AspNetUsers_UserId]') AND parent_object_id = OBJECT_ID(N'[dbo].[AspNetUserClaims]'))
ALTER TABLE [dbo].[AspNetUserClaims]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserClaims_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_AspNetUserClaims_AspNetUsers_UserId]') AND parent_object_id = OBJECT_ID(N'[dbo].[AspNetUserClaims]'))
ALTER TABLE [dbo].[AspNetUserClaims] CHECK CONSTRAINT [FK_AspNetUserClaims_AspNetUsers_UserId]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_AspNetUserLogins_AspNetUsers_UserId]') AND parent_object_id = OBJECT_ID(N'[dbo].[AspNetUserLogins]'))
ALTER TABLE [dbo].[AspNetUserLogins]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserLogins_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_AspNetUserLogins_AspNetUsers_UserId]') AND parent_object_id = OBJECT_ID(N'[dbo].[AspNetUserLogins]'))
ALTER TABLE [dbo].[AspNetUserLogins] CHECK CONSTRAINT [FK_AspNetUserLogins_AspNetUsers_UserId]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_AspNetUserRoles_AspNetRoles_RoleId]') AND parent_object_id = OBJECT_ID(N'[dbo].[AspNetUserRoles]'))
ALTER TABLE [dbo].[AspNetUserRoles]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserRoles_AspNetRoles_RoleId] FOREIGN KEY([RoleId])
REFERENCES [dbo].[AspNetRoles] ([Id])
ON DELETE CASCADE
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_AspNetUserRoles_AspNetRoles_RoleId]') AND parent_object_id = OBJECT_ID(N'[dbo].[AspNetUserRoles]'))
ALTER TABLE [dbo].[AspNetUserRoles] CHECK CONSTRAINT [FK_AspNetUserRoles_AspNetRoles_RoleId]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_AspNetUserRoles_AspNetUsers_UserId]') AND parent_object_id = OBJECT_ID(N'[dbo].[AspNetUserRoles]'))
ALTER TABLE [dbo].[AspNetUserRoles]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserRoles_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_AspNetUserRoles_AspNetUsers_UserId]') AND parent_object_id = OBJECT_ID(N'[dbo].[AspNetUserRoles]'))
ALTER TABLE [dbo].[AspNetUserRoles] CHECK CONSTRAINT [FK_AspNetUserRoles_AspNetUsers_UserId]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_AspNetUserTokens_AspNetUsers_UserId]') AND parent_object_id = OBJECT_ID(N'[dbo].[AspNetUserTokens]'))
ALTER TABLE [dbo].[AspNetUserTokens]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserTokens_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_AspNetUserTokens_AspNetUsers_UserId]') AND parent_object_id = OBJECT_ID(N'[dbo].[AspNetUserTokens]'))
ALTER TABLE [dbo].[AspNetUserTokens] CHECK CONSTRAINT [FK_AspNetUserTokens_AspNetUsers_UserId]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Locations_Rosters_RosterId]') AND parent_object_id = OBJECT_ID(N'[dbo].[Locations]'))
ALTER TABLE [dbo].[Locations]  WITH CHECK ADD  CONSTRAINT [FK_Locations_Rosters_RosterId] FOREIGN KEY([RosterId])
REFERENCES [dbo].[Rosters] ([RosterId])
ON DELETE CASCADE
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Locations_Rosters_RosterId]') AND parent_object_id = OBJECT_ID(N'[dbo].[Locations]'))
ALTER TABLE [dbo].[Locations] CHECK CONSTRAINT [FK_Locations_Rosters_RosterId]
GO
