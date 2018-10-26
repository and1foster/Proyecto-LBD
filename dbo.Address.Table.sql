USE [CONSULTORIO_LSTI]
GO
/****** Object:  Table [dbo].[Address]    Script Date: 26/10/2018 11:43:50 a.m. ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Address]') AND type in (N'U'))
DROP TABLE [dbo].[Address]
GO
/****** Object:  Table [dbo].[Address]    Script Date: 26/10/2018 11:43:50 a.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Address]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Address](
	[ID_Address] [int] NOT NULL,
	[Street_Number] [varchar](50) NOT NULL,
	[Neighborhood] [varchar](50) NOT NULL,
	[District] [varchar](50) NOT NULL,
 CONSTRAINT [PK_Address] PRIMARY KEY CLUSTERED 
(
	[ID_Address] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[Address] ([ID_Address], [Street_Number], [Neighborhood], [District]) VALUES (1, N'Ap #718-2941 Dis Road', N'Toronto', N'ON')
INSERT [dbo].[Address] ([ID_Address], [Street_Number], [Neighborhood], [District]) VALUES (2, N'278-3424 Mi Rd.', N'Kawerau', N'North Island')
INSERT [dbo].[Address] ([ID_Address], [Street_Number], [Neighborhood], [District]) VALUES (3, N'2697 At, St.', N'Hudiksvall', N'Gävleborgs län')
INSERT [dbo].[Address] ([ID_Address], [Street_Number], [Neighborhood], [District]) VALUES (4, N'Ap #471-1259 Imperdiet, Rd.', N'Reus', N'Catalunya')
INSERT [dbo].[Address] ([ID_Address], [Street_Number], [Neighborhood], [District]) VALUES (5, N'3000 Tortor Avenue', N'Waterbury', N'Connecticut')
INSERT [dbo].[Address] ([ID_Address], [Street_Number], [Neighborhood], [District]) VALUES (6, N'108 A St.', N'Papudo', N'V')
INSERT [dbo].[Address] ([ID_Address], [Street_Number], [Neighborhood], [District]) VALUES (7, N'P.O. Box 214, 8209 Mauris. Ave', N'Gisborne', N'NI')
INSERT [dbo].[Address] ([ID_Address], [Street_Number], [Neighborhood], [District]) VALUES (8, N'P.O. Box 664, 774 A Rd.', N'Sluis', N'Zeeland')
INSERT [dbo].[Address] ([ID_Address], [Street_Number], [Neighborhood], [District]) VALUES (9, N'Ap #749-7039 Mauris St.', N'Montluçon', N'Auvergne')
INSERT [dbo].[Address] ([ID_Address], [Street_Number], [Neighborhood], [District]) VALUES (10, N'Ap #828-1540 In Rd.', N'Bialystok', N'Podlaskie')
INSERT [dbo].[Address] ([ID_Address], [Street_Number], [Neighborhood], [District]) VALUES (11, N'7925 Dictum Rd.', N'Santander', N'Cantabria')
INSERT [dbo].[Address] ([ID_Address], [Street_Number], [Neighborhood], [District]) VALUES (12, N'983-6427 Mollis. Ave', N'Massello', N'PIE')
INSERT [dbo].[Address] ([ID_Address], [Street_Number], [Neighborhood], [District]) VALUES (13, N'Ap #649-2331 Ac Rd.', N'Lidingo', N'AB')
INSERT [dbo].[Address] ([ID_Address], [Street_Number], [Neighborhood], [District]) VALUES (14, N'7401 Nunc St.', N'Hoofddorp', N'N.')
INSERT [dbo].[Address] ([ID_Address], [Street_Number], [Neighborhood], [District]) VALUES (15, N'1147 Neque St.', N'Maracanaú', N'CE')
INSERT [dbo].[Address] ([ID_Address], [Street_Number], [Neighborhood], [District]) VALUES (16, N'P.O. Box 537, 5919 Diam Road', N'Lagos', N'Lagos')
INSERT [dbo].[Address] ([ID_Address], [Street_Number], [Neighborhood], [District]) VALUES (17, N'6053 Donec St.', N'Kano', N'KN')
INSERT [dbo].[Address] ([ID_Address], [Street_Number], [Neighborhood], [District]) VALUES (18, N'P.O. Box 951, 8027 Cras Rd.', N'Pukekohe', N'NI')
INSERT [dbo].[Address] ([ID_Address], [Street_Number], [Neighborhood], [District]) VALUES (19, N'811-5796 Pede Avenue', N'Flushing', N'Zeeland')
INSERT [dbo].[Address] ([ID_Address], [Street_Number], [Neighborhood], [District]) VALUES (20, N'4512 Mi Avenue', N'A Coruña', N'Galicia')
INSERT [dbo].[Address] ([ID_Address], [Street_Number], [Neighborhood], [District]) VALUES (21, N'P.O. Box 423, 3471 Lectus Road', N'Celle', N'NI')
INSERT [dbo].[Address] ([ID_Address], [Street_Number], [Neighborhood], [District]) VALUES (22, N'7830 Convallis St.', N'Deventer', N'Overijssel')
INSERT [dbo].[Address] ([ID_Address], [Street_Number], [Neighborhood], [District]) VALUES (23, N'P.O. Box 894, 9985 Ut Avenue', N'Columbia', N'MO')
INSERT [dbo].[Address] ([ID_Address], [Street_Number], [Neighborhood], [District]) VALUES (24, N'952-2159 Imperdiet Ave', N'Etawah', N'UP')
INSERT [dbo].[Address] ([ID_Address], [Street_Number], [Neighborhood], [District]) VALUES (25, N'Ap #489-341 Sem Av.', N'Livingston', N'WL')
INSERT [dbo].[Address] ([ID_Address], [Street_Number], [Neighborhood], [District]) VALUES (26, N'P.O. Box 731, 9846 Sit Street', N'Castelseprio', N'LOM')
INSERT [dbo].[Address] ([ID_Address], [Street_Number], [Neighborhood], [District]) VALUES (27, N'P.O. Box 638, 1870 Orci St.', N'Ankara', N'Ankara')
INSERT [dbo].[Address] ([ID_Address], [Street_Number], [Neighborhood], [District]) VALUES (28, N'Ap #947-2858 Amet St.', N'Bydgoszcz', N'Kujawsko-pomorskie')
INSERT [dbo].[Address] ([ID_Address], [Street_Number], [Neighborhood], [District]) VALUES (29, N'866-7791 Cum Rd.', N'Vienna', N'Wie')
INSERT [dbo].[Address] ([ID_Address], [Street_Number], [Neighborhood], [District]) VALUES (30, N'304 Amet Street', N'Luziânia', N'GO')
INSERT [dbo].[Address] ([ID_Address], [Street_Number], [Neighborhood], [District]) VALUES (31, N'791-3217 Enim St.', N'Montreuil', N'Île-de-France')
INSERT [dbo].[Address] ([ID_Address], [Street_Number], [Neighborhood], [District]) VALUES (32, N'P.O. Box 419, 3851 Conubia Street', N'Lanark County', N'ON')
INSERT [dbo].[Address] ([ID_Address], [Street_Number], [Neighborhood], [District]) VALUES (33, N'280-5463 Orci Av.', N'Dublin', N'Leinster')
INSERT [dbo].[Address] ([ID_Address], [Street_Number], [Neighborhood], [District]) VALUES (34, N'P.O. Box 182, 4650 Eu Rd.', N'Punta Arenas', N'Magallanes y Antártica Chilena')
INSERT [dbo].[Address] ([ID_Address], [Street_Number], [Neighborhood], [District]) VALUES (35, N'797-8432 Integer Street', N'Barrhead', N'AB')
INSERT [dbo].[Address] ([ID_Address], [Street_Number], [Neighborhood], [District]) VALUES (36, N'Ap #405-9897 Adipiscing Av.', N'Vienna', N'Wie')
INSERT [dbo].[Address] ([ID_Address], [Street_Number], [Neighborhood], [District]) VALUES (37, N'P.O. Box 983, 3435 Ornare, Rd.', N'San Diego', N'California')
INSERT [dbo].[Address] ([ID_Address], [Street_Number], [Neighborhood], [District]) VALUES (38, N'Ap #399-4314 Justo Rd.', N'Owensboro', N'KY')
INSERT [dbo].[Address] ([ID_Address], [Street_Number], [Neighborhood], [District]) VALUES (39, N'Ap #540-9937 Elit Rd.', N'Hamilton', N'ON')
INSERT [dbo].[Address] ([ID_Address], [Street_Number], [Neighborhood], [District]) VALUES (40, N'4315 Adipiscing St.', N'Fairbanks', N'AK')
INSERT [dbo].[Address] ([ID_Address], [Street_Number], [Neighborhood], [District]) VALUES (41, N'Ap #283-1940 Ipsum St.', N'Baie-Comeau', N'QC')
INSERT [dbo].[Address] ([ID_Address], [Street_Number], [Neighborhood], [District]) VALUES (42, N'8466 Consequat Street', N'Mercedes', N'Heredia')
INSERT [dbo].[Address] ([ID_Address], [Street_Number], [Neighborhood], [District]) VALUES (43, N'9421 Sit St.', N'Santander', N'CA')
INSERT [dbo].[Address] ([ID_Address], [Street_Number], [Neighborhood], [District]) VALUES (44, N'951-1187 Orci. Rd.', N'Mackay', N'QLD')
INSERT [dbo].[Address] ([ID_Address], [Street_Number], [Neighborhood], [District]) VALUES (45, N'882-8729 A Street', N'Ogbomosho', N'OY')
INSERT [dbo].[Address] ([ID_Address], [Street_Number], [Neighborhood], [District]) VALUES (46, N'6966 Orci Rd.', N'Athens', N'GA')
INSERT [dbo].[Address] ([ID_Address], [Street_Number], [Neighborhood], [District]) VALUES (47, N'P.O. Box 559, 7118 Ultrices St.', N'Saumur', N'PA')
INSERT [dbo].[Address] ([ID_Address], [Street_Number], [Neighborhood], [District]) VALUES (48, N'Ap #742-2311 Hendrerit Rd.', N'Bowling Green', N'KY')
INSERT [dbo].[Address] ([ID_Address], [Street_Number], [Neighborhood], [District]) VALUES (49, N'3196 Elit, Street', N'Ribeirão das Neves', N'MG')
INSERT [dbo].[Address] ([ID_Address], [Street_Number], [Neighborhood], [District]) VALUES (50, N'594-3294 Varius. Ave', N'Hamburg', N'HH')
INSERT [dbo].[Address] ([ID_Address], [Street_Number], [Neighborhood], [District]) VALUES (51, N'7375 Augue Ave', N'Onitsha', N'Anambra')
INSERT [dbo].[Address] ([ID_Address], [Street_Number], [Neighborhood], [District]) VALUES (52, N'P.O. Box 382, 5628 Curabitur Rd.', N'Tokoroa', N'North Island')
INSERT [dbo].[Address] ([ID_Address], [Street_Number], [Neighborhood], [District]) VALUES (53, N'P.O. Box 793, 4021 Semper St.', N'San Rafael', N'Maule')
INSERT [dbo].[Address] ([ID_Address], [Street_Number], [Neighborhood], [District]) VALUES (54, N'Ap #464-7868 Nunc Avenue', N'Prato Carnico', N'Friuli-Venezia Giulia')
INSERT [dbo].[Address] ([ID_Address], [Street_Number], [Neighborhood], [District]) VALUES (55, N'Ap #345-5271 Pede. Street', N'Bettiah', N'Bihar')
INSERT [dbo].[Address] ([ID_Address], [Street_Number], [Neighborhood], [District]) VALUES (56, N'P.O. Box 606, 5954 Consequat Road', N'Ganshoren', N'Brussels Hoofdstedelijk Gewest')
INSERT [dbo].[Address] ([ID_Address], [Street_Number], [Neighborhood], [District]) VALUES (57, N'P.O. Box 495, 784 Fusce Ave', N'Göteborg', N'O')
INSERT [dbo].[Address] ([ID_Address], [Street_Number], [Neighborhood], [District]) VALUES (58, N'P.O. Box 710, 2259 Lorem Rd.', N'Meer', N'AN')
INSERT [dbo].[Address] ([ID_Address], [Street_Number], [Neighborhood], [District]) VALUES (59, N'293-2237 Dui, Av.', N'Rouen', N'Haute-Normandie')
INSERT [dbo].[Address] ([ID_Address], [Street_Number], [Neighborhood], [District]) VALUES (60, N'851-2028 Magnis St.', N'Göteborg', N'Västra Götalands län')
INSERT [dbo].[Address] ([ID_Address], [Street_Number], [Neighborhood], [District]) VALUES (61, N'P.O. Box 165, 3850 A, Avenue', N'Laino Castello', N'CAL')
INSERT [dbo].[Address] ([ID_Address], [Street_Number], [Neighborhood], [District]) VALUES (62, N'891-3399 Sem Ave', N'Aurora', N'ON')
INSERT [dbo].[Address] ([ID_Address], [Street_Number], [Neighborhood], [District]) VALUES (63, N'236-3116 Arcu. Av.', N'Opole', N'OP')
INSERT [dbo].[Address] ([ID_Address], [Street_Number], [Neighborhood], [District]) VALUES (64, N'Ap #307-636 Arcu. Rd.', N'Middelburg', N'Zl')
INSERT [dbo].[Address] ([ID_Address], [Street_Number], [Neighborhood], [District]) VALUES (65, N'807-1945 Venenatis Av.', N'Calgary', N'AB')
INSERT [dbo].[Address] ([ID_Address], [Street_Number], [Neighborhood], [District]) VALUES (66, N'5232 Massa. Street', N'Feilding', N'North Island')
INSERT [dbo].[Address] ([ID_Address], [Street_Number], [Neighborhood], [District]) VALUES (67, N'904-5772 Curae; Road', N'Kisi', N'Oyo')
INSERT [dbo].[Address] ([ID_Address], [Street_Number], [Neighborhood], [District]) VALUES (68, N'Ap #635-3278 Mi Rd.', N'Arica', N'Arica y Parinacota')
INSERT [dbo].[Address] ([ID_Address], [Street_Number], [Neighborhood], [District]) VALUES (69, N'P.O. Box 667, 1110 A Rd.', N'Kulti-Barakar', N'WB')
INSERT [dbo].[Address] ([ID_Address], [Street_Number], [Neighborhood], [District]) VALUES (70, N'P.O. Box 109, 3258 Sagittis. Road', N'Dunoon', N'Argyllshire')
INSERT [dbo].[Address] ([ID_Address], [Street_Number], [Neighborhood], [District]) VALUES (71, N'641-7766 Ligula. Av.', N'Galway', N'Connacht')
INSERT [dbo].[Address] ([ID_Address], [Street_Number], [Neighborhood], [District]) VALUES (72, N'Ap #611-5551 Sed St.', N'Istanbul', N'Ist')
INSERT [dbo].[Address] ([ID_Address], [Street_Number], [Neighborhood], [District]) VALUES (73, N'P.O. Box 443, 865 Aliquet. Rd.', N'Bhiwandi', N'MH')
INSERT [dbo].[Address] ([ID_Address], [Street_Number], [Neighborhood], [District]) VALUES (74, N'P.O. Box 391, 2169 Cras Rd.', N'Kumbakonam', N'Tamil Nadu')
INSERT [dbo].[Address] ([ID_Address], [Street_Number], [Neighborhood], [District]) VALUES (75, N'P.O. Box 586, 7064 Magna Av.', N'Sapele', N'Delta')
INSERT [dbo].[Address] ([ID_Address], [Street_Number], [Neighborhood], [District]) VALUES (76, N'Ap #731-9748 Blandit. Ave', N'Istanbul', N'Ist')
INSERT [dbo].[Address] ([ID_Address], [Street_Number], [Neighborhood], [District]) VALUES (77, N'Ap #369-9449 Inceptos Rd.', N'Chanco', N'VII')
INSERT [dbo].[Address] ([ID_Address], [Street_Number], [Neighborhood], [District]) VALUES (78, N'Ap #669-3897 Bibendum Street', N'Polatli', N'Ank')
INSERT [dbo].[Address] ([ID_Address], [Street_Number], [Neighborhood], [District]) VALUES (79, N'311-6543 Arcu. Avenue', N'Bozeman', N'MT')
INSERT [dbo].[Address] ([ID_Address], [Street_Number], [Neighborhood], [District]) VALUES (80, N'Ap #168-2350 Venenatis Avenue', N'Galway', N'C')
INSERT [dbo].[Address] ([ID_Address], [Street_Number], [Neighborhood], [District]) VALUES (81, N'P.O. Box 793, 9168 Nec Street', N'Uberaba', N'MG')
INSERT [dbo].[Address] ([ID_Address], [Street_Number], [Neighborhood], [District]) VALUES (82, N'Ap #568-6458 Neque Avenue', N'Beerzel', N'Antwerpen')
INSERT [dbo].[Address] ([ID_Address], [Street_Number], [Neighborhood], [District]) VALUES (83, N'Ap #288-736 Erat St.', N'Bhavnagar', N'GJ')
INSERT [dbo].[Address] ([ID_Address], [Street_Number], [Neighborhood], [District]) VALUES (84, N'Ap #358-1983 Molestie Avenue', N'Compiègne', N'PI')
INSERT [dbo].[Address] ([ID_Address], [Street_Number], [Neighborhood], [District]) VALUES (85, N'4338 Id, St.', N'Marche-les-Dames', N'NA')
INSERT [dbo].[Address] ([ID_Address], [Street_Number], [Neighborhood], [District]) VALUES (86, N'Ap #131-8455 Eleifend. St.', N'Foz do Iguaçu', N'PR')
INSERT [dbo].[Address] ([ID_Address], [Street_Number], [Neighborhood], [District]) VALUES (87, N'1431 Dui. St.', N'Recoleta', N'Metropolitana de Santiago')
INSERT [dbo].[Address] ([ID_Address], [Street_Number], [Neighborhood], [District]) VALUES (88, N'Ap #933-9125 Sem, Rd.', N'Funtua', N'KT')
INSERT [dbo].[Address] ([ID_Address], [Street_Number], [Neighborhood], [District]) VALUES (89, N'957-7927 Porttitor St.', N'Matamata', N'North Island')
INSERT [dbo].[Address] ([ID_Address], [Street_Number], [Neighborhood], [District]) VALUES (90, N'Ap #591-4513 Facilisis, Avenue', N'Recife', N'PE')
INSERT [dbo].[Address] ([ID_Address], [Street_Number], [Neighborhood], [District]) VALUES (91, N'Ap #575-9824 Ullamcorper Avenue', N'Vienna', N'Vienna')
INSERT [dbo].[Address] ([ID_Address], [Street_Number], [Neighborhood], [District]) VALUES (92, N'Ap #598-2563 Dolor. Rd.', N'Melbourne', N'VIC')
INSERT [dbo].[Address] ([ID_Address], [Street_Number], [Neighborhood], [District]) VALUES (93, N'845-7626 Ante Street', N'Carapicuíba', N'São Paulo')
INSERT [dbo].[Address] ([ID_Address], [Street_Number], [Neighborhood], [District]) VALUES (94, N'Ap #260-7561 Facilisis, Rd.', N'Berlin', N'BE')
INSERT [dbo].[Address] ([ID_Address], [Street_Number], [Neighborhood], [District]) VALUES (95, N'P.O. Box 609, 7347 Per Rd.', N'San Nicolás', N'Cartago')
INSERT [dbo].[Address] ([ID_Address], [Street_Number], [Neighborhood], [District]) VALUES (96, N'Ap #252-6491 Cum Ave', N'San Bernardo', N'RM')
INSERT [dbo].[Address] ([ID_Address], [Street_Number], [Neighborhood], [District]) VALUES (97, N'6115 Elementum, St.', N'Jacksonville', N'FL')
INSERT [dbo].[Address] ([ID_Address], [Street_Number], [Neighborhood], [District]) VALUES (98, N'3146 Integer St.', N'Castres', N'Midi-Pyrénées')
INSERT [dbo].[Address] ([ID_Address], [Street_Number], [Neighborhood], [District]) VALUES (99, N'630-802 Pellentesque. Av.', N'Warri', N'Delta')
INSERT [dbo].[Address] ([ID_Address], [Street_Number], [Neighborhood], [District]) VALUES (100, N'P.O. Box 954, 9018 Arcu. Rd.', N'Peñaflor', N'RM')
GO
