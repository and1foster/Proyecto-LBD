USE [CONSULTORIO_LSTI]
GO
/****** Object:  Table [dbo].[Prescription]    Script Date: 26/10/2018 11:43:50 a.m. ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Prescription]') AND type in (N'U'))
DROP TABLE [dbo].[Prescription]
GO
/****** Object:  Table [dbo].[Prescription]    Script Date: 26/10/2018 11:43:50 a.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Prescription]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Prescription](
	[ID_Prescription] [uniqueidentifier] NOT NULL,
	[ID_Appointment] [uniqueidentifier] NOT NULL,
	[Diagnosis] [text] NOT NULL,
 CONSTRAINT [PK_Prescription] PRIMARY KEY CLUSTERED 
(
	[ID_Prescription] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
END
GO
INSERT [dbo].[Prescription] ([ID_Prescription], [ID_Appointment], [Diagnosis]) VALUES (N'6b7f6743-5c7d-40d1-852f-00b50a9e4478', N'470c812e-5b77-4c8e-a02f-c70b51b32b99', N'Unsp injury of great saphenous at lower leg level, left leg')
INSERT [dbo].[Prescription] ([ID_Prescription], [ID_Appointment], [Diagnosis]) VALUES (N'3db958b7-1c79-4b22-af3f-04204d887c06', N'8fa78fbf-e594-417a-8e18-d2953c638dc6', N'Epidural hemorrhage w LOC of 6 hours to 24 hours')
INSERT [dbo].[Prescription] ([ID_Prescription], [ID_Appointment], [Diagnosis]) VALUES (N'a3e04902-6ee9-44eb-8ef0-04d7f8eab3de', N'5e710424-1cf3-484f-8eb2-4144b2be2e9d', N'Accidental malfunction of unsp larger firearm, subs encntr')
INSERT [dbo].[Prescription] ([ID_Prescription], [ID_Appointment], [Diagnosis]) VALUES (N'ba5c4cac-1487-400c-a460-0b3de89fd7f9', N'7300bf83-eb90-49e7-a3c3-3fea3ebce081', N'Drown due to (nonpowered) inflatable craft sinking')
INSERT [dbo].[Prescription] ([ID_Prescription], [ID_Appointment], [Diagnosis]) VALUES (N'c8c5529e-48b6-4008-a5ba-0b88daeca02c', N'0d9a92bf-613f-4fcd-99dc-c07472cc3a0d', N'Contusion and laceration of cerebrum, unspecified')
INSERT [dbo].[Prescription] ([ID_Prescription], [ID_Appointment], [Diagnosis]) VALUES (N'a38d8bea-f7bf-499d-a577-0db3c9f784bb', N'347561ad-aa28-4b30-bb53-16f2a3000fa8', N'Medial dislocation of unsp ulnohumeral joint, subs encntr')
INSERT [dbo].[Prescription] ([ID_Prescription], [ID_Appointment], [Diagnosis]) VALUES (N'9e84fe8a-539d-4ad4-9403-100eaf23cfb5', N'e5f0158a-b7ce-4668-94e5-c29faf5dc34a', N'Crushed by other nonvenomous reptiles, sequela')
INSERT [dbo].[Prescription] ([ID_Prescription], [ID_Appointment], [Diagnosis]) VALUES (N'73adfa27-012c-4fff-969c-10f2c328964a', N'628c4689-0d32-4dab-93b5-0285710866af', N'Corrosion of first degree of unspecified foot, subs encntr')
INSERT [dbo].[Prescription] ([ID_Prescription], [ID_Appointment], [Diagnosis]) VALUES (N'9ebfc42e-53db-4605-9047-124f79f2515d', N'21b73ef1-3252-4cb0-bcfd-33f8b5498cca', N'Passenger in 3-whl mv injured in clsn w oth mv nontraf, init')
INSERT [dbo].[Prescription] ([ID_Prescription], [ID_Appointment], [Diagnosis]) VALUES (N'320a1b55-945b-426a-9927-1491f67ecd8a', N'9b882d55-8c89-41aa-b966-10d98fb432cd', N'Complete traumatic MCP amputation of left ring finger, subs')
INSERT [dbo].[Prescription] ([ID_Prescription], [ID_Appointment], [Diagnosis]) VALUES (N'50dc37f8-ca71-4f4b-b960-154c7a18cd2d', N'cc21e661-eb10-4f3c-8380-0796e1695218', N'Ant cord syndrome at unsp level of thor spinal cord, init')
INSERT [dbo].[Prescription] ([ID_Prescription], [ID_Appointment], [Diagnosis]) VALUES (N'd7be94a7-3cbe-4f9c-a974-189e3902b5cf', N'2ef8b403-c45a-4280-802b-5c92d161eff1', N'Other superficial bite of throat, subsequent encounter')
INSERT [dbo].[Prescription] ([ID_Prescription], [ID_Appointment], [Diagnosis]) VALUES (N'570beaad-a52c-4ce7-a221-1cb78afb5188', N'fa5d3b31-e13e-45dc-a919-0102166c2da7', N'Personal history of abuse in childhood')
INSERT [dbo].[Prescription] ([ID_Prescription], [ID_Appointment], [Diagnosis]) VALUES (N'91652f9c-2e32-4d71-8e5b-1e21d573decd', N'5c86ab07-d104-4cfe-9ab2-c39acd2a73f7', N'Torus fx lower end of unsp humerus, subs for fx w nonunion')
INSERT [dbo].[Prescription] ([ID_Prescription], [ID_Appointment], [Diagnosis]) VALUES (N'5bf53324-c51a-4e6e-8618-1e43e3e2b8bd', N'bfd67584-8bd0-4109-a5be-d4985b842d35', N'Multiple fractures of ribs, left side, init for opn fx')
INSERT [dbo].[Prescription] ([ID_Prescription], [ID_Appointment], [Diagnosis]) VALUES (N'06e1acde-8e64-41a4-8e5c-20bba2d3576b', N'827001f5-2338-4f71-8b26-271231b119a9', N'Other fracture of sixth cervical vertebra')
INSERT [dbo].[Prescription] ([ID_Prescription], [ID_Appointment], [Diagnosis]) VALUES (N'2780a0ba-0b8d-4c3b-9e6b-20efb9082c82', N'750673b3-e72c-40f2-812d-796664561ba4', N'Fall from bed')
INSERT [dbo].[Prescription] ([ID_Prescription], [ID_Appointment], [Diagnosis]) VALUES (N'48cfc50e-95ea-4e7c-ab0d-282ef59a5275', N'858e9906-974d-4fd1-bab3-dad0231238c4', N'Traum subrac hem w LOC of unsp duration, subs')
INSERT [dbo].[Prescription] ([ID_Prescription], [ID_Appointment], [Diagnosis]) VALUES (N'c518b7dc-28de-4c5d-b903-2994348d82d1', N'a599e5af-4596-4d6d-9186-706226421c38', N'Wedge comprsn fx third lum vert, subs for fx w delay heal')
INSERT [dbo].[Prescription] ([ID_Prescription], [ID_Appointment], [Diagnosis]) VALUES (N'29182c7d-bd10-4f5b-8fa1-2c98804f3846', N'a586652a-284f-4003-89be-0f884adca659', N'Poisoning by unsp drugs acting on muscles, undet, init')
INSERT [dbo].[Prescription] ([ID_Prescription], [ID_Appointment], [Diagnosis]) VALUES (N'f4cf42f9-319c-4d3f-9d84-2f1db7325b4d', N'2e9798cf-73b4-4c6f-8cc1-400bffc5563c', N'Superficial foreign body, unspecified knee, subs encntr')
INSERT [dbo].[Prescription] ([ID_Prescription], [ID_Appointment], [Diagnosis]) VALUES (N'e538ef22-3daf-4b77-aaec-306ffad459ad', N'37394a00-f49c-4d29-ab5b-2154382a1b9c', N'Mix cndct/snrl hear loss,uni,r ear,w unrestr hear cntra side')
INSERT [dbo].[Prescription] ([ID_Prescription], [ID_Appointment], [Diagnosis]) VALUES (N'ca38e070-640a-4de5-8f4a-31d4542651b3', N'3c594f21-fb0e-4940-95ca-e21703250779', N'Trichomonal prostatitis')
INSERT [dbo].[Prescription] ([ID_Prescription], [ID_Appointment], [Diagnosis]) VALUES (N'def6bee6-7add-4875-a752-352708406875', N'd86a7b26-14ba-4e44-9ad1-07f4aa29818b', N'War op involving intentl restrict of air/airwy, milt, subs')
INSERT [dbo].[Prescription] ([ID_Prescription], [ID_Appointment], [Diagnosis]) VALUES (N'ef774e65-cc2b-4175-b3ea-374408034c0a', N'22ebdb66-59f8-4c8a-9185-e097bd79bd3e', N'Drug/chem diab with prolif diab rtnop without mclr edema, bi')
INSERT [dbo].[Prescription] ([ID_Prescription], [ID_Appointment], [Diagnosis]) VALUES (N'74772524-c24e-4988-831b-38746fd073c0', N'd791670d-eb3d-4a10-9aeb-4474f00bd7e4', N'Other superficial bite of right lesser toe(s)')
INSERT [dbo].[Prescription] ([ID_Prescription], [ID_Appointment], [Diagnosis]) VALUES (N'07ef387b-5d84-7a6f-bf05-38c9d4f4516a', N'960397df-7eba-5a91-38a0-f257e7d6f4f8', N'Nondisp fx of medial phalanx of l mid fngr, init for opn fx')
INSERT [dbo].[Prescription] ([ID_Prescription], [ID_Appointment], [Diagnosis]) VALUES (N'da8700ab-1783-4e2e-8742-39c8b47e92c0', N'03687750-093b-451e-8e61-1170a34f5e25', N'Nondisp fx of proximal phalanx of unsp great toe, sequela')
INSERT [dbo].[Prescription] ([ID_Prescription], [ID_Appointment], [Diagnosis]) VALUES (N'c7fc8603-cdf2-49b3-b05b-3c142ced9658', N'32cb579b-5659-4ad2-938d-0013555832f2', N'Disp fx of medial phalanx of right little finger, sequela')
INSERT [dbo].[Prescription] ([ID_Prescription], [ID_Appointment], [Diagnosis]) VALUES (N'9aeab5c6-e1ee-4252-a0b0-45001a95dbe1', N'edfd976d-571a-4aa4-a7cf-f36f13960915', N'Burn involving larynx and trachea with lung, subs encntr')
INSERT [dbo].[Prescription] ([ID_Prescription], [ID_Appointment], [Diagnosis]) VALUES (N'8811f58b-4f3a-4670-93ff-48490aa2646b', N'd676b82b-dd7f-4cbf-b060-903e2dfc3c66', N'Heart transplant failure')
INSERT [dbo].[Prescription] ([ID_Prescription], [ID_Appointment], [Diagnosis]) VALUES (N'122ffb72-e9a9-4307-8811-4e1ab108c876', N'339780a9-ed09-4527-b33f-2601c4096dd0', N'Oth traum displ spondylolysis of 4th cervcal vert, 7thK')
INSERT [dbo].[Prescription] ([ID_Prescription], [ID_Appointment], [Diagnosis]) VALUES (N'ca54d1da-6b6e-42c7-b5e5-4f2468dfd095', N'c7f04e09-2861-4709-bc3d-5bd163eb62e3', N'Nondisp commnt fx shaft of l fibula, 7thJ')
INSERT [dbo].[Prescription] ([ID_Prescription], [ID_Appointment], [Diagnosis]) VALUES (N'b44d502f-a787-4dfc-ae73-4fe2e2f7c504', N'e647ce6c-1614-453d-a667-b6f4a78bdb70', N'Traumatic rupture of left ulnar collateral ligament, subs')
INSERT [dbo].[Prescription] ([ID_Prescription], [ID_Appointment], [Diagnosis]) VALUES (N'553ac81a-585f-4fa0-a7dd-507bb0ee542e', N'9cadc8a6-6804-4273-b19d-d7d38583c1a6', N'Maternal care for fetal problem, unsp, first trimester, oth')
INSERT [dbo].[Prescription] ([ID_Prescription], [ID_Appointment], [Diagnosis]) VALUES (N'7a970a84-d08a-4531-9eab-54c261b02144', N'2ae5a47e-dcbe-4438-ba3e-a481eab9d2c5', N'Open wound of eyelid and periocular area')
INSERT [dbo].[Prescription] ([ID_Prescription], [ID_Appointment], [Diagnosis]) VALUES (N'9f938d47-a90e-45dc-b24d-575ac53c8f4d', N'37f5dffc-5369-407c-8428-c9d461d47747', N'Toxic effect of insecticides, accidental, init')
INSERT [dbo].[Prescription] ([ID_Prescription], [ID_Appointment], [Diagnosis]) VALUES (N'ba1708c5-c2d6-4a05-aa07-5bb36a22ef4f', N'974c2308-acda-4cdb-a3cd-c14177db76a6', N'Person outside car injured in clsn w hv veh in traf, sequela')
INSERT [dbo].[Prescription] ([ID_Prescription], [ID_Appointment], [Diagnosis]) VALUES (N'01d2731e-2e40-4885-b441-5e30a5beaf5f', N'ac4976fc-ee34-4775-9365-ee49a5ea975c', N'Disp fx of lateral condyle of r femr, 7thP')
INSERT [dbo].[Prescription] ([ID_Prescription], [ID_Appointment], [Diagnosis]) VALUES (N'1ffc2920-89f9-d590-edc3-5feb6bc2b919', N'22e14f95-a3b9-87be-c77d-7736dfd9d1b0', N'Displ spiral fx shaft of ulna, unsp arm, 7thR')
INSERT [dbo].[Prescription] ([ID_Prescription], [ID_Appointment], [Diagnosis]) VALUES (N'73ad3bcb-6870-4681-b768-65865a85937b', N'60ce30b6-7285-4236-b7e2-845ffc2c2eea', N'Oth physl fx upper end of r fibula, subs for fx w routn heal')
INSERT [dbo].[Prescription] ([ID_Prescription], [ID_Appointment], [Diagnosis]) VALUES (N'd1ffd8c0-f356-4e66-9b2e-65d7f817f372', N'f0dcaea8-8c11-42b5-a736-dd2a8876ae09', N'Corrosion of other parts of respiratory tract, sequela')
INSERT [dbo].[Prescription] ([ID_Prescription], [ID_Appointment], [Diagnosis]) VALUES (N'f2ef6c97-2a59-45c8-a29e-65e7a4fd4699', N'c4a8a41b-4f74-4b12-8147-f6bc72c97a9a', N'Fall on or from playground slide, initial encounter')
INSERT [dbo].[Prescription] ([ID_Prescription], [ID_Appointment], [Diagnosis]) VALUES (N'fedfd5b1-09f1-4b11-a102-66fcdc54b6f5', N'0c9319ab-dfea-484d-9901-3a305d190609', N'Nondisp fx of unsp ulna styloid pro, 7thQ')
INSERT [dbo].[Prescription] ([ID_Prescription], [ID_Appointment], [Diagnosis]) VALUES (N'69343c56-5c5c-4c6c-a540-67b695bde2ed', N'13bf6a30-e426-4ec8-a100-7b1a4350959f', N'Nondisp fx of shaft of 2nd MC bone, l hand, 7thK')
INSERT [dbo].[Prescription] ([ID_Prescription], [ID_Appointment], [Diagnosis]) VALUES (N'720a2c8e-74ef-4dce-8271-683242db6cd5', N'fb5842ff-6d65-48af-a0c9-76b70c14fdf2', N'Osteopathy after poliomyelitis, unspecified forearm')
INSERT [dbo].[Prescription] ([ID_Prescription], [ID_Appointment], [Diagnosis]) VALUES (N'f63b600f-3ec0-45c0-8d10-684b0737146a', N'f67aa62e-6b5d-44c6-a26b-1c0d6d9cb95f', N'Blister (nonthermal) of breast, unsp breast, subs encntr')
INSERT [dbo].[Prescription] ([ID_Prescription], [ID_Appointment], [Diagnosis]) VALUES (N'dd7038aa-7723-4614-beb6-6bca55ddcb0d', N'57e47758-b65f-4694-a5d2-13427a59be01', N'Malfunction of tracheostomy stoma')
INSERT [dbo].[Prescription] ([ID_Prescription], [ID_Appointment], [Diagnosis]) VALUES (N'f731842d-6217-4bd4-9983-7167a31270d5', N'a4287083-5f78-4fea-9ced-e19b68fc661c', N'Corrosion of second degree of forehead and cheek')
INSERT [dbo].[Prescription] ([ID_Prescription], [ID_Appointment], [Diagnosis]) VALUES (N'7fe6f23c-e528-42d9-9e97-71baf4f04670', N'664eb83a-6556-4db6-83a7-accbb9473dd4', N'Rheumatoid nodule, unspecified ankle and foot')
INSERT [dbo].[Prescription] ([ID_Prescription], [ID_Appointment], [Diagnosis]) VALUES (N'01ba22de-a525-4817-9d4f-72ff78aef45e', N'b833690c-4241-4d0f-9f2a-2f1d16047ec1', N'Adverse effect of cephalospor/oth beta-lactm antibiot, subs')
INSERT [dbo].[Prescription] ([ID_Prescription], [ID_Appointment], [Diagnosis]) VALUES (N'6951c310-3d6f-4106-ae5c-7548e8f69059', N'c2cc32d0-b708-4deb-beed-bedfcabc3b64', N'Legal intervnt w firearm disch, law enforc offl inj, sequela')
INSERT [dbo].[Prescription] ([ID_Prescription], [ID_Appointment], [Diagnosis]) VALUES (N'5c3dde31-835d-492d-949f-80298fe83137', N'5ca37b81-4a1b-4c00-bab2-8d42f0cfc5de', N'Congenital absence and aplasia of penis')
INSERT [dbo].[Prescription] ([ID_Prescription], [ID_Appointment], [Diagnosis]) VALUES (N'45a6a5ea-313a-4b92-b666-8235c5d17998', N'dfe5be42-8141-4a31-9634-7c916a99d4de', N'Toxic effect of phenol and phenol homologues, assault, init')
INSERT [dbo].[Prescription] ([ID_Prescription], [ID_Appointment], [Diagnosis]) VALUES (N'5b36faed-b96a-4ba3-bab5-848b13d7fede', N'dd56fbec-d2c4-4a49-a16b-3543316bf90d', N'Other contact with other marine mammals, initial encounter')
INSERT [dbo].[Prescription] ([ID_Prescription], [ID_Appointment], [Diagnosis]) VALUES (N'86675269-c4ee-4f94-ad91-8c1f77c2c00c', N'451823ee-8f9c-44c0-9d3e-9910b4f7b541', N'Laceration with foreign body of unsp breast, subs encntr')
INSERT [dbo].[Prescription] ([ID_Prescription], [ID_Appointment], [Diagnosis]) VALUES (N'e3e615ca-e8d2-4cf0-988b-8c7c1b723756', N'4106cdb1-bce6-4982-9bbd-d7026de8a853', N'Atrophy of globe, left eye')
INSERT [dbo].[Prescription] ([ID_Prescription], [ID_Appointment], [Diagnosis]) VALUES (N'6cde1be2-8466-4e28-b14a-8f71b6ea3100', N'90dc6967-e58e-419b-b326-903398a0814a', N'Other injury due to other accident to merchant ship')
INSERT [dbo].[Prescription] ([ID_Prescription], [ID_Appointment], [Diagnosis]) VALUES (N'a4339cbd-0300-409b-aff9-964c55f26790', N'2fae5f2f-c29e-44e9-a4c4-41b861590547', N'Unsp fx unsp femur, subs for opn fx type I/2 w nonunion')
INSERT [dbo].[Prescription] ([ID_Prescription], [ID_Appointment], [Diagnosis]) VALUES (N'a425c8fb-a6e0-4884-966f-985404b2a957', N'a8a5a092-35e3-4a9b-9ee7-f13f993d1b62', N'Disp fx of glenoid cavity of scapula, right shoulder, init')
INSERT [dbo].[Prescription] ([ID_Prescription], [ID_Appointment], [Diagnosis]) VALUES (N'3bc682b9-5827-4a01-b6b4-98a85b2f53a7', N'5457e9ca-1963-491b-bd06-18beec57a539', N'Other stimulant abuse with intoxication, unspecified')
INSERT [dbo].[Prescription] ([ID_Prescription], [ID_Appointment], [Diagnosis]) VALUES (N'be15c6e3-bcaa-43f4-9362-98c0be1e0de0', N'ae10825b-fde5-485e-a28e-8151da761475', N'Laceration of brachial artery, left side')
INSERT [dbo].[Prescription] ([ID_Prescription], [ID_Appointment], [Diagnosis]) VALUES (N'dc31e42d-b1f5-4130-a399-9a56410c89eb', N'b35112ea-faf5-49c2-a1ff-d54ea3922cc6', N'Struck by other birds, sequela')
INSERT [dbo].[Prescription] ([ID_Prescription], [ID_Appointment], [Diagnosis]) VALUES (N'c1bbe744-cb78-4870-a277-9b92816f1a28', N'5c2a0be0-6dd5-419e-a7b6-e52a220c5f6c', N'Ped on skateboard injured in collision w 2/3-whl mv, unsp')
INSERT [dbo].[Prescription] ([ID_Prescription], [ID_Appointment], [Diagnosis]) VALUES (N'94a0762e-e372-4d53-86a5-9d574e5955d8', N'cdb75921-9806-4c58-b9b2-621f50865d37', N'Milt op involving intentl restriction of air/airwy, civilian')
INSERT [dbo].[Prescription] ([ID_Prescription], [ID_Appointment], [Diagnosis]) VALUES (N'feed78b2-a10a-4034-95bc-a0ec697abc52', N'ca3127a4-129b-490e-96c4-d7baa836a36f', N'Contact with hot food, subsequent encounter')
INSERT [dbo].[Prescription] ([ID_Prescription], [ID_Appointment], [Diagnosis]) VALUES (N'ce5d982d-175c-408b-b427-a1561a01406e', N'c09b72cc-d0f7-42c2-a737-03dcfcfd0faf', N'Laceration w foreign body of left cheek and TMJ area')
INSERT [dbo].[Prescription] ([ID_Prescription], [ID_Appointment], [Diagnosis]) VALUES (N'c7801717-cc44-450d-bf09-a3a00e74c0c6', N'df12ce05-0ad0-4f76-82db-1ee73cc8f04a', N'Burn of first deg mult right fingers (nail), not inc thumb')
INSERT [dbo].[Prescription] ([ID_Prescription], [ID_Appointment], [Diagnosis]) VALUES (N'0cad6562-ab8c-4f0a-b182-a6c738815099', N'24de39f5-43cc-457a-a106-9247964e2b63', N'Disp fx of shaft of fifth metacarpal bone, left hand, init')
INSERT [dbo].[Prescription] ([ID_Prescription], [ID_Appointment], [Diagnosis]) VALUES (N'64ae4650-d774-4668-9cda-ab87a6ecaf32', N'f43af592-9e8f-49ef-991d-3c2eacb13546', N'Toxic effect of contact w oth jellyfish, accidental')
INSERT [dbo].[Prescription] ([ID_Prescription], [ID_Appointment], [Diagnosis]) VALUES (N'3c848ebd-148f-43e3-995e-b38f91604742', N'a760352c-d5d3-48d3-a240-81d7d41643c1', N'Laceration with foreign body of finger w/o damage to nail')
INSERT [dbo].[Prescription] ([ID_Prescription], [ID_Appointment], [Diagnosis]) VALUES (N'17e61acd-653b-4467-ba11-b4152a02320e', N'887368cb-042f-4f95-98df-e92779b55c5a', N'Broken internal left knee prosthesis')
INSERT [dbo].[Prescription] ([ID_Prescription], [ID_Appointment], [Diagnosis]) VALUES (N'0b2d531f-cc87-4502-a791-b49fc9b548c7', N'afc5c027-f8e9-4c23-b127-80d0491dab2d', N'Gastrointestinal stromal tumor, unspecified site')
INSERT [dbo].[Prescription] ([ID_Prescription], [ID_Appointment], [Diagnosis]) VALUES (N'fcae477a-d62b-4fab-8ab3-b64ed368697a', N'79cbd0ab-2276-49ac-b448-9b0de0250a72', N'Nondisp fx of less trochanter of l femr, 7thJ')
INSERT [dbo].[Prescription] ([ID_Prescription], [ID_Appointment], [Diagnosis]) VALUES (N'89d7420a-8eca-4bed-9652-b71d8ad0ded6', N'fbfd4cb2-d492-4df8-b416-e695c3650292', N'Laceration of muscle, fascia and tendon of oth prt biceps')
INSERT [dbo].[Prescription] ([ID_Prescription], [ID_Appointment], [Diagnosis]) VALUES (N'922a8ff7-3898-43c0-8bc6-bbb33f24707d', N'fda505f8-8806-4d5f-bd00-608f91d5daa5', N'Chronic passive congestion of liver')
INSERT [dbo].[Prescription] ([ID_Prescription], [ID_Appointment], [Diagnosis]) VALUES (N'a65dd596-1213-4c5b-be21-bc9d5de65b0f', N'8d337251-337a-4483-8ca6-9da48fe841b9', N'Nondisp oblique fx shaft of unsp ulna, 7thG')
INSERT [dbo].[Prescription] ([ID_Prescription], [ID_Appointment], [Diagnosis]) VALUES (N'c2d641fe-190f-457e-90c5-bd9803db47fb', N'd3dcc517-3791-444a-83bb-aff90cbef99d', N'Cocaine use, unsp with cocaine-induced psychotic disorder')
INSERT [dbo].[Prescription] ([ID_Prescription], [ID_Appointment], [Diagnosis]) VALUES (N'74dd0c5b-9929-40ba-bbfa-c26be6d6ffec', N'e790a1e5-861f-4c6a-a6d8-470f89e967ce', N'Sltr-haris Type II physl fx upr end l tibia, 7thP')
INSERT [dbo].[Prescription] ([ID_Prescription], [ID_Appointment], [Diagnosis]) VALUES (N'ad7c9dc7-1893-44ad-89eb-cc151b292fb4', N'49ed73a5-0184-44b7-b60e-81212cf15b7d', N'Complete traum amp at lev betw elbow and wrs, unsp arm, sqla')
INSERT [dbo].[Prescription] ([ID_Prescription], [ID_Appointment], [Diagnosis]) VALUES (N'a7eb5d74-94eb-45f1-9646-cdf61691df4e', N'6b09c99d-2c77-49bc-892d-c6517bccc979', N'Assault by machine gun, subsequent encounter')
INSERT [dbo].[Prescription] ([ID_Prescription], [ID_Appointment], [Diagnosis]) VALUES (N'7c952049-4e70-4f7c-803f-d36fb3881ecf', N'bb226510-027c-45b4-91cc-c7dc32301cc1', N'Fracture of shaft of fibula')
INSERT [dbo].[Prescription] ([ID_Prescription], [ID_Appointment], [Diagnosis]) VALUES (N'c6880298-cccb-4440-96b1-d3c28d4a2098', N'a1c4132b-a748-4977-8ce1-7ad9f9aa915b', N'Abnormal findings on antenatal screening of mother')
INSERT [dbo].[Prescription] ([ID_Prescription], [ID_Appointment], [Diagnosis]) VALUES (N'669bdf80-89c4-482e-a085-d54b53eb3ea6', N'0fb0b16c-45ba-42d3-8787-74528eadf410', N'Disseminated histoplasmosis capsulati')
INSERT [dbo].[Prescription] ([ID_Prescription], [ID_Appointment], [Diagnosis]) VALUES (N'369fba1a-9855-4e43-b305-d720600a9ef4', N'a7805913-7c3d-4216-b89f-131eefe2e38b', N'Poisoning by unsp anesthetic, undetermined, init encntr')
INSERT [dbo].[Prescription] ([ID_Prescription], [ID_Appointment], [Diagnosis]) VALUES (N'b32b9a04-b04a-4825-91d0-d95f2e03fead', N'4c3aeacb-26d6-468c-afff-4f606378534d', N'Nondisp suprcndl fx w/o intrcndl extn low end unsp femr,7thC')
INSERT [dbo].[Prescription] ([ID_Prescription], [ID_Appointment], [Diagnosis]) VALUES (N'ad0200c2-403b-45b3-8eac-db9f0f0316b0', N'b21fe828-46ee-4489-a8cc-816b34ca66d6', N'Military op w oth effects of nuclear weapons, milt, subs')
INSERT [dbo].[Prescription] ([ID_Prescription], [ID_Appointment], [Diagnosis]) VALUES (N'8e56cb29-7d81-4896-a444-dfe6530c5da5', N'f690635f-dbcb-4646-bb46-7e7c6bdbecd1', N'Toxic effect of rodenticides, undetermined, sequela')
INSERT [dbo].[Prescription] ([ID_Prescription], [ID_Appointment], [Diagnosis]) VALUES (N'6e7bf9d3-05e1-4146-aea4-e21f99c8eb9d', N'00d85a75-65df-4c5a-b05b-a807c7cb2a69', N'Ped on foot injured in clsn w nonmtr vehicle, unsp, sequela')
INSERT [dbo].[Prescription] ([ID_Prescription], [ID_Appointment], [Diagnosis]) VALUES (N'17a91e6f-4d18-470e-a106-e30a322cd0f2', N'3a2fd2da-7502-4e1a-908f-b38b02dac70a', N'Unspecified complication of corneal transplant')
INSERT [dbo].[Prescription] ([ID_Prescription], [ID_Appointment], [Diagnosis]) VALUES (N'cac8f73d-cbb1-4559-9c2d-e4e938c1ec2f', N'a99db703-d4f1-46e4-bd55-3fdc341a7d22', N'Frontal lobe and executive function deficit')
INSERT [dbo].[Prescription] ([ID_Prescription], [ID_Appointment], [Diagnosis]) VALUES (N'0646cac3-0412-43bb-9191-e66f25ae0544', N'b7b559b7-8f41-4b92-9670-df4639570ec0', N'Displacement of prosth dev/implnt/grft of genital tract')
INSERT [dbo].[Prescription] ([ID_Prescription], [ID_Appointment], [Diagnosis]) VALUES (N'7ea4c787-ffe0-4f67-bee3-f5aa92ef35b3', N'd06e8f7b-1fab-4cc6-a2a6-70a7a9b83426', N'Unsp inj musc/tend post grp at low leg level, left leg, init')
INSERT [dbo].[Prescription] ([ID_Prescription], [ID_Appointment], [Diagnosis]) VALUES (N'c7c54c4a-440b-49b7-b9f7-f6188af04dbd', N'dec74dee-480c-48d0-8f39-05f3cbf8c97c', N'Proc/trtmt not crd out bec pt decision for oth/unsp reason')
INSERT [dbo].[Prescription] ([ID_Prescription], [ID_Appointment], [Diagnosis]) VALUES (N'7dafc817-9341-47cd-a1b3-f6fa15daaace', N'eeef70da-0de2-4c89-abe0-047eaa28d9c2', N'Toxic effect of venom of other snake, assault, sequela')
INSERT [dbo].[Prescription] ([ID_Prescription], [ID_Appointment], [Diagnosis]) VALUES (N'08030533-1be8-4f0f-8e4e-fb061ec12a84', N'8d018b2b-b426-42c4-8640-b42a97ce91d1', N'Hemarthrosis, left foot')
INSERT [dbo].[Prescription] ([ID_Prescription], [ID_Appointment], [Diagnosis]) VALUES (N'f466111f-cd13-4844-907f-fb8bb482f926', N'4c17c5ed-acf1-4a00-b145-e41decc1cadb', N'Australian encephalitis')
INSERT [dbo].[Prescription] ([ID_Prescription], [ID_Appointment], [Diagnosis]) VALUES (N'e69adcce-674c-403d-9944-fd2fc69344f7', N'b3443c7a-4ed0-4536-99ec-7f6581485a73', N'Displ spiral fx shaft of ulna, l arm, 7thE')
INSERT [dbo].[Prescription] ([ID_Prescription], [ID_Appointment], [Diagnosis]) VALUES (N'48a6a6d5-617c-48ec-a49a-fe23ed17f798', N'ad2368ad-082f-462f-8183-f7c6547593ab', N'Fracture oth prt scapula, l shoulder, subs for fx w nonunion')
INSERT [dbo].[Prescription] ([ID_Prescription], [ID_Appointment], [Diagnosis]) VALUES (N'907cf102-5bcd-4e5a-98f8-fe831739dc1b', N'8dfd1a3b-83cd-4cd0-9883-9f5acaaf4e7c', N'Car pasngr injured in nonclsn trnsp acc in traf, sequela')
GO
INSERT [dbo].[Prescription] ([ID_Prescription], [ID_Appointment], [Diagnosis]) VALUES (N'99a16f4c-8d66-44bf-8bd7-fe9e71666b8d', N'fa6ce0ff-3726-43b9-af2a-b70c109f756f', N'Disorders of pyruvate metabolism and gluconeogenesis')
INSERT [dbo].[Prescription] ([ID_Prescription], [ID_Appointment], [Diagnosis]) VALUES (N'12b25cd2-ceab-4292-9601-ff09e173e42e', N'd6d4cc4d-2409-4af2-ad6b-6bc44edd202d', N'Snow-skier colliding with stationary object, subs encntr')
