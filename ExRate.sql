USE [ExRateDB]
GO
/****** Object:  Table [dbo].[__EFMigrationsHistory]    Script Date: 1/11/2022 10:52:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[__EFMigrationsHistory](
	[MigrationId] [nvarchar](150) NOT NULL,
	[ProductVersion] [nvarchar](32) NOT NULL,
 CONSTRAINT [PK___EFMigrationsHistory] PRIMARY KEY CLUSTERED 
(
	[MigrationId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ExchangeLogs]    Script Date: 1/11/2022 10:52:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ExchangeLogs](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[ConvertFrom] [nvarchar](max) NOT NULL,
	[ConvertTo] [nvarchar](max) NOT NULL,
	[InputValue] [float] NOT NULL,
	[Rate] [float] NOT NULL,
	[ConvertedValue] [float] NOT NULL,
	[LogDate] [datetime2](7) NOT NULL,
 CONSTRAINT [PK_ExchangeLogs] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ExRateTables]    Script Date: 1/11/2022 10:52:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ExRateTables](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[EntryDate] [datetime2](7) NOT NULL,
	[Country] [nvarchar](max) NULL,
	[Code] [nvarchar](max) NULL,
	[Rate] [float] NOT NULL,
 CONSTRAINT [PK_ExRateTables] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20220111073230_initial', N'5.0.13')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20220111150209_log', N'5.0.13')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20220111161736_required', N'5.0.13')
SET IDENTITY_INSERT [dbo].[ExchangeLogs] ON 

INSERT [dbo].[ExchangeLogs] ([Id], [ConvertFrom], [ConvertTo], [InputValue], [Rate], [ConvertedValue], [LogDate]) VALUES (1, N'Euro', N'Omani Rial', 1, 0, 0.436713, CAST(N'2022-01-11T20:47:41.0948159' AS DateTime2))
INSERT [dbo].[ExchangeLogs] ([Id], [ConvertFrom], [ConvertTo], [InputValue], [Rate], [ConvertedValue], [LogDate]) VALUES (2, N'Euro', N'New Zealand Dollar', 1, 0, 1.67615, CAST(N'2022-01-11T20:55:39.0346389' AS DateTime2))
INSERT [dbo].[ExchangeLogs] ([Id], [ConvertFrom], [ConvertTo], [InputValue], [Rate], [ConvertedValue], [LogDate]) VALUES (3, N'Euro', N'New Zealand Dollar', 1, 0, 1.67615, CAST(N'2022-01-11T20:58:04.4395926' AS DateTime2))
INSERT [dbo].[ExchangeLogs] ([Id], [ConvertFrom], [ConvertTo], [InputValue], [Rate], [ConvertedValue], [LogDate]) VALUES (4, N'Euro', N'Omani Rial', 3, 0, 1.310139, CAST(N'2022-01-11T21:13:01.3682530' AS DateTime2))
INSERT [dbo].[ExchangeLogs] ([Id], [ConvertFrom], [ConvertTo], [InputValue], [Rate], [ConvertedValue], [LogDate]) VALUES (5, N'Euro', N'Russian Ruble', 3, 0, 254.90640000000002, CAST(N'2022-01-11T21:13:34.1943667' AS DateTime2))
INSERT [dbo].[ExchangeLogs] ([Id], [ConvertFrom], [ConvertTo], [InputValue], [Rate], [ConvertedValue], [LogDate]) VALUES (6, N'Euro', N'Japanese Yen', 5, 0, 653.415, CAST(N'2022-01-11T21:13:56.1350318' AS DateTime2))
INSERT [dbo].[ExchangeLogs] ([Id], [ConvertFrom], [ConvertTo], [InputValue], [Rate], [ConvertedValue], [LogDate]) VALUES (7, N'Euro', N'Paraguayan Guarani', 6, 0, 47236.32, CAST(N'2022-01-11T21:21:45.0553596' AS DateTime2))
INSERT [dbo].[ExchangeLogs] ([Id], [ConvertFrom], [ConvertTo], [InputValue], [Rate], [ConvertedValue], [LogDate]) VALUES (8, N'Euro', N'New Zealand Dollar', 1, 0, 1.67615, CAST(N'2022-01-11T21:34:49.4569362' AS DateTime2))
INSERT [dbo].[ExchangeLogs] ([Id], [ConvertFrom], [ConvertTo], [InputValue], [Rate], [ConvertedValue], [LogDate]) VALUES (9, N'Euro', N'Serbian Dinar', 1, 0, 117.612, CAST(N'2022-01-11T21:36:13.9906233' AS DateTime2))
INSERT [dbo].[ExchangeLogs] ([Id], [ConvertFrom], [ConvertTo], [InputValue], [Rate], [ConvertedValue], [LogDate]) VALUES (10, N'Euro', N'Pakistani Rupee', 100, 0, 20018.199999999997, CAST(N'2022-01-11T21:37:03.0257416' AS DateTime2))
INSERT [dbo].[ExchangeLogs] ([Id], [ConvertFrom], [ConvertTo], [InputValue], [Rate], [ConvertedValue], [LogDate]) VALUES (33, N'Euro', N'New Zealand Dollar', 6, 1.67615, 10.0569, CAST(N'2022-01-11T22:06:23.2162735' AS DateTime2))
INSERT [dbo].[ExchangeLogs] ([Id], [ConvertFrom], [ConvertTo], [InputValue], [Rate], [ConvertedValue], [LogDate]) VALUES (34, N'Euro', N'Japanese Yen', 200, 130.683, 26136.6, CAST(N'2022-01-11T22:37:00.6806379' AS DateTime2))
SET IDENTITY_INSERT [dbo].[ExchangeLogs] OFF
SET IDENTITY_INSERT [dbo].[ExRateTables] ON 

INSERT [dbo].[ExRateTables] ([Id], [EntryDate], [Country], [Code], [Rate]) VALUES (1, CAST(N'2022-01-11T00:00:00.0000000' AS DateTime2), N'United Arab Emirates Dirham', N'AED', 4.166475)
INSERT [dbo].[ExRateTables] ([Id], [EntryDate], [Country], [Code], [Rate]) VALUES (2, CAST(N'2022-01-11T00:00:00.0000000' AS DateTime2), N'Nicaraguan Córdoba', N'NIO', 40.121072)
INSERT [dbo].[ExRateTables] ([Id], [EntryDate], [Country], [Code], [Rate]) VALUES (3, CAST(N'2022-01-11T00:00:00.0000000' AS DateTime2), N'Norwegian Krone', N'NOK', 10.033768)
INSERT [dbo].[ExRateTables] ([Id], [EntryDate], [Country], [Code], [Rate]) VALUES (4, CAST(N'2022-01-11T00:00:00.0000000' AS DateTime2), N'Nepalese Rupee', N'NPR', 134.307582)
INSERT [dbo].[ExRateTables] ([Id], [EntryDate], [Country], [Code], [Rate]) VALUES (5, CAST(N'2022-01-11T00:00:00.0000000' AS DateTime2), N'New Zealand Dollar', N'NZD', 1.676146)
INSERT [dbo].[ExRateTables] ([Id], [EntryDate], [Country], [Code], [Rate]) VALUES (6, CAST(N'2022-01-11T00:00:00.0000000' AS DateTime2), N'Omani Rial', N'OMR', 0.436713)
INSERT [dbo].[ExRateTables] ([Id], [EntryDate], [Country], [Code], [Rate]) VALUES (7, CAST(N'2022-01-11T00:00:00.0000000' AS DateTime2), N'Panamanian Balboa', N'PAB', 1.13327)
INSERT [dbo].[ExRateTables] ([Id], [EntryDate], [Country], [Code], [Rate]) VALUES (8, CAST(N'2022-01-11T00:00:00.0000000' AS DateTime2), N'Peruvian Nuevo Sol', N'PEN', 4.456735)
INSERT [dbo].[ExRateTables] ([Id], [EntryDate], [Country], [Code], [Rate]) VALUES (9, CAST(N'2022-01-11T00:00:00.0000000' AS DateTime2), N'Papua New Guinean Kina', N'PGK', 3.978987)
INSERT [dbo].[ExRateTables] ([Id], [EntryDate], [Country], [Code], [Rate]) VALUES (10, CAST(N'2022-01-11T00:00:00.0000000' AS DateTime2), N'Philippine Peso', N'PHP', 57.912771)
INSERT [dbo].[ExRateTables] ([Id], [EntryDate], [Country], [Code], [Rate]) VALUES (11, CAST(N'2022-01-11T00:00:00.0000000' AS DateTime2), N'Pakistani Rupee', N'PKR', 200.182406)
INSERT [dbo].[ExRateTables] ([Id], [EntryDate], [Country], [Code], [Rate]) VALUES (12, CAST(N'2022-01-11T00:00:00.0000000' AS DateTime2), N'Polish Zloty', N'PLN', 4.542632)
INSERT [dbo].[ExRateTables] ([Id], [EntryDate], [Country], [Code], [Rate]) VALUES (13, CAST(N'2022-01-11T00:00:00.0000000' AS DateTime2), N'Paraguayan Guarani', N'PYG', 7872.723481)
INSERT [dbo].[ExRateTables] ([Id], [EntryDate], [Country], [Code], [Rate]) VALUES (14, CAST(N'2022-01-11T00:00:00.0000000' AS DateTime2), N'Qatari Rial', N'QAR', 4.130036)
INSERT [dbo].[ExRateTables] ([Id], [EntryDate], [Country], [Code], [Rate]) VALUES (15, CAST(N'2022-01-11T00:00:00.0000000' AS DateTime2), N'Romanian Leu', N'RON', 4.944733)
INSERT [dbo].[ExRateTables] ([Id], [EntryDate], [Country], [Code], [Rate]) VALUES (16, CAST(N'2022-01-11T00:00:00.0000000' AS DateTime2), N'Serbian Dinar', N'RSD', 117.612013)
INSERT [dbo].[ExRateTables] ([Id], [EntryDate], [Country], [Code], [Rate]) VALUES (17, CAST(N'2022-01-11T00:00:00.0000000' AS DateTime2), N'Russian Ruble', N'RUB', 84.968777)
INSERT [dbo].[ExRateTables] ([Id], [EntryDate], [Country], [Code], [Rate]) VALUES (18, CAST(N'2022-01-11T00:00:00.0000000' AS DateTime2), N'Rwandan Franc', N'RWF', 1175.955551)
INSERT [dbo].[ExRateTables] ([Id], [EntryDate], [Country], [Code], [Rate]) VALUES (19, CAST(N'2022-01-11T00:00:00.0000000' AS DateTime2), N'Nigerian Naira', N'NGN', 468.871698)
INSERT [dbo].[ExRateTables] ([Id], [EntryDate], [Country], [Code], [Rate]) VALUES (20, CAST(N'2022-01-11T00:00:00.0000000' AS DateTime2), N'Saudi Riyal', N'SAR', 4.257512)
INSERT [dbo].[ExRateTables] ([Id], [EntryDate], [Country], [Code], [Rate]) VALUES (21, CAST(N'2022-01-11T00:00:00.0000000' AS DateTime2), N'Namibian Dollar', N'NAD', 17.842927)
INSERT [dbo].[ExRateTables] ([Id], [EntryDate], [Country], [Code], [Rate]) VALUES (22, CAST(N'2022-01-11T00:00:00.0000000' AS DateTime2), N'Malaysian Ringgit', N'MYR', 4.759613)
INSERT [dbo].[ExRateTables] ([Id], [EntryDate], [Country], [Code], [Rate]) VALUES (23, CAST(N'2022-01-11T00:00:00.0000000' AS DateTime2), N'Liberian Dollar', N'LRD', 168.021266)
INSERT [dbo].[ExRateTables] ([Id], [EntryDate], [Country], [Code], [Rate]) VALUES (24, CAST(N'2022-01-11T00:00:00.0000000' AS DateTime2), N'Lesotho Loti', N'LSL', 17.451483)
INSERT [dbo].[ExRateTables] ([Id], [EntryDate], [Country], [Code], [Rate]) VALUES (25, CAST(N'2022-01-11T00:00:00.0000000' AS DateTime2), N'Lithuanian Litas', N'LTL', 3.349354)
INSERT [dbo].[ExRateTables] ([Id], [EntryDate], [Country], [Code], [Rate]) VALUES (26, CAST(N'2022-01-11T00:00:00.0000000' AS DateTime2), N'Latvian Lats', N'LVL', 0.686139)
INSERT [dbo].[ExRateTables] ([Id], [EntryDate], [Country], [Code], [Rate]) VALUES (27, CAST(N'2022-01-11T00:00:00.0000000' AS DateTime2), N'Libyan Dinar', N'LYD', 5.201221)
INSERT [dbo].[ExRateTables] ([Id], [EntryDate], [Country], [Code], [Rate]) VALUES (28, CAST(N'2022-01-11T00:00:00.0000000' AS DateTime2), N'Moroccan Dirham', N'MAD', 10.512715)
INSERT [dbo].[ExRateTables] ([Id], [EntryDate], [Country], [Code], [Rate]) VALUES (29, CAST(N'2022-01-11T00:00:00.0000000' AS DateTime2), N'Moldovan Leu', N'MDL', 20.337181)
INSERT [dbo].[ExRateTables] ([Id], [EntryDate], [Country], [Code], [Rate]) VALUES (30, CAST(N'2022-01-11T00:00:00.0000000' AS DateTime2), N'Malagasy Ariary', N'MGA', 4504.512765)
INSERT [dbo].[ExRateTables] ([Id], [EntryDate], [Country], [Code], [Rate]) VALUES (31, CAST(N'2022-01-11T00:00:00.0000000' AS DateTime2), N'Macedonian Denar', N'MKD', 61.651446)
INSERT [dbo].[ExRateTables] ([Id], [EntryDate], [Country], [Code], [Rate]) VALUES (32, CAST(N'2022-01-11T00:00:00.0000000' AS DateTime2), N'Myanma Kyat', N'MMK', 2014.856275)
INSERT [dbo].[ExRateTables] ([Id], [EntryDate], [Country], [Code], [Rate]) VALUES (33, CAST(N'2022-01-11T00:00:00.0000000' AS DateTime2), N'Mongolian Tugrik', N'MNT', 3242.32451)
INSERT [dbo].[ExRateTables] ([Id], [EntryDate], [Country], [Code], [Rate]) VALUES (34, CAST(N'2022-01-11T00:00:00.0000000' AS DateTime2), N'Macanese Pataca', N'MOP', 9.09986)
INSERT [dbo].[ExRateTables] ([Id], [EntryDate], [Country], [Code], [Rate]) VALUES (35, CAST(N'2022-01-11T00:00:00.0000000' AS DateTime2), N'Mauritanian Ouguiya', N'MRO', 404.952249)
INSERT [dbo].[ExRateTables] ([Id], [EntryDate], [Country], [Code], [Rate]) VALUES (36, CAST(N'2022-01-11T00:00:00.0000000' AS DateTime2), N'Mauritian Rupee', N'MUR', 49.172889)
INSERT [dbo].[ExRateTables] ([Id], [EntryDate], [Country], [Code], [Rate]) VALUES (37, CAST(N'2022-01-11T00:00:00.0000000' AS DateTime2), N'Maldivian Rufiyaa', N'MVR', 17.536672)
INSERT [dbo].[ExRateTables] ([Id], [EntryDate], [Country], [Code], [Rate]) VALUES (38, CAST(N'2022-01-11T00:00:00.0000000' AS DateTime2), N'Malawian Kwacha', N'MWK', 925.157076)
INSERT [dbo].[ExRateTables] ([Id], [EntryDate], [Country], [Code], [Rate]) VALUES (39, CAST(N'2022-01-11T00:00:00.0000000' AS DateTime2), N'Mexican Peso', N'MXN', 23.13038)
INSERT [dbo].[ExRateTables] ([Id], [EntryDate], [Country], [Code], [Rate]) VALUES (40, CAST(N'2022-01-11T00:00:00.0000000' AS DateTime2), N'Mozambican Metical', N'MZN', 72.403983)
INSERT [dbo].[ExRateTables] ([Id], [EntryDate], [Country], [Code], [Rate]) VALUES (41, CAST(N'2022-01-11T00:00:00.0000000' AS DateTime2), N'Sri Lankan Rupee', N'LKR', 229.900936)
INSERT [dbo].[ExRateTables] ([Id], [EntryDate], [Country], [Code], [Rate]) VALUES (42, CAST(N'2022-01-11T00:00:00.0000000' AS DateTime2), N'Solomon Islands Dollar', N'SBD', 9.166264)
INSERT [dbo].[ExRateTables] ([Id], [EntryDate], [Country], [Code], [Rate]) VALUES (43, CAST(N'2022-01-11T00:00:00.0000000' AS DateTime2), N'Sudanese Pound', N'SDG', 496.265019)
INSERT [dbo].[ExRateTables] ([Id], [EntryDate], [Country], [Code], [Rate]) VALUES (44, CAST(N'2022-01-11T00:00:00.0000000' AS DateTime2), N'United States Dollar', N'USD', 1.134321)
INSERT [dbo].[ExRateTables] ([Id], [EntryDate], [Country], [Code], [Rate]) VALUES (45, CAST(N'2022-01-11T00:00:00.0000000' AS DateTime2), N'Uruguayan Peso', N'UYU', 50.704975)
INSERT [dbo].[ExRateTables] ([Id], [EntryDate], [Country], [Code], [Rate]) VALUES (46, CAST(N'2022-01-11T00:00:00.0000000' AS DateTime2), N'Uzbekistan Som', N'UZS', 12259.067128)
INSERT [dbo].[ExRateTables] ([Id], [EntryDate], [Country], [Code], [Rate]) VALUES (47, CAST(N'2022-01-11T00:00:00.0000000' AS DateTime2), N'Venezuelan Bolívar Fuerte', N'VEF', 242552019757.67831)
INSERT [dbo].[ExRateTables] ([Id], [EntryDate], [Country], [Code], [Rate]) VALUES (48, CAST(N'2022-01-11T00:00:00.0000000' AS DateTime2), N'Vietnamese Dong', N'VND', 25777.434961)
INSERT [dbo].[ExRateTables] ([Id], [EntryDate], [Country], [Code], [Rate]) VALUES (49, CAST(N'2022-01-11T00:00:00.0000000' AS DateTime2), N'Vanuatu Vatu', N'VUV', 128.464814)
INSERT [dbo].[ExRateTables] ([Id], [EntryDate], [Country], [Code], [Rate]) VALUES (50, CAST(N'2022-01-11T00:00:00.0000000' AS DateTime2), N'Samoan Tala', N'WST', 2.949427)
INSERT [dbo].[ExRateTables] ([Id], [EntryDate], [Country], [Code], [Rate]) VALUES (51, CAST(N'2022-01-11T00:00:00.0000000' AS DateTime2), N'CFA Franc BEAC', N'XAF', 656.350798)
INSERT [dbo].[ExRateTables] ([Id], [EntryDate], [Country], [Code], [Rate]) VALUES (52, CAST(N'2022-01-11T00:00:00.0000000' AS DateTime2), N'Silver (troy ounce)', N'XAG', 0.050221)
INSERT [dbo].[ExRateTables] ([Id], [EntryDate], [Country], [Code], [Rate]) VALUES (53, CAST(N'2022-01-11T00:00:00.0000000' AS DateTime2), N'Gold (troy ounce)', N'XAU', 0.000627)
INSERT [dbo].[ExRateTables] ([Id], [EntryDate], [Country], [Code], [Rate]) VALUES (54, CAST(N'2022-01-11T00:00:00.0000000' AS DateTime2), N'East Caribbean Dollar', N'XCD', 3.065558)
INSERT [dbo].[ExRateTables] ([Id], [EntryDate], [Country], [Code], [Rate]) VALUES (55, CAST(N'2022-01-11T00:00:00.0000000' AS DateTime2), N'Special Drawing Rights', N'XDR', 0.810486)
INSERT [dbo].[ExRateTables] ([Id], [EntryDate], [Country], [Code], [Rate]) VALUES (56, CAST(N'2022-01-11T00:00:00.0000000' AS DateTime2), N'CFA Franc BCEAO', N'XOF', 656.350798)
INSERT [dbo].[ExRateTables] ([Id], [EntryDate], [Country], [Code], [Rate]) VALUES (57, CAST(N'2022-01-11T00:00:00.0000000' AS DateTime2), N'CFP Franc', N'XPF', 120.067604)
INSERT [dbo].[ExRateTables] ([Id], [EntryDate], [Country], [Code], [Rate]) VALUES (58, CAST(N'2022-01-11T00:00:00.0000000' AS DateTime2), N'Yemeni Rial', N'YER', 283.863442)
INSERT [dbo].[ExRateTables] ([Id], [EntryDate], [Country], [Code], [Rate]) VALUES (59, CAST(N'2022-01-11T00:00:00.0000000' AS DateTime2), N'South African Rand', N'ZAR', 17.737145)
INSERT [dbo].[ExRateTables] ([Id], [EntryDate], [Country], [Code], [Rate]) VALUES (60, CAST(N'2022-01-11T00:00:00.0000000' AS DateTime2), N'Zambian Kwacha (pre-2013)', N'ZMK', 10210.236341)
INSERT [dbo].[ExRateTables] ([Id], [EntryDate], [Country], [Code], [Rate]) VALUES (61, CAST(N'2022-01-11T00:00:00.0000000' AS DateTime2), N'Ugandan Shilling', N'UGX', 4000.164756)
INSERT [dbo].[ExRateTables] ([Id], [EntryDate], [Country], [Code], [Rate]) VALUES (62, CAST(N'2022-01-11T00:00:00.0000000' AS DateTime2), N'Seychellois Rupee', N'SCR', 16.34348)
INSERT [dbo].[ExRateTables] ([Id], [EntryDate], [Country], [Code], [Rate]) VALUES (63, CAST(N'2022-01-11T00:00:00.0000000' AS DateTime2), N'Ukrainian Hryvnia', N'UAH', 31.146287)
INSERT [dbo].[ExRateTables] ([Id], [EntryDate], [Country], [Code], [Rate]) VALUES (64, CAST(N'2022-01-11T00:00:00.0000000' AS DateTime2), N'New Taiwan Dollar', N'TWD', 31.420116)
INSERT [dbo].[ExRateTables] ([Id], [EntryDate], [Country], [Code], [Rate]) VALUES (65, CAST(N'2022-01-11T00:00:00.0000000' AS DateTime2), N'Swedish Krona', N'SEK', 10.301803)
INSERT [dbo].[ExRateTables] ([Id], [EntryDate], [Country], [Code], [Rate]) VALUES (66, CAST(N'2022-01-11T00:00:00.0000000' AS DateTime2), N'Singapore Dollar', N'SGD', 1.536709)
INSERT [dbo].[ExRateTables] ([Id], [EntryDate], [Country], [Code], [Rate]) VALUES (67, CAST(N'2022-01-11T00:00:00.0000000' AS DateTime2), N'Saint Helena Pound', N'SHP', 1.562414)
INSERT [dbo].[ExRateTables] ([Id], [EntryDate], [Country], [Code], [Rate]) VALUES (68, CAST(N'2022-01-11T00:00:00.0000000' AS DateTime2), N'Sierra Leonean Leone', N'SLL', 12868.866495)
INSERT [dbo].[ExRateTables] ([Id], [EntryDate], [Country], [Code], [Rate]) VALUES (69, CAST(N'2022-01-11T00:00:00.0000000' AS DateTime2), N'Somali Shilling', N'SOS', 664.711689)
INSERT [dbo].[ExRateTables] ([Id], [EntryDate], [Country], [Code], [Rate]) VALUES (70, CAST(N'2022-01-11T00:00:00.0000000' AS DateTime2), N'Surinamese Dollar', N'SRD', 24.100935)
INSERT [dbo].[ExRateTables] ([Id], [EntryDate], [Country], [Code], [Rate]) VALUES (71, CAST(N'2022-01-11T00:00:00.0000000' AS DateTime2), N'São Tomé and Príncipe Dobra', N'STD', 23478.145622)
INSERT [dbo].[ExRateTables] ([Id], [EntryDate], [Country], [Code], [Rate]) VALUES (72, CAST(N'2022-01-11T00:00:00.0000000' AS DateTime2), N'Salvadoran Colón', N'SVC', 9.915949)
INSERT [dbo].[ExRateTables] ([Id], [EntryDate], [Country], [Code], [Rate]) VALUES (73, CAST(N'2022-01-11T00:00:00.0000000' AS DateTime2), N'Syrian Pound', N'SYP', 2849.972247)
INSERT [dbo].[ExRateTables] ([Id], [EntryDate], [Country], [Code], [Rate]) VALUES (74, CAST(N'2022-01-11T00:00:00.0000000' AS DateTime2), N'Swazi Lilangeni', N'SZL', 17.69077)
INSERT [dbo].[ExRateTables] ([Id], [EntryDate], [Country], [Code], [Rate]) VALUES (75, CAST(N'2022-01-11T00:00:00.0000000' AS DateTime2), N'Thai Baht', N'THB', 38.01791)
INSERT [dbo].[ExRateTables] ([Id], [EntryDate], [Country], [Code], [Rate]) VALUES (76, CAST(N'2022-01-11T00:00:00.0000000' AS DateTime2), N'Tajikistani Somoni', N'TJS', 12.799567)
INSERT [dbo].[ExRateTables] ([Id], [EntryDate], [Country], [Code], [Rate]) VALUES (77, CAST(N'2022-01-11T00:00:00.0000000' AS DateTime2), N'Turkmenistani Manat', N'TMT', 3.981465)
INSERT [dbo].[ExRateTables] ([Id], [EntryDate], [Country], [Code], [Rate]) VALUES (78, CAST(N'2022-01-11T00:00:00.0000000' AS DateTime2), N'Tunisian Dinar', N'TND', 3.271395)
INSERT [dbo].[ExRateTables] ([Id], [EntryDate], [Country], [Code], [Rate]) VALUES (79, CAST(N'2022-01-11T00:00:00.0000000' AS DateTime2), N'Tongan Paʻanga', N'TOP', 2.591353)
INSERT [dbo].[ExRateTables] ([Id], [EntryDate], [Country], [Code], [Rate]) VALUES (80, CAST(N'2022-01-11T00:00:00.0000000' AS DateTime2), N'Turkish Lira', N'TRY', 15.654874)
INSERT [dbo].[ExRateTables] ([Id], [EntryDate], [Country], [Code], [Rate]) VALUES (81, CAST(N'2022-01-11T00:00:00.0000000' AS DateTime2), N'Trinidad and Tobago Dollar', N'TTD', 7.692015)
INSERT [dbo].[ExRateTables] ([Id], [EntryDate], [Country], [Code], [Rate]) VALUES (82, CAST(N'2022-01-11T00:00:00.0000000' AS DateTime2), N'Tanzanian Shilling', N'TZS', 2618.01241)
INSERT [dbo].[ExRateTables] ([Id], [EntryDate], [Country], [Code], [Rate]) VALUES (83, CAST(N'2022-01-11T00:00:00.0000000' AS DateTime2), N'Lebanese Pound', N'LBP', 1713.635702)
INSERT [dbo].[ExRateTables] ([Id], [EntryDate], [Country], [Code], [Rate]) VALUES (84, CAST(N'2022-01-11T00:00:00.0000000' AS DateTime2), N'Laotian Kip', N'LAK', 12748.648942)
INSERT [dbo].[ExRateTables] ([Id], [EntryDate], [Country], [Code], [Rate]) VALUES (85, CAST(N'2022-01-11T00:00:00.0000000' AS DateTime2), N'Kazakhstani Tenge', N'KZT', 493.456064)
INSERT [dbo].[ExRateTables] ([Id], [EntryDate], [Country], [Code], [Rate]) VALUES (86, CAST(N'2022-01-11T00:00:00.0000000' AS DateTime2), N'Bhutanese Ngultrum', N'BTN', 83.941323)
INSERT [dbo].[ExRateTables] ([Id], [EntryDate], [Country], [Code], [Rate]) VALUES (87, CAST(N'2022-01-11T00:00:00.0000000' AS DateTime2), N'Botswanan Pula', N'BWP', 13.192315)
INSERT [dbo].[ExRateTables] ([Id], [EntryDate], [Country], [Code], [Rate]) VALUES (88, CAST(N'2022-01-11T00:00:00.0000000' AS DateTime2), N'New Belarusian Ruble', N'BYN', 2.924568)
INSERT [dbo].[ExRateTables] ([Id], [EntryDate], [Country], [Code], [Rate]) VALUES (89, CAST(N'2022-01-11T00:00:00.0000000' AS DateTime2), N'Belarusian Ruble', N'BYR', 22232.683179)
INSERT [dbo].[ExRateTables] ([Id], [EntryDate], [Country], [Code], [Rate]) VALUES (90, CAST(N'2022-01-11T00:00:00.0000000' AS DateTime2), N'Belize Dollar', N'BZD', 2.284271)
INSERT [dbo].[ExRateTables] ([Id], [EntryDate], [Country], [Code], [Rate]) VALUES (91, CAST(N'2022-01-11T00:00:00.0000000' AS DateTime2), N'Canadian Dollar', N'CAD', 1.434808)
INSERT [dbo].[ExRateTables] ([Id], [EntryDate], [Country], [Code], [Rate]) VALUES (92, CAST(N'2022-01-11T00:00:00.0000000' AS DateTime2), N'Congolese Franc', N'CDF', 2276.581592)
INSERT [dbo].[ExRateTables] ([Id], [EntryDate], [Country], [Code], [Rate]) VALUES (93, CAST(N'2022-01-11T00:00:00.0000000' AS DateTime2), N'Swiss Franc', N'CHF', 1.050152)
INSERT [dbo].[ExRateTables] ([Id], [EntryDate], [Country], [Code], [Rate]) VALUES (94, CAST(N'2022-01-11T00:00:00.0000000' AS DateTime2), N'Chilean Unit of Account (UF)', N'CLF', 0.034351)
INSERT [dbo].[ExRateTables] ([Id], [EntryDate], [Country], [Code], [Rate]) VALUES (95, CAST(N'2022-01-11T00:00:00.0000000' AS DateTime2), N'Chilean Peso', N'CLP', 947.899666)
INSERT [dbo].[ExRateTables] ([Id], [EntryDate], [Country], [Code], [Rate]) VALUES (96, CAST(N'2022-01-11T00:00:00.0000000' AS DateTime2), N'Chinese Yuan', N'CNY', 7.22812)
INSERT [dbo].[ExRateTables] ([Id], [EntryDate], [Country], [Code], [Rate]) VALUES (97, CAST(N'2022-01-11T00:00:00.0000000' AS DateTime2), N'Colombian Peso', N'COP', 4594.043683)
INSERT [dbo].[ExRateTables] ([Id], [EntryDate], [Country], [Code], [Rate]) VALUES (98, CAST(N'2022-01-11T00:00:00.0000000' AS DateTime2), N'Costa Rican Colón', N'CRC', 727.726622)
INSERT [dbo].[ExRateTables] ([Id], [EntryDate], [Country], [Code], [Rate]) VALUES (99, CAST(N'2022-01-11T00:00:00.0000000' AS DateTime2), N'Cuban Convertible Peso', N'CUC', 1.134321)
GO
INSERT [dbo].[ExRateTables] ([Id], [EntryDate], [Country], [Code], [Rate]) VALUES (100, CAST(N'2022-01-11T00:00:00.0000000' AS DateTime2), N'Cuban Peso', N'CUP', 30.059495)
INSERT [dbo].[ExRateTables] ([Id], [EntryDate], [Country], [Code], [Rate]) VALUES (101, CAST(N'2022-01-11T00:00:00.0000000' AS DateTime2), N'Cape Verdean Escudo', N'CVE', 110.330223)
INSERT [dbo].[ExRateTables] ([Id], [EntryDate], [Country], [Code], [Rate]) VALUES (102, CAST(N'2022-01-11T00:00:00.0000000' AS DateTime2), N'Czech Republic Koruna', N'CZK', 24.360213)
INSERT [dbo].[ExRateTables] ([Id], [EntryDate], [Country], [Code], [Rate]) VALUES (103, CAST(N'2022-01-11T00:00:00.0000000' AS DateTime2), N'Bitcoin', N'BTC', 2.6869345E-05)
INSERT [dbo].[ExRateTables] ([Id], [EntryDate], [Country], [Code], [Rate]) VALUES (104, CAST(N'2022-01-11T00:00:00.0000000' AS DateTime2), N'Djiboutian Franc', N'DJF', 201.741041)
INSERT [dbo].[ExRateTables] ([Id], [EntryDate], [Country], [Code], [Rate]) VALUES (105, CAST(N'2022-01-11T00:00:00.0000000' AS DateTime2), N'Bahamian Dollar', N'BSD', 1.13318)
INSERT [dbo].[ExRateTables] ([Id], [EntryDate], [Country], [Code], [Rate]) VALUES (106, CAST(N'2022-01-11T00:00:00.0000000' AS DateTime2), N'Bolivian Boliviano', N'BOB', 7.813419)
INSERT [dbo].[ExRateTables] ([Id], [EntryDate], [Country], [Code], [Rate]) VALUES (107, CAST(N'2022-01-11T00:00:00.0000000' AS DateTime2), N'Afghan Afghani', N'AFN', 119.011405)
INSERT [dbo].[ExRateTables] ([Id], [EntryDate], [Country], [Code], [Rate]) VALUES (108, CAST(N'2022-01-11T00:00:00.0000000' AS DateTime2), N'Albanian Lek', N'ALL', 121.85311)
INSERT [dbo].[ExRateTables] ([Id], [EntryDate], [Country], [Code], [Rate]) VALUES (109, CAST(N'2022-01-11T00:00:00.0000000' AS DateTime2), N'Armenian Dram', N'AMD', 547.903901)
INSERT [dbo].[ExRateTables] ([Id], [EntryDate], [Country], [Code], [Rate]) VALUES (110, CAST(N'2022-01-11T00:00:00.0000000' AS DateTime2), N'Netherlands Antillean Guilder', N'ANG', 2.042325)
INSERT [dbo].[ExRateTables] ([Id], [EntryDate], [Country], [Code], [Rate]) VALUES (111, CAST(N'2022-01-11T00:00:00.0000000' AS DateTime2), N'Angolan Kwanza', N'AOA', 624.119043)
INSERT [dbo].[ExRateTables] ([Id], [EntryDate], [Country], [Code], [Rate]) VALUES (112, CAST(N'2022-01-11T00:00:00.0000000' AS DateTime2), N'Argentine Peso', N'ARS', 117.333547)
INSERT [dbo].[ExRateTables] ([Id], [EntryDate], [Country], [Code], [Rate]) VALUES (113, CAST(N'2022-01-11T00:00:00.0000000' AS DateTime2), N'Australian Dollar', N'AUD', 1.578734)
INSERT [dbo].[ExRateTables] ([Id], [EntryDate], [Country], [Code], [Rate]) VALUES (114, CAST(N'2022-01-11T00:00:00.0000000' AS DateTime2), N'Aruban Florin', N'AWG', 2.041777)
INSERT [dbo].[ExRateTables] ([Id], [EntryDate], [Country], [Code], [Rate]) VALUES (115, CAST(N'2022-01-11T00:00:00.0000000' AS DateTime2), N'Azerbaijani Manat', N'AZN', 1.929726)
INSERT [dbo].[ExRateTables] ([Id], [EntryDate], [Country], [Code], [Rate]) VALUES (116, CAST(N'2022-01-11T00:00:00.0000000' AS DateTime2), N'Bosnia-Herzegovina Convertible Mark', N'BAM', 1.956987)
INSERT [dbo].[ExRateTables] ([Id], [EntryDate], [Country], [Code], [Rate]) VALUES (117, CAST(N'2022-01-11T00:00:00.0000000' AS DateTime2), N'Barbadian Dollar', N'BBD', 2.288073)
INSERT [dbo].[ExRateTables] ([Id], [EntryDate], [Country], [Code], [Rate]) VALUES (118, CAST(N'2022-01-11T00:00:00.0000000' AS DateTime2), N'Bangladeshi Taka', N'BDT', 97.427296)
INSERT [dbo].[ExRateTables] ([Id], [EntryDate], [Country], [Code], [Rate]) VALUES (119, CAST(N'2022-01-11T00:00:00.0000000' AS DateTime2), N'Bulgarian Lev', N'BGN', 1.956368)
INSERT [dbo].[ExRateTables] ([Id], [EntryDate], [Country], [Code], [Rate]) VALUES (120, CAST(N'2022-01-11T00:00:00.0000000' AS DateTime2), N'Bahraini Dinar', N'BHD', 0.427649)
INSERT [dbo].[ExRateTables] ([Id], [EntryDate], [Country], [Code], [Rate]) VALUES (121, CAST(N'2022-01-11T00:00:00.0000000' AS DateTime2), N'Burundian Franc', N'BIF', 2260.9065)
INSERT [dbo].[ExRateTables] ([Id], [EntryDate], [Country], [Code], [Rate]) VALUES (122, CAST(N'2022-01-11T00:00:00.0000000' AS DateTime2), N'Bermudan Dollar', N'BMD', 1.134321)
INSERT [dbo].[ExRateTables] ([Id], [EntryDate], [Country], [Code], [Rate]) VALUES (123, CAST(N'2022-01-11T00:00:00.0000000' AS DateTime2), N'Brunei Dollar', N'BND', 1.535321)
INSERT [dbo].[ExRateTables] ([Id], [EntryDate], [Country], [Code], [Rate]) VALUES (124, CAST(N'2022-01-11T00:00:00.0000000' AS DateTime2), N'Brazilian Real', N'BRL', 6.424563)
INSERT [dbo].[ExRateTables] ([Id], [EntryDate], [Country], [Code], [Rate]) VALUES (125, CAST(N'2022-01-11T00:00:00.0000000' AS DateTime2), N'Danish Krone', N'DKK', 7.43865)
INSERT [dbo].[ExRateTables] ([Id], [EntryDate], [Country], [Code], [Rate]) VALUES (126, CAST(N'2022-01-11T00:00:00.0000000' AS DateTime2), N'Dominican Peso', N'DOP', 65.182108)
INSERT [dbo].[ExRateTables] ([Id], [EntryDate], [Country], [Code], [Rate]) VALUES (127, CAST(N'2022-01-11T00:00:00.0000000' AS DateTime2), N'Algerian Dinar', N'DZD', 158.375)
INSERT [dbo].[ExRateTables] ([Id], [EntryDate], [Country], [Code], [Rate]) VALUES (128, CAST(N'2022-01-11T00:00:00.0000000' AS DateTime2), N'Manx pound', N'IMP', 0.855708)
INSERT [dbo].[ExRateTables] ([Id], [EntryDate], [Country], [Code], [Rate]) VALUES (129, CAST(N'2022-01-11T00:00:00.0000000' AS DateTime2), N'Indian Rupee', N'INR', 83.849541)
INSERT [dbo].[ExRateTables] ([Id], [EntryDate], [Country], [Code], [Rate]) VALUES (130, CAST(N'2022-01-11T00:00:00.0000000' AS DateTime2), N'Iraqi Dinar', N'IQD', 1653.952339)
INSERT [dbo].[ExRateTables] ([Id], [EntryDate], [Country], [Code], [Rate]) VALUES (131, CAST(N'2022-01-11T00:00:00.0000000' AS DateTime2), N'Iranian Rial', N'IRR', 47953.401976)
INSERT [dbo].[ExRateTables] ([Id], [EntryDate], [Country], [Code], [Rate]) VALUES (132, CAST(N'2022-01-11T00:00:00.0000000' AS DateTime2), N'Icelandic Króna', N'ISK', 146.406553)
INSERT [dbo].[ExRateTables] ([Id], [EntryDate], [Country], [Code], [Rate]) VALUES (133, CAST(N'2022-01-11T00:00:00.0000000' AS DateTime2), N'Jersey Pound', N'JEP', 0.855708)
INSERT [dbo].[ExRateTables] ([Id], [EntryDate], [Country], [Code], [Rate]) VALUES (134, CAST(N'2022-01-11T00:00:00.0000000' AS DateTime2), N'Jamaican Dollar', N'JMD', 175.1721)
INSERT [dbo].[ExRateTables] ([Id], [EntryDate], [Country], [Code], [Rate]) VALUES (135, CAST(N'2022-01-11T00:00:00.0000000' AS DateTime2), N'Jordanian Dinar', N'JOD', 0.804265)
INSERT [dbo].[ExRateTables] ([Id], [EntryDate], [Country], [Code], [Rate]) VALUES (136, CAST(N'2022-01-11T00:00:00.0000000' AS DateTime2), N'Japanese Yen', N'JPY', 130.682803)
INSERT [dbo].[ExRateTables] ([Id], [EntryDate], [Country], [Code], [Rate]) VALUES (137, CAST(N'2022-01-11T00:00:00.0000000' AS DateTime2), N'Kenyan Shilling', N'KES', 128.525099)
INSERT [dbo].[ExRateTables] ([Id], [EntryDate], [Country], [Code], [Rate]) VALUES (138, CAST(N'2022-01-11T00:00:00.0000000' AS DateTime2), N'Kyrgystani Som', N'KGS', 96.192226)
INSERT [dbo].[ExRateTables] ([Id], [EntryDate], [Country], [Code], [Rate]) VALUES (139, CAST(N'2022-01-11T00:00:00.0000000' AS DateTime2), N'Cambodian Riel', N'KHR', 4617.870633)
INSERT [dbo].[ExRateTables] ([Id], [EntryDate], [Country], [Code], [Rate]) VALUES (140, CAST(N'2022-01-11T00:00:00.0000000' AS DateTime2), N'Comorian Franc', N'KMF', 493.998414)
INSERT [dbo].[ExRateTables] ([Id], [EntryDate], [Country], [Code], [Rate]) VALUES (141, CAST(N'2022-01-11T00:00:00.0000000' AS DateTime2), N'North Korean Won', N'KPW', 1020.888425)
INSERT [dbo].[ExRateTables] ([Id], [EntryDate], [Country], [Code], [Rate]) VALUES (142, CAST(N'2022-01-11T00:00:00.0000000' AS DateTime2), N'South Korean Won', N'KRW', 1355.127126)
INSERT [dbo].[ExRateTables] ([Id], [EntryDate], [Country], [Code], [Rate]) VALUES (143, CAST(N'2022-01-11T00:00:00.0000000' AS DateTime2), N'Kuwaiti Dinar', N'KWD', 0.343189)
INSERT [dbo].[ExRateTables] ([Id], [EntryDate], [Country], [Code], [Rate]) VALUES (144, CAST(N'2022-01-11T00:00:00.0000000' AS DateTime2), N'Cayman Islands Dollar', N'KYD', 0.944367)
INSERT [dbo].[ExRateTables] ([Id], [EntryDate], [Country], [Code], [Rate]) VALUES (145, CAST(N'2022-01-11T00:00:00.0000000' AS DateTime2), N'Israeli New Sheqel', N'ILS', 3.544207)
INSERT [dbo].[ExRateTables] ([Id], [EntryDate], [Country], [Code], [Rate]) VALUES (146, CAST(N'2022-01-11T00:00:00.0000000' AS DateTime2), N'Indonesian Rupiah', N'IDR', 16226.455759)
INSERT [dbo].[ExRateTables] ([Id], [EntryDate], [Country], [Code], [Rate]) VALUES (147, CAST(N'2022-01-11T00:00:00.0000000' AS DateTime2), N'Hungarian Forint', N'HUF', 357.940507)
INSERT [dbo].[ExRateTables] ([Id], [EntryDate], [Country], [Code], [Rate]) VALUES (148, CAST(N'2022-01-11T00:00:00.0000000' AS DateTime2), N'Haitian Gourde', N'HTG', 115.22113)
INSERT [dbo].[ExRateTables] ([Id], [EntryDate], [Country], [Code], [Rate]) VALUES (149, CAST(N'2022-01-11T00:00:00.0000000' AS DateTime2), N'Egyptian Pound', N'EGP', 17.8187)
INSERT [dbo].[ExRateTables] ([Id], [EntryDate], [Country], [Code], [Rate]) VALUES (150, CAST(N'2022-01-11T00:00:00.0000000' AS DateTime2), N'Eritrean Nakfa', N'ERN', 17.014897)
INSERT [dbo].[ExRateTables] ([Id], [EntryDate], [Country], [Code], [Rate]) VALUES (151, CAST(N'2022-01-11T00:00:00.0000000' AS DateTime2), N'Ethiopian Birr', N'ETB', 56.23504)
INSERT [dbo].[ExRateTables] ([Id], [EntryDate], [Country], [Code], [Rate]) VALUES (152, CAST(N'2022-01-11T00:00:00.0000000' AS DateTime2), N'Euro', N'EUR', 1)
INSERT [dbo].[ExRateTables] ([Id], [EntryDate], [Country], [Code], [Rate]) VALUES (153, CAST(N'2022-01-11T00:00:00.0000000' AS DateTime2), N'Fijian Dollar', N'FJD', 2.417067)
INSERT [dbo].[ExRateTables] ([Id], [EntryDate], [Country], [Code], [Rate]) VALUES (154, CAST(N'2022-01-11T00:00:00.0000000' AS DateTime2), N'Falkland Islands Pound', N'FKP', 0.855708)
INSERT [dbo].[ExRateTables] ([Id], [EntryDate], [Country], [Code], [Rate]) VALUES (155, CAST(N'2022-01-11T00:00:00.0000000' AS DateTime2), N'British Pound Sterling', N'GBP', 0.834627)
INSERT [dbo].[ExRateTables] ([Id], [EntryDate], [Country], [Code], [Rate]) VALUES (156, CAST(N'2022-01-11T00:00:00.0000000' AS DateTime2), N'Georgian Lari', N'GEL', 3.504681)
INSERT [dbo].[ExRateTables] ([Id], [EntryDate], [Country], [Code], [Rate]) VALUES (157, CAST(N'2022-01-11T00:00:00.0000000' AS DateTime2), N'Zambian Kwacha', N'ZMW', 19.162697)
INSERT [dbo].[ExRateTables] ([Id], [EntryDate], [Country], [Code], [Rate]) VALUES (158, CAST(N'2022-01-11T00:00:00.0000000' AS DateTime2), N'Guernsey Pound', N'GGP', 0.855708)
INSERT [dbo].[ExRateTables] ([Id], [EntryDate], [Country], [Code], [Rate]) VALUES (159, CAST(N'2022-01-11T00:00:00.0000000' AS DateTime2), N'Gibraltar Pound', N'GIP', 0.855708)
INSERT [dbo].[ExRateTables] ([Id], [EntryDate], [Country], [Code], [Rate]) VALUES (160, CAST(N'2022-01-11T00:00:00.0000000' AS DateTime2), N'Gambian Dalasi', N'GMD', 59.977197)
INSERT [dbo].[ExRateTables] ([Id], [EntryDate], [Country], [Code], [Rate]) VALUES (161, CAST(N'2022-01-11T00:00:00.0000000' AS DateTime2), N'Guinean Franc', N'GNF', 10357.568685)
INSERT [dbo].[ExRateTables] ([Id], [EntryDate], [Country], [Code], [Rate]) VALUES (162, CAST(N'2022-01-11T00:00:00.0000000' AS DateTime2), N'Guatemalan Quetzal', N'GTQ', 8.74547)
INSERT [dbo].[ExRateTables] ([Id], [EntryDate], [Country], [Code], [Rate]) VALUES (163, CAST(N'2022-01-11T00:00:00.0000000' AS DateTime2), N'Guyanaese Dollar', N'GYD', 237.080153)
INSERT [dbo].[ExRateTables] ([Id], [EntryDate], [Country], [Code], [Rate]) VALUES (164, CAST(N'2022-01-11T00:00:00.0000000' AS DateTime2), N'Hong Kong Dollar', N'HKD', 8.84402)
INSERT [dbo].[ExRateTables] ([Id], [EntryDate], [Country], [Code], [Rate]) VALUES (165, CAST(N'2022-01-11T00:00:00.0000000' AS DateTime2), N'Honduran Lempira', N'HNL', 27.841704)
INSERT [dbo].[ExRateTables] ([Id], [EntryDate], [Country], [Code], [Rate]) VALUES (166, CAST(N'2022-01-11T00:00:00.0000000' AS DateTime2), N'Croatian Kuna', N'HRK', 7.525194)
INSERT [dbo].[ExRateTables] ([Id], [EntryDate], [Country], [Code], [Rate]) VALUES (167, CAST(N'2022-01-11T00:00:00.0000000' AS DateTime2), N'Ghanaian Cedi', N'GHS', 7.008343)
INSERT [dbo].[ExRateTables] ([Id], [EntryDate], [Country], [Code], [Rate]) VALUES (168, CAST(N'2022-01-11T00:00:00.0000000' AS DateTime2), N'Zimbabwean Dollar', N'ZWL', 365.250761)
SET IDENTITY_INSERT [dbo].[ExRateTables] OFF
ALTER TABLE [dbo].[ExchangeLogs] ADD  DEFAULT (N'') FOR [ConvertFrom]
GO
ALTER TABLE [dbo].[ExchangeLogs] ADD  DEFAULT (N'') FOR [ConvertTo]
GO
