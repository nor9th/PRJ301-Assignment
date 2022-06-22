USE [Assignment]
GO
/****** Object:  Table [dbo].[Account]    Script Date: 6/22/2022 1:00:05 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Account](
	[accountid] [int] IDENTITY(1,1) NOT NULL,
	[username] [nvarchar](150) NOT NULL,
	[password] [nvarchar](150) NOT NULL,
 CONSTRAINT [PK_Account] PRIMARY KEY CLUSTERED 
(
	[accountid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Attendance]    Script Date: 6/22/2022 1:00:05 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Attendance](
	[ID] [int] NOT NULL,
	[ScheduleID] [int] NOT NULL,
	[StudentCode] [nvarchar](50) NOT NULL,
	[Attendance] [nvarchar](150) NOT NULL,
 CONSTRAINT [PK_Attendance] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Class]    Script Date: 6/22/2022 1:00:05 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Class](
	[ClassID] [int] NOT NULL,
	[ClassName] [nvarchar](250) NOT NULL,
 CONSTRAINT [PK_Class] PRIMARY KEY CLUSTERED 
(
	[ClassID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ClassMember]    Script Date: 6/22/2022 1:00:05 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ClassMember](
	[StudentCode] [nvarchar](50) NOT NULL,
	[ClassID] [int] NOT NULL,
 CONSTRAINT [PK_ClassMember] PRIMARY KEY CLUSTERED 
(
	[StudentCode] ASC,
	[ClassID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Instructor]    Script Date: 6/22/2022 1:00:05 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Instructor](
	[InstructorID] [int] IDENTITY(1,1) NOT NULL,
	[IName] [nvarchar](150) NOT NULL,
	[Username] [nvarchar](150) NOT NULL,
 CONSTRAINT [PK_Instructor] PRIMARY KEY CLUSTERED 
(
	[InstructorID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Schedule]    Script Date: 6/22/2022 1:00:05 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Schedule](
	[ID] [int] NOT NULL,
	[SubjectID] [int] NULL,
	[ClassID] [int] NULL,
	[SlotID] [int] NULL,
	[Date] [date] NULL,
 CONSTRAINT [PK_Schedule] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Slot]    Script Date: 6/22/2022 1:00:05 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Slot](
	[SlotID] [int] NOT NULL,
	[SlotName] [nvarchar](250) NOT NULL,
	[Time] [nvarchar](250) NOT NULL,
 CONSTRAINT [PK_Slot] PRIMARY KEY CLUSTERED 
(
	[SlotID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Student]    Script Date: 6/22/2022 1:00:05 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Student](
	[StudentCode] [nvarchar](50) NOT NULL,
	[FullName] [nvarchar](150) NOT NULL,
	[Image] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK_Student] PRIMARY KEY CLUSTERED 
(
	[StudentCode] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Subject]    Script Date: 6/22/2022 1:00:05 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Subject](
	[SubjectID] [int] NOT NULL,
	[SubjectName] [nvarchar](250) NOT NULL,
 CONSTRAINT [PK_Subject] PRIMARY KEY CLUSTERED 
(
	[SubjectID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Supervise]    Script Date: 6/22/2022 1:00:05 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Supervise](
	[InstructorID] [int] NOT NULL,
	[ID] [int] NOT NULL,
 CONSTRAINT [PK_Supervise] PRIMARY KEY CLUSTERED 
(
	[InstructorID] ASC,
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[Attendance] ([ID], [ScheduleID], [StudentCode], [Attendance]) VALUES (1, 7, N'	HE140027', N'Attended')
GO
INSERT [dbo].[Attendance] ([ID], [ScheduleID], [StudentCode], [Attendance]) VALUES (2, 7, N'HE140220', N'Attended')
GO
INSERT [dbo].[Attendance] ([ID], [ScheduleID], [StudentCode], [Attendance]) VALUES (3, 7, N'HE140253', N'Attended')
GO
INSERT [dbo].[Attendance] ([ID], [ScheduleID], [StudentCode], [Attendance]) VALUES (4, 7, N'HE141433', N'Attened')
GO
INSERT [dbo].[Attendance] ([ID], [ScheduleID], [StudentCode], [Attendance]) VALUES (5, 7, N'HE141555', N'Absent')
GO
INSERT [dbo].[Attendance] ([ID], [ScheduleID], [StudentCode], [Attendance]) VALUES (6, 7, N'HE141740', N'Attended')
GO
INSERT [dbo].[Attendance] ([ID], [ScheduleID], [StudentCode], [Attendance]) VALUES (7, 7, N'HE150247', N'Attended')
GO
INSERT [dbo].[Attendance] ([ID], [ScheduleID], [StudentCode], [Attendance]) VALUES (8, 7, N'HE150484', N'Absent')
GO
INSERT [dbo].[Attendance] ([ID], [ScheduleID], [StudentCode], [Attendance]) VALUES (9, 7, N'HE150499', N'Attended')
GO
INSERT [dbo].[Attendance] ([ID], [ScheduleID], [StudentCode], [Attendance]) VALUES (10, 7, N'HE150537', N'Attended')
GO
INSERT [dbo].[Attendance] ([ID], [ScheduleID], [StudentCode], [Attendance]) VALUES (11, 7, N'HE150546', N'Absent')
GO
INSERT [dbo].[Attendance] ([ID], [ScheduleID], [StudentCode], [Attendance]) VALUES (12, 7, N'HE150664', N'Attended')
GO
INSERT [dbo].[Attendance] ([ID], [ScheduleID], [StudentCode], [Attendance]) VALUES (13, 7, N'HE150887', N'Attended')
GO
INSERT [dbo].[Attendance] ([ID], [ScheduleID], [StudentCode], [Attendance]) VALUES (14, 7, N'HE150907', N'Attended')
GO
INSERT [dbo].[Attendance] ([ID], [ScheduleID], [StudentCode], [Attendance]) VALUES (15, 7, N'HE150914', N'Attended')
GO
INSERT [dbo].[Attendance] ([ID], [ScheduleID], [StudentCode], [Attendance]) VALUES (16, 7, N'HE151043', N'Attended')
GO
INSERT [dbo].[Attendance] ([ID], [ScheduleID], [StudentCode], [Attendance]) VALUES (17, 7, N'HE151065', N'Attended')
GO
INSERT [dbo].[Attendance] ([ID], [ScheduleID], [StudentCode], [Attendance]) VALUES (18, 7, N'HE151118', N'Attended')
GO
INSERT [dbo].[Attendance] ([ID], [ScheduleID], [StudentCode], [Attendance]) VALUES (19, 7, N'HE151149', N'Attended')
GO
INSERT [dbo].[Attendance] ([ID], [ScheduleID], [StudentCode], [Attendance]) VALUES (20, 7, N'HE151180', N'Attended')
GO
INSERT [dbo].[Attendance] ([ID], [ScheduleID], [StudentCode], [Attendance]) VALUES (21, 7, N'HE151525', N'Attended')
GO
INSERT [dbo].[Attendance] ([ID], [ScheduleID], [StudentCode], [Attendance]) VALUES (22, 7, N'HE153060', N'Attended')
GO
INSERT [dbo].[Attendance] ([ID], [ScheduleID], [StudentCode], [Attendance]) VALUES (23, 7, N'HE153205', N'Attended')
GO
INSERT [dbo].[Attendance] ([ID], [ScheduleID], [StudentCode], [Attendance]) VALUES (24, 7, N'HE153322', N'Attended')
GO
INSERT [dbo].[Attendance] ([ID], [ScheduleID], [StudentCode], [Attendance]) VALUES (25, 7, N'HE153509', N'Attended')
GO
INSERT [dbo].[Attendance] ([ID], [ScheduleID], [StudentCode], [Attendance]) VALUES (26, 7, N'HE153595', N'Attended')
GO
INSERT [dbo].[Attendance] ([ID], [ScheduleID], [StudentCode], [Attendance]) VALUES (27, 7, N'HE153718', N'Absent')
GO
INSERT [dbo].[Attendance] ([ID], [ScheduleID], [StudentCode], [Attendance]) VALUES (28, 7, N'HE160416', N'Attended')
GO
INSERT [dbo].[Attendance] ([ID], [ScheduleID], [StudentCode], [Attendance]) VALUES (29, 7, N'HE160698', N'Attended')
GO
INSERT [dbo].[Attendance] ([ID], [ScheduleID], [StudentCode], [Attendance]) VALUES (30, 7, N'HE163011', N'Attended')
GO
INSERT [dbo].[Attendance] ([ID], [ScheduleID], [StudentCode], [Attendance]) VALUES (31, 6, N'	HE140027', N'Absent')
GO
INSERT [dbo].[Attendance] ([ID], [ScheduleID], [StudentCode], [Attendance]) VALUES (32, 6, N'HE140220', N'Attended')
GO
INSERT [dbo].[Attendance] ([ID], [ScheduleID], [StudentCode], [Attendance]) VALUES (33, 6, N'HE140253', N'Attended')
GO
INSERT [dbo].[Attendance] ([ID], [ScheduleID], [StudentCode], [Attendance]) VALUES (34, 6, N'HE141433', N'Attended')
GO
INSERT [dbo].[Attendance] ([ID], [ScheduleID], [StudentCode], [Attendance]) VALUES (35, 6, N'HE141555', N'Attended')
GO
INSERT [dbo].[Attendance] ([ID], [ScheduleID], [StudentCode], [Attendance]) VALUES (36, 6, N'HE141740', N'Attended')
GO
INSERT [dbo].[Attendance] ([ID], [ScheduleID], [StudentCode], [Attendance]) VALUES (37, 6, N'HE150247', N'Attended')
GO
INSERT [dbo].[Attendance] ([ID], [ScheduleID], [StudentCode], [Attendance]) VALUES (38, 6, N'HE150484', N'Attended')
GO
INSERT [dbo].[Attendance] ([ID], [ScheduleID], [StudentCode], [Attendance]) VALUES (39, 6, N'HE150499', N'Attended')
GO
INSERT [dbo].[Attendance] ([ID], [ScheduleID], [StudentCode], [Attendance]) VALUES (40, 6, N'HE150537', N'Attended')
GO
INSERT [dbo].[Attendance] ([ID], [ScheduleID], [StudentCode], [Attendance]) VALUES (41, 6, N'HE150546', N'Attended')
GO
INSERT [dbo].[Attendance] ([ID], [ScheduleID], [StudentCode], [Attendance]) VALUES (42, 6, N'HE150664', N'Absent')
GO
INSERT [dbo].[Attendance] ([ID], [ScheduleID], [StudentCode], [Attendance]) VALUES (43, 6, N'HE150887', N'Attended')
GO
INSERT [dbo].[Attendance] ([ID], [ScheduleID], [StudentCode], [Attendance]) VALUES (44, 6, N'HE150907', N'Attended')
GO
INSERT [dbo].[Attendance] ([ID], [ScheduleID], [StudentCode], [Attendance]) VALUES (45, 6, N'HE150914', N'Attended')
GO
INSERT [dbo].[Attendance] ([ID], [ScheduleID], [StudentCode], [Attendance]) VALUES (46, 6, N'HE151043', N'Attended')
GO
INSERT [dbo].[Attendance] ([ID], [ScheduleID], [StudentCode], [Attendance]) VALUES (47, 6, N'HE151065', N'Attended')
GO
INSERT [dbo].[Attendance] ([ID], [ScheduleID], [StudentCode], [Attendance]) VALUES (48, 6, N'HE151118', N'Absent')
GO
INSERT [dbo].[Attendance] ([ID], [ScheduleID], [StudentCode], [Attendance]) VALUES (49, 6, N'HE151149', N'Attended')
GO
INSERT [dbo].[Attendance] ([ID], [ScheduleID], [StudentCode], [Attendance]) VALUES (50, 6, N'HE151180', N'Attended')
GO
INSERT [dbo].[Attendance] ([ID], [ScheduleID], [StudentCode], [Attendance]) VALUES (51, 6, N'HE151525', N'Attended')
GO
INSERT [dbo].[Attendance] ([ID], [ScheduleID], [StudentCode], [Attendance]) VALUES (52, 6, N'HE153060', N'Attended')
GO
INSERT [dbo].[Attendance] ([ID], [ScheduleID], [StudentCode], [Attendance]) VALUES (53, 6, N'HE153205', N'Attended')
GO
INSERT [dbo].[Attendance] ([ID], [ScheduleID], [StudentCode], [Attendance]) VALUES (54, 6, N'HE153322', N'Attended')
GO
INSERT [dbo].[Attendance] ([ID], [ScheduleID], [StudentCode], [Attendance]) VALUES (55, 6, N'HE153509', N'Attended')
GO
INSERT [dbo].[Attendance] ([ID], [ScheduleID], [StudentCode], [Attendance]) VALUES (56, 6, N'HE153595', N'Attended')
GO
INSERT [dbo].[Attendance] ([ID], [ScheduleID], [StudentCode], [Attendance]) VALUES (57, 6, N'HE153718', N'Attended')
GO
INSERT [dbo].[Attendance] ([ID], [ScheduleID], [StudentCode], [Attendance]) VALUES (58, 6, N'HE160416', N'Attended')
GO
INSERT [dbo].[Attendance] ([ID], [ScheduleID], [StudentCode], [Attendance]) VALUES (59, 6, N'HE160698', N'Absent')
GO
INSERT [dbo].[Attendance] ([ID], [ScheduleID], [StudentCode], [Attendance]) VALUES (60, 6, N'HE163011', N'Attended')
GO
INSERT [dbo].[Attendance] ([ID], [ScheduleID], [StudentCode], [Attendance]) VALUES (61, 5, N'	HE140027', N'Attended')
GO
INSERT [dbo].[Attendance] ([ID], [ScheduleID], [StudentCode], [Attendance]) VALUES (62, 5, N'HE140220', N'Attended')
GO
INSERT [dbo].[Attendance] ([ID], [ScheduleID], [StudentCode], [Attendance]) VALUES (63, 5, N'HE140253', N'Attended')
GO
INSERT [dbo].[Attendance] ([ID], [ScheduleID], [StudentCode], [Attendance]) VALUES (64, 5, N'HE141433', N'Attended')
GO
INSERT [dbo].[Attendance] ([ID], [ScheduleID], [StudentCode], [Attendance]) VALUES (65, 5, N'HE141555', N'Absent')
GO
INSERT [dbo].[Attendance] ([ID], [ScheduleID], [StudentCode], [Attendance]) VALUES (66, 5, N'HE141740', N'Absent')
GO
INSERT [dbo].[Attendance] ([ID], [ScheduleID], [StudentCode], [Attendance]) VALUES (67, 5, N'HE150247', N'Attended')
GO
INSERT [dbo].[Attendance] ([ID], [ScheduleID], [StudentCode], [Attendance]) VALUES (68, 5, N'HE150484', N'Attended')
GO
INSERT [dbo].[Attendance] ([ID], [ScheduleID], [StudentCode], [Attendance]) VALUES (69, 5, N'HE150499', N'Attended')
GO
INSERT [dbo].[Attendance] ([ID], [ScheduleID], [StudentCode], [Attendance]) VALUES (70, 5, N'HE150537', N'Attended')
GO
INSERT [dbo].[Attendance] ([ID], [ScheduleID], [StudentCode], [Attendance]) VALUES (71, 5, N'HE150546', N'Attended')
GO
INSERT [dbo].[Attendance] ([ID], [ScheduleID], [StudentCode], [Attendance]) VALUES (72, 5, N'HE150664', N'Attended')
GO
INSERT [dbo].[Attendance] ([ID], [ScheduleID], [StudentCode], [Attendance]) VALUES (73, 5, N'HE150887', N'Attended')
GO
INSERT [dbo].[Attendance] ([ID], [ScheduleID], [StudentCode], [Attendance]) VALUES (74, 5, N'HE150907', N'Attended')
GO
INSERT [dbo].[Attendance] ([ID], [ScheduleID], [StudentCode], [Attendance]) VALUES (75, 5, N'HE150914', N'Attended')
GO
INSERT [dbo].[Attendance] ([ID], [ScheduleID], [StudentCode], [Attendance]) VALUES (76, 5, N'HE151043', N'Attended')
GO
INSERT [dbo].[Attendance] ([ID], [ScheduleID], [StudentCode], [Attendance]) VALUES (77, 5, N'HE151065', N'Attended')
GO
INSERT [dbo].[Attendance] ([ID], [ScheduleID], [StudentCode], [Attendance]) VALUES (78, 5, N'HE151118', N'Attended')
GO
INSERT [dbo].[Attendance] ([ID], [ScheduleID], [StudentCode], [Attendance]) VALUES (79, 5, N'HE151149', N'Attended')
GO
INSERT [dbo].[Attendance] ([ID], [ScheduleID], [StudentCode], [Attendance]) VALUES (80, 5, N'HE151180', N'Attended')
GO
INSERT [dbo].[Attendance] ([ID], [ScheduleID], [StudentCode], [Attendance]) VALUES (81, 5, N'HE151525', N'Attended')
GO
INSERT [dbo].[Attendance] ([ID], [ScheduleID], [StudentCode], [Attendance]) VALUES (82, 5, N'HE153060', N'Attended')
GO
INSERT [dbo].[Attendance] ([ID], [ScheduleID], [StudentCode], [Attendance]) VALUES (83, 5, N'HE153205', N'Attended')
GO
INSERT [dbo].[Attendance] ([ID], [ScheduleID], [StudentCode], [Attendance]) VALUES (84, 5, N'HE153322', N'Attended')
GO
INSERT [dbo].[Attendance] ([ID], [ScheduleID], [StudentCode], [Attendance]) VALUES (85, 5, N'HE153509', N'Attended')
GO
INSERT [dbo].[Attendance] ([ID], [ScheduleID], [StudentCode], [Attendance]) VALUES (86, 5, N'HE153595', N'Attended')
GO
INSERT [dbo].[Attendance] ([ID], [ScheduleID], [StudentCode], [Attendance]) VALUES (87, 5, N'HE153718', N'Attended')
GO
INSERT [dbo].[Attendance] ([ID], [ScheduleID], [StudentCode], [Attendance]) VALUES (88, 5, N'HE160416', N'Attended')
GO
INSERT [dbo].[Attendance] ([ID], [ScheduleID], [StudentCode], [Attendance]) VALUES (89, 5, N'HE160698', N'Attended')
GO
INSERT [dbo].[Attendance] ([ID], [ScheduleID], [StudentCode], [Attendance]) VALUES (90, 5, N'HE163011', N'Absent')
GO
INSERT [dbo].[Attendance] ([ID], [ScheduleID], [StudentCode], [Attendance]) VALUES (91, 3, N'	HE140027', N'Attended')
GO
INSERT [dbo].[Attendance] ([ID], [ScheduleID], [StudentCode], [Attendance]) VALUES (92, 3, N'HE140220', N'Attended')
GO
INSERT [dbo].[Attendance] ([ID], [ScheduleID], [StudentCode], [Attendance]) VALUES (93, 3, N'HE140253', N'Attended')
GO
INSERT [dbo].[Attendance] ([ID], [ScheduleID], [StudentCode], [Attendance]) VALUES (94, 3, N'HE141433', N'Attended')
GO
INSERT [dbo].[Attendance] ([ID], [ScheduleID], [StudentCode], [Attendance]) VALUES (95, 3, N'HE141555', N'Attended')
GO
INSERT [dbo].[Attendance] ([ID], [ScheduleID], [StudentCode], [Attendance]) VALUES (96, 3, N'HE141740', N'Attended')
GO
INSERT [dbo].[Attendance] ([ID], [ScheduleID], [StudentCode], [Attendance]) VALUES (97, 3, N'HE150247', N'Attended')
GO
INSERT [dbo].[Attendance] ([ID], [ScheduleID], [StudentCode], [Attendance]) VALUES (98, 3, N'HE150484', N'Attended')
GO
INSERT [dbo].[Attendance] ([ID], [ScheduleID], [StudentCode], [Attendance]) VALUES (99, 3, N'HE150499', N'Attended')
GO
INSERT [dbo].[Attendance] ([ID], [ScheduleID], [StudentCode], [Attendance]) VALUES (100, 3, N'HE150537', N'Attended')
GO
INSERT [dbo].[Attendance] ([ID], [ScheduleID], [StudentCode], [Attendance]) VALUES (101, 3, N'HE150546', N'Attended')
GO
INSERT [dbo].[Attendance] ([ID], [ScheduleID], [StudentCode], [Attendance]) VALUES (102, 3, N'HE150664', N'Attended')
GO
INSERT [dbo].[Attendance] ([ID], [ScheduleID], [StudentCode], [Attendance]) VALUES (103, 3, N'HE150887', N'Attended')
GO
INSERT [dbo].[Attendance] ([ID], [ScheduleID], [StudentCode], [Attendance]) VALUES (104, 3, N'HE150907', N'Attended')
GO
INSERT [dbo].[Attendance] ([ID], [ScheduleID], [StudentCode], [Attendance]) VALUES (105, 3, N'HE150914', N'Attended')
GO
INSERT [dbo].[Attendance] ([ID], [ScheduleID], [StudentCode], [Attendance]) VALUES (106, 3, N'HE151043', N'Attended')
GO
INSERT [dbo].[Attendance] ([ID], [ScheduleID], [StudentCode], [Attendance]) VALUES (107, 3, N'HE151065', N'Attended')
GO
INSERT [dbo].[Attendance] ([ID], [ScheduleID], [StudentCode], [Attendance]) VALUES (108, 3, N'HE151118', N'Attended')
GO
INSERT [dbo].[Attendance] ([ID], [ScheduleID], [StudentCode], [Attendance]) VALUES (109, 3, N'HE151149', N'Attended')
GO
INSERT [dbo].[Attendance] ([ID], [ScheduleID], [StudentCode], [Attendance]) VALUES (110, 3, N'HE151180', N'Attended')
GO
INSERT [dbo].[Attendance] ([ID], [ScheduleID], [StudentCode], [Attendance]) VALUES (111, 3, N'HE151525', N'Attended')
GO
INSERT [dbo].[Attendance] ([ID], [ScheduleID], [StudentCode], [Attendance]) VALUES (112, 3, N'HE153060', N'Attended')
GO
INSERT [dbo].[Attendance] ([ID], [ScheduleID], [StudentCode], [Attendance]) VALUES (113, 3, N'HE153205', N'Attended')
GO
INSERT [dbo].[Attendance] ([ID], [ScheduleID], [StudentCode], [Attendance]) VALUES (114, 3, N'HE153322', N'Attended')
GO
INSERT [dbo].[Attendance] ([ID], [ScheduleID], [StudentCode], [Attendance]) VALUES (115, 3, N'HE153509', N'Attended')
GO
INSERT [dbo].[Attendance] ([ID], [ScheduleID], [StudentCode], [Attendance]) VALUES (116, 3, N'HE153595', N'Attended')
GO
INSERT [dbo].[Attendance] ([ID], [ScheduleID], [StudentCode], [Attendance]) VALUES (117, 3, N'HE153718', N'Attended')
GO
INSERT [dbo].[Attendance] ([ID], [ScheduleID], [StudentCode], [Attendance]) VALUES (118, 3, N'HE160416', N'Attended')
GO
INSERT [dbo].[Attendance] ([ID], [ScheduleID], [StudentCode], [Attendance]) VALUES (119, 3, N'HE160698', N'Attended')
GO
INSERT [dbo].[Attendance] ([ID], [ScheduleID], [StudentCode], [Attendance]) VALUES (120, 3, N'HE163011', N'Attended')
GO
INSERT [dbo].[Class] ([ClassID], [ClassName]) VALUES (1, N'SE1614')
GO
INSERT [dbo].[Class] ([ClassID], [ClassName]) VALUES (2, N'SE1624')
GO
INSERT [dbo].[ClassMember] ([StudentCode], [ClassID]) VALUES (N'	HE140027', 1)
GO
INSERT [dbo].[ClassMember] ([StudentCode], [ClassID]) VALUES (N'HA150108', 2)
GO
INSERT [dbo].[ClassMember] ([StudentCode], [ClassID]) VALUES (N'HE130028', 2)
GO
INSERT [dbo].[ClassMember] ([StudentCode], [ClassID]) VALUES (N'HE130221', 2)
GO
INSERT [dbo].[ClassMember] ([StudentCode], [ClassID]) VALUES (N'HE130321', 2)
GO
INSERT [dbo].[ClassMember] ([StudentCode], [ClassID]) VALUES (N'HE130520', 2)
GO
INSERT [dbo].[ClassMember] ([StudentCode], [ClassID]) VALUES (N'HE130632', 2)
GO
INSERT [dbo].[ClassMember] ([StudentCode], [ClassID]) VALUES (N'HE140145', 2)
GO
INSERT [dbo].[ClassMember] ([StudentCode], [ClassID]) VALUES (N'HE140220', 1)
GO
INSERT [dbo].[ClassMember] ([StudentCode], [ClassID]) VALUES (N'HE140253', 1)
GO
INSERT [dbo].[ClassMember] ([StudentCode], [ClassID]) VALUES (N'HE140465', 2)
GO
INSERT [dbo].[ClassMember] ([StudentCode], [ClassID]) VALUES (N'HE140721', 2)
GO
INSERT [dbo].[ClassMember] ([StudentCode], [ClassID]) VALUES (N'HE140834', 2)
GO
INSERT [dbo].[ClassMember] ([StudentCode], [ClassID]) VALUES (N'HE141023', 2)
GO
INSERT [dbo].[ClassMember] ([StudentCode], [ClassID]) VALUES (N'HE141090', 2)
GO
INSERT [dbo].[ClassMember] ([StudentCode], [ClassID]) VALUES (N'HE141206', 2)
GO
INSERT [dbo].[ClassMember] ([StudentCode], [ClassID]) VALUES (N'HE141363', 2)
GO
INSERT [dbo].[ClassMember] ([StudentCode], [ClassID]) VALUES (N'HE141433', 1)
GO
INSERT [dbo].[ClassMember] ([StudentCode], [ClassID]) VALUES (N'HE141555', 1)
GO
INSERT [dbo].[ClassMember] ([StudentCode], [ClassID]) VALUES (N'HE141571', 2)
GO
INSERT [dbo].[ClassMember] ([StudentCode], [ClassID]) VALUES (N'HE141740', 1)
GO
INSERT [dbo].[ClassMember] ([StudentCode], [ClassID]) VALUES (N'HE150105', 2)
GO
INSERT [dbo].[ClassMember] ([StudentCode], [ClassID]) VALUES (N'HE150247', 1)
GO
INSERT [dbo].[ClassMember] ([StudentCode], [ClassID]) VALUES (N'HE150484', 1)
GO
INSERT [dbo].[ClassMember] ([StudentCode], [ClassID]) VALUES (N'HE150499', 1)
GO
INSERT [dbo].[ClassMember] ([StudentCode], [ClassID]) VALUES (N'HE150537', 1)
GO
INSERT [dbo].[ClassMember] ([StudentCode], [ClassID]) VALUES (N'HE150546', 1)
GO
INSERT [dbo].[ClassMember] ([StudentCode], [ClassID]) VALUES (N'HE150551', 2)
GO
INSERT [dbo].[ClassMember] ([StudentCode], [ClassID]) VALUES (N'HE150664', 1)
GO
INSERT [dbo].[ClassMember] ([StudentCode], [ClassID]) VALUES (N'HE150887', 1)
GO
INSERT [dbo].[ClassMember] ([StudentCode], [ClassID]) VALUES (N'HE150907', 1)
GO
INSERT [dbo].[ClassMember] ([StudentCode], [ClassID]) VALUES (N'HE150912', 2)
GO
INSERT [dbo].[ClassMember] ([StudentCode], [ClassID]) VALUES (N'HE150914', 1)
GO
INSERT [dbo].[ClassMember] ([StudentCode], [ClassID]) VALUES (N'HE150968', 2)
GO
INSERT [dbo].[ClassMember] ([StudentCode], [ClassID]) VALUES (N'HE151037', 2)
GO
INSERT [dbo].[ClassMember] ([StudentCode], [ClassID]) VALUES (N'HE151043', 1)
GO
INSERT [dbo].[ClassMember] ([StudentCode], [ClassID]) VALUES (N'HE151050', 2)
GO
INSERT [dbo].[ClassMember] ([StudentCode], [ClassID]) VALUES (N'HE151065', 1)
GO
INSERT [dbo].[ClassMember] ([StudentCode], [ClassID]) VALUES (N'HE151108', 2)
GO
INSERT [dbo].[ClassMember] ([StudentCode], [ClassID]) VALUES (N'HE151118', 1)
GO
INSERT [dbo].[ClassMember] ([StudentCode], [ClassID]) VALUES (N'HE151149', 1)
GO
INSERT [dbo].[ClassMember] ([StudentCode], [ClassID]) VALUES (N'HE151180', 1)
GO
INSERT [dbo].[ClassMember] ([StudentCode], [ClassID]) VALUES (N'HE151256', 2)
GO
INSERT [dbo].[ClassMember] ([StudentCode], [ClassID]) VALUES (N'HE151259', 2)
GO
INSERT [dbo].[ClassMember] ([StudentCode], [ClassID]) VALUES (N'HE151525', 1)
GO
INSERT [dbo].[ClassMember] ([StudentCode], [ClassID]) VALUES (N'HE153002', 2)
GO
INSERT [dbo].[ClassMember] ([StudentCode], [ClassID]) VALUES (N'HE153060', 1)
GO
INSERT [dbo].[ClassMember] ([StudentCode], [ClassID]) VALUES (N'HE153205', 1)
GO
INSERT [dbo].[ClassMember] ([StudentCode], [ClassID]) VALUES (N'HE153215', 2)
GO
INSERT [dbo].[ClassMember] ([StudentCode], [ClassID]) VALUES (N'HE153278', 2)
GO
INSERT [dbo].[ClassMember] ([StudentCode], [ClassID]) VALUES (N'HE153322', 1)
GO
INSERT [dbo].[ClassMember] ([StudentCode], [ClassID]) VALUES (N'HE153444', 2)
GO
INSERT [dbo].[ClassMember] ([StudentCode], [ClassID]) VALUES (N'HE153507', 2)
GO
INSERT [dbo].[ClassMember] ([StudentCode], [ClassID]) VALUES (N'HE153509', 1)
GO
INSERT [dbo].[ClassMember] ([StudentCode], [ClassID]) VALUES (N'HE153595', 1)
GO
INSERT [dbo].[ClassMember] ([StudentCode], [ClassID]) VALUES (N'HE153674', 2)
GO
INSERT [dbo].[ClassMember] ([StudentCode], [ClassID]) VALUES (N'HE153718', 1)
GO
INSERT [dbo].[ClassMember] ([StudentCode], [ClassID]) VALUES (N'HE160416', 1)
GO
INSERT [dbo].[ClassMember] ([StudentCode], [ClassID]) VALUES (N'HE160698', 1)
GO
INSERT [dbo].[ClassMember] ([StudentCode], [ClassID]) VALUES (N'HE163011', 1)
GO
SET IDENTITY_INSERT [dbo].[Instructor] ON 
GO
INSERT [dbo].[Instructor] ([InstructorID], [IName], [Username]) VALUES (1, N'Ngô Tùng Sơn', N'sont5')
GO
INSERT [dbo].[Instructor] ([InstructorID], [IName], [Username]) VALUES (2, N'Nguyễn Tất Trung', N'trungnt')
GO
INSERT [dbo].[Instructor] ([InstructorID], [IName], [Username]) VALUES (3, N'Phạm Ngọc Thọ', N'ThoPN3')
GO
INSERT [dbo].[Instructor] ([InstructorID], [IName], [Username]) VALUES (4, N'Đào Anh Hiển', N'Hienda')
GO
INSERT [dbo].[Instructor] ([InstructorID], [IName], [Username]) VALUES (5, N'Đào Thị Thanh', N'ThanhDT59')
GO
SET IDENTITY_INSERT [dbo].[Instructor] OFF
GO
INSERT [dbo].[Schedule] ([ID], [SubjectID], [ClassID], [SlotID], [Date]) VALUES (1, 2, 2, 1, CAST(N'2022-06-11' AS Date))
GO
INSERT [dbo].[Schedule] ([ID], [SubjectID], [ClassID], [SlotID], [Date]) VALUES (2, 3, 1, 2, CAST(N'2022-06-12' AS Date))
GO
INSERT [dbo].[Schedule] ([ID], [SubjectID], [ClassID], [SlotID], [Date]) VALUES (3, 1, 1, 4, CAST(N'2022-06-10' AS Date))
GO
INSERT [dbo].[Schedule] ([ID], [SubjectID], [ClassID], [SlotID], [Date]) VALUES (4, 1, 1, 5, CAST(N'2022-06-10' AS Date))
GO
INSERT [dbo].[Schedule] ([ID], [SubjectID], [ClassID], [SlotID], [Date]) VALUES (5, 4, 1, 4, CAST(N'2022-06-10' AS Date))
GO
INSERT [dbo].[Schedule] ([ID], [SubjectID], [ClassID], [SlotID], [Date]) VALUES (6, 4, 1, 5, CAST(N'2022-06-11' AS Date))
GO
INSERT [dbo].[Schedule] ([ID], [SubjectID], [ClassID], [SlotID], [Date]) VALUES (7, 5, 1, 1, CAST(N'2022-06-12' AS Date))
GO
INSERT [dbo].[Schedule] ([ID], [SubjectID], [ClassID], [SlotID], [Date]) VALUES (8, 2, 2, 1, CAST(N'2022-06-12' AS Date))
GO
INSERT [dbo].[Schedule] ([ID], [SubjectID], [ClassID], [SlotID], [Date]) VALUES (9, 3, 2, 3, CAST(N'2022-06-13' AS Date))
GO
INSERT [dbo].[Schedule] ([ID], [SubjectID], [ClassID], [SlotID], [Date]) VALUES (10, 1, 1, 4, CAST(N'2022-06-13' AS Date))
GO
INSERT [dbo].[Schedule] ([ID], [SubjectID], [ClassID], [SlotID], [Date]) VALUES (11, 4, 1, 4, CAST(N'2022-06-14' AS Date))
GO
INSERT [dbo].[Schedule] ([ID], [SubjectID], [ClassID], [SlotID], [Date]) VALUES (12, 4, 1, 5, CAST(N'2022-06-14' AS Date))
GO
INSERT [dbo].[Schedule] ([ID], [SubjectID], [ClassID], [SlotID], [Date]) VALUES (13, 2, 2, 1, CAST(N'2022-06-15' AS Date))
GO
INSERT [dbo].[Schedule] ([ID], [SubjectID], [ClassID], [SlotID], [Date]) VALUES (14, 3, 2, 3, CAST(N'2022-06-15' AS Date))
GO
INSERT [dbo].[Schedule] ([ID], [SubjectID], [ClassID], [SlotID], [Date]) VALUES (15, 1, 1, 4, CAST(N'2022-06-15' AS Date))
GO
INSERT [dbo].[Schedule] ([ID], [SubjectID], [ClassID], [SlotID], [Date]) VALUES (16, 4, 1, 4, CAST(N'2022-06-16' AS Date))
GO
INSERT [dbo].[Schedule] ([ID], [SubjectID], [ClassID], [SlotID], [Date]) VALUES (17, 2, 2, 1, CAST(N'2022-06-17' AS Date))
GO
INSERT [dbo].[Schedule] ([ID], [SubjectID], [ClassID], [SlotID], [Date]) VALUES (18, 3, 2, 3, CAST(N'2022-06-17' AS Date))
GO
INSERT [dbo].[Schedule] ([ID], [SubjectID], [ClassID], [SlotID], [Date]) VALUES (19, 1, 1, 4, CAST(N'2022-06-17' AS Date))
GO
INSERT [dbo].[Schedule] ([ID], [SubjectID], [ClassID], [SlotID], [Date]) VALUES (20, 5, 1, 1, CAST(N'2022-06-18' AS Date))
GO
INSERT [dbo].[Slot] ([SlotID], [SlotName], [Time]) VALUES (1, N'Slot 1', N'7:30-9:00')
GO
INSERT [dbo].[Slot] ([SlotID], [SlotName], [Time]) VALUES (2, N'Slot 2', N'9:10-10:40')
GO
INSERT [dbo].[Slot] ([SlotID], [SlotName], [Time]) VALUES (3, N'Slot 3', N'10:50-12:20')
GO
INSERT [dbo].[Slot] ([SlotID], [SlotName], [Time]) VALUES (4, N'Slot 4', N'12:50-14:20')
GO
INSERT [dbo].[Slot] ([SlotID], [SlotName], [Time]) VALUES (5, N'Slot 5', N'14:30-16:00')
GO
INSERT [dbo].[Slot] ([SlotID], [SlotName], [Time]) VALUES (6, N'Slot 6', N'16:10-17:40')
GO
INSERT [dbo].[Student] ([StudentCode], [FullName], [Image]) VALUES (N'	HE140027', N'Ngô Chí Bảo', N'https://i.ibb.co/MR0K7bC/Male.jpg')
GO
INSERT [dbo].[Student] ([StudentCode], [FullName], [Image]) VALUES (N'HA150108', N'Nguyễn Bảo Long', N'https://i.ibb.co/MR0K7bC/Male.jpg')
GO
INSERT [dbo].[Student] ([StudentCode], [FullName], [Image]) VALUES (N'HE130028', N'Vũ Tuấn Huy', N'https://i.ibb.co/MR0K7bC/Male.jpg')
GO
INSERT [dbo].[Student] ([StudentCode], [FullName], [Image]) VALUES (N'HE130221', N'Nguyễn Đức Tùng', N'https://i.ibb.co/MR0K7bC/Male.jpg')
GO
INSERT [dbo].[Student] ([StudentCode], [FullName], [Image]) VALUES (N'HE130321', N'Đỗ Bảo Tú', N'https://i.ibb.co/MR0K7bC/Male.jpg')
GO
INSERT [dbo].[Student] ([StudentCode], [FullName], [Image]) VALUES (N'HE130520', N'Phạm Quang Huy', N'https://i.ibb.co/MR0K7bC/Male.jpg')
GO
INSERT [dbo].[Student] ([StudentCode], [FullName], [Image]) VALUES (N'HE130632', N'Trần Minh Phong', N'https://i.ibb.co/MR0K7bC/Male.jpg')
GO
INSERT [dbo].[Student] ([StudentCode], [FullName], [Image]) VALUES (N'HE140145', N'Phan Hoàng Tùng', N'https://i.ibb.co/MR0K7bC/Male.jpg')
GO
INSERT [dbo].[Student] ([StudentCode], [FullName], [Image]) VALUES (N'HE140220', N'Trần Hải Long', N'https://i.ibb.co/MR0K7bC/Male.jpg')
GO
INSERT [dbo].[Student] ([StudentCode], [FullName], [Image]) VALUES (N'HE140253', N'Nguyễn Thế Hùng', N'https://i.ibb.co/MR0K7bC/Male.jpg')
GO
INSERT [dbo].[Student] ([StudentCode], [FullName], [Image]) VALUES (N'HE140465', N'Nguyễn Đức Duy', N'https://i.ibb.co/MR0K7bC/Male.jpg')
GO
INSERT [dbo].[Student] ([StudentCode], [FullName], [Image]) VALUES (N'HE140721', N'Hoàng Minh Đức', N'https://i.ibb.co/MR0K7bC/Male.jpg')
GO
INSERT [dbo].[Student] ([StudentCode], [FullName], [Image]) VALUES (N'HE140834', N'Đào Minh Nguyệt', N'https://i.ibb.co/rHx8Lmf/Famale.jpg')
GO
INSERT [dbo].[Student] ([StudentCode], [FullName], [Image]) VALUES (N'HE141023', N'Nguyễn Đức Kiên', N'https://i.ibb.co/MR0K7bC/Male.jpg')
GO
INSERT [dbo].[Student] ([StudentCode], [FullName], [Image]) VALUES (N'HE141090', N'Quách Mạnh Cường', N'https://i.ibb.co/MR0K7bC/Male.jpg')
GO
INSERT [dbo].[Student] ([StudentCode], [FullName], [Image]) VALUES (N'HE141206', N'Nguyễn Việt Hùng', N'https://i.ibb.co/MR0K7bC/Male.jpg')
GO
INSERT [dbo].[Student] ([StudentCode], [FullName], [Image]) VALUES (N'HE141363', N'Nguyễn Đăng Kiên', N'https://i.ibb.co/MR0K7bC/Male.jpg')
GO
INSERT [dbo].[Student] ([StudentCode], [FullName], [Image]) VALUES (N'HE141433', N'Nguyễn Đức Thịnh', N'https://i.ibb.co/MR0K7bC/Male.jpg')
GO
INSERT [dbo].[Student] ([StudentCode], [FullName], [Image]) VALUES (N'HE141555', N'Nguyễn Bá Tuấn Anh', N'https://i.ibb.co/MR0K7bC/Male.jpg')
GO
INSERT [dbo].[Student] ([StudentCode], [FullName], [Image]) VALUES (N'HE141571', N'Nguyễn Thế Phùng', N'https://i.ibb.co/MR0K7bC/Male.jpg')
GO
INSERT [dbo].[Student] ([StudentCode], [FullName], [Image]) VALUES (N'HE141740', N'Nguyễn Trung Hiếu', N'https://i.ibb.co/MR0K7bC/Male.jpg')
GO
INSERT [dbo].[Student] ([StudentCode], [FullName], [Image]) VALUES (N'HE150105', N'Hoàng Nhật Minh', N'https://i.ibb.co/MR0K7bC/Male.jpg')
GO
INSERT [dbo].[Student] ([StudentCode], [FullName], [Image]) VALUES (N'HE150247', N'Vũ Xuân Tùng', N'https://i.ibb.co/MR0K7bC/Male.jpg')
GO
INSERT [dbo].[Student] ([StudentCode], [FullName], [Image]) VALUES (N'HE150484', N'Nguyễn Anh Tuấn', N'https://i.ibb.co/MR0K7bC/Male.jpg')
GO
INSERT [dbo].[Student] ([StudentCode], [FullName], [Image]) VALUES (N'HE150499', N'Trần Công Thành', N'https://i.ibb.co/MR0K7bC/Male.jpg')
GO
INSERT [dbo].[Student] ([StudentCode], [FullName], [Image]) VALUES (N'HE150537', N'Nguyễn Đăng Quang', N'https://i.ibb.co/MR0K7bC/Male.jpg')
GO
INSERT [dbo].[Student] ([StudentCode], [FullName], [Image]) VALUES (N'HE150546', N'Trần Anh Khải', N'https://i.ibb.co/MR0K7bC/Male.jpg')
GO
INSERT [dbo].[Student] ([StudentCode], [FullName], [Image]) VALUES (N'HE150551', N'Vũ Thanh Tùng', N'https://i.ibb.co/MR0K7bC/Male.jpg')
GO
INSERT [dbo].[Student] ([StudentCode], [FullName], [Image]) VALUES (N'HE150664', N'Nguyễn Đắc Tài', N'https://i.ibb.co/MR0K7bC/Male.jpg')
GO
INSERT [dbo].[Student] ([StudentCode], [FullName], [Image]) VALUES (N'HE150887', N'Trần Trung Đức', N'https://i.ibb.co/MR0K7bC/Male.jpg')
GO
INSERT [dbo].[Student] ([StudentCode], [FullName], [Image]) VALUES (N'HE150907', N'Bùi Quang Cường', N'https://i.ibb.co/MR0K7bC/Male.jpg')
GO
INSERT [dbo].[Student] ([StudentCode], [FullName], [Image]) VALUES (N'HE150912', N'Nguyễn Danh Trung', N'https://i.ibb.co/MR0K7bC/Male.jpg')
GO
INSERT [dbo].[Student] ([StudentCode], [FullName], [Image]) VALUES (N'HE150914', N'Nguyễn Phúc Hưng', N'https://i.ibb.co/MR0K7bC/Male.jpg')
GO
INSERT [dbo].[Student] ([StudentCode], [FullName], [Image]) VALUES (N'HE150968', N'Nguyễn Quang Tú', N'https://i.ibb.co/MR0K7bC/Male.jpg')
GO
INSERT [dbo].[Student] ([StudentCode], [FullName], [Image]) VALUES (N'HE151037', N'Ngô Minh Trí', N'https://i.ibb.co/MR0K7bC/Male.jpg')
GO
INSERT [dbo].[Student] ([StudentCode], [FullName], [Image]) VALUES (N'HE151043', N'Nguyễn Xuân Lý', N'https://i.ibb.co/MR0K7bC/Male.jpg')
GO
INSERT [dbo].[Student] ([StudentCode], [FullName], [Image]) VALUES (N'HE151050', N'Đoàn Văn Đông', N'https://i.ibb.co/MR0K7bC/Male.jpg')
GO
INSERT [dbo].[Student] ([StudentCode], [FullName], [Image]) VALUES (N'HE151065', N'Lê Vũ Long', N'https://i.ibb.co/MR0K7bC/Male.jpg')
GO
INSERT [dbo].[Student] ([StudentCode], [FullName], [Image]) VALUES (N'HE151108', N'Nguyễn Khánh Tùng', N'https://i.ibb.co/MR0K7bC/Male.jpg')
GO
INSERT [dbo].[Student] ([StudentCode], [FullName], [Image]) VALUES (N'HE151118', N'Nguyễn Bá Quân', N'https://i.ibb.co/MR0K7bC/Male.jpg')
GO
INSERT [dbo].[Student] ([StudentCode], [FullName], [Image]) VALUES (N'HE151149', N'Nguyễn Văn Luật', N'https://i.ibb.co/MR0K7bC/Male.jpg')
GO
INSERT [dbo].[Student] ([StudentCode], [FullName], [Image]) VALUES (N'HE151180', N'Nguyễn Minh Hiếu', N'https://i.ibb.co/MR0K7bC/Male.jpg')
GO
INSERT [dbo].[Student] ([StudentCode], [FullName], [Image]) VALUES (N'HE151256', N'Đào Minh Đức', N'https://i.ibb.co/MR0K7bC/Male.jpg')
GO
INSERT [dbo].[Student] ([StudentCode], [FullName], [Image]) VALUES (N'HE151259', N'Trần Đại An ', N'https://i.ibb.co/MR0K7bC/Male.jpg')
GO
INSERT [dbo].[Student] ([StudentCode], [FullName], [Image]) VALUES (N'HE151525', N'Nguyễn Thị Thu Linh', N'https://i.ibb.co/rHx8Lmf/Famale.jpg')
GO
INSERT [dbo].[Student] ([StudentCode], [FullName], [Image]) VALUES (N'HE153002', N'Nguyễn Chí Hướng', N'https://i.ibb.co/MR0K7bC/Male.jpg')
GO
INSERT [dbo].[Student] ([StudentCode], [FullName], [Image]) VALUES (N'HE153060', N'Đỗ Quang Huy', N'https://i.ibb.co/MR0K7bC/Male.jpg')
GO
INSERT [dbo].[Student] ([StudentCode], [FullName], [Image]) VALUES (N'HE153205', N'Thành Hữu Ngân Giang', N'https://i.ibb.co/rHx8Lmf/Famale.jpg')
GO
INSERT [dbo].[Student] ([StudentCode], [FullName], [Image]) VALUES (N'HE153215', N'Đỗ Trung Hiếu', N'https://i.ibb.co/MR0K7bC/Male.jpg')
GO
INSERT [dbo].[Student] ([StudentCode], [FullName], [Image]) VALUES (N'HE153278', N'Dương Trung Hiếu', N'https://i.ibb.co/MR0K7bC/Male.jpg')
GO
INSERT [dbo].[Student] ([StudentCode], [FullName], [Image]) VALUES (N'HE153322', N'Chu Minh Quân', N'https://i.ibb.co/MR0K7bC/Male.jpg')
GO
INSERT [dbo].[Student] ([StudentCode], [FullName], [Image]) VALUES (N'HE153444', N'Lê Ngọc Sơn', N'https://i.ibb.co/MR0K7bC/Male.jpg')
GO
INSERT [dbo].[Student] ([StudentCode], [FullName], [Image]) VALUES (N'HE153507', N'Đặng Việt Thái', N'https://i.ibb.co/MR0K7bC/Male.jpg')
GO
INSERT [dbo].[Student] ([StudentCode], [FullName], [Image]) VALUES (N'HE153509', N'Lê Nhật Tân', N'https://i.ibb.co/MR0K7bC/Male.jpg')
GO
INSERT [dbo].[Student] ([StudentCode], [FullName], [Image]) VALUES (N'HE153595', N'Nguyễn Văn Kiệt', N'https://i.ibb.co/MR0K7bC/Male.jpg')
GO
INSERT [dbo].[Student] ([StudentCode], [FullName], [Image]) VALUES (N'HE153674', N'Cao Văn Cương', N'https://i.ibb.co/MR0K7bC/Male.jpg')
GO
INSERT [dbo].[Student] ([StudentCode], [FullName], [Image]) VALUES (N'HE153718', N'Nguyễn Thiện Thanh', N'https://i.ibb.co/MR0K7bC/Male.jpg')
GO
INSERT [dbo].[Student] ([StudentCode], [FullName], [Image]) VALUES (N'HE160416', N'Nguyễn Đăng Thịnh', N'https://i.ibb.co/MR0K7bC/Male.jpg')
GO
INSERT [dbo].[Student] ([StudentCode], [FullName], [Image]) VALUES (N'HE160698', N'Đỗ Hùng Sơn', N'https://i.ibb.co/MR0K7bC/Male.jpg')
GO
INSERT [dbo].[Student] ([StudentCode], [FullName], [Image]) VALUES (N'HE163011', N'Phí Tiến Đạt', N'https://i.ibb.co/MR0K7bC/Male.jpg')
GO
INSERT [dbo].[Subject] ([SubjectID], [SubjectName]) VALUES (1, N'Java Web Application Development (PRJ301)')
GO
INSERT [dbo].[Subject] ([SubjectID], [SubjectName]) VALUES (2, N'	Software Requirement (SWR302)')
GO
INSERT [dbo].[Subject] ([SubjectID], [SubjectName]) VALUES (3, N'Software Testing (SWT301)')
GO
INSERT [dbo].[Subject] ([SubjectID], [SubjectName]) VALUES (4, N'Basic Cross-Platform Application Programming With .NET (PRN211)')
GO
INSERT [dbo].[Subject] ([SubjectID], [SubjectName]) VALUES (5, N'Ethics in IT (ITE302c)')
GO
ALTER TABLE [dbo].[Attendance]  WITH CHECK ADD  CONSTRAINT [FK_Attendance_Schedule] FOREIGN KEY([ScheduleID])
REFERENCES [dbo].[Schedule] ([ID])
GO
ALTER TABLE [dbo].[Attendance] CHECK CONSTRAINT [FK_Attendance_Schedule]
GO
ALTER TABLE [dbo].[Attendance]  WITH CHECK ADD  CONSTRAINT [FK_Attendance_Student] FOREIGN KEY([StudentCode])
REFERENCES [dbo].[Student] ([StudentCode])
GO
ALTER TABLE [dbo].[Attendance] CHECK CONSTRAINT [FK_Attendance_Student]
GO
ALTER TABLE [dbo].[ClassMember]  WITH CHECK ADD  CONSTRAINT [FK_ClassMember_Class] FOREIGN KEY([ClassID])
REFERENCES [dbo].[Class] ([ClassID])
GO
ALTER TABLE [dbo].[ClassMember] CHECK CONSTRAINT [FK_ClassMember_Class]
GO
ALTER TABLE [dbo].[ClassMember]  WITH CHECK ADD  CONSTRAINT [FK_ClassMember_Student] FOREIGN KEY([StudentCode])
REFERENCES [dbo].[Student] ([StudentCode])
GO
ALTER TABLE [dbo].[ClassMember] CHECK CONSTRAINT [FK_ClassMember_Student]
GO
ALTER TABLE [dbo].[Schedule]  WITH CHECK ADD  CONSTRAINT [FK_Schedule_Class] FOREIGN KEY([ClassID])
REFERENCES [dbo].[Class] ([ClassID])
GO
ALTER TABLE [dbo].[Schedule] CHECK CONSTRAINT [FK_Schedule_Class]
GO
ALTER TABLE [dbo].[Schedule]  WITH CHECK ADD  CONSTRAINT [FK_Schedule_Slot] FOREIGN KEY([SlotID])
REFERENCES [dbo].[Slot] ([SlotID])
GO
ALTER TABLE [dbo].[Schedule] CHECK CONSTRAINT [FK_Schedule_Slot]
GO
ALTER TABLE [dbo].[Schedule]  WITH CHECK ADD  CONSTRAINT [FK_Schedule_Subject] FOREIGN KEY([SubjectID])
REFERENCES [dbo].[Subject] ([SubjectID])
GO
ALTER TABLE [dbo].[Schedule] CHECK CONSTRAINT [FK_Schedule_Subject]
GO
ALTER TABLE [dbo].[Supervise]  WITH CHECK ADD  CONSTRAINT [FK_Supervise_Instructor] FOREIGN KEY([InstructorID])
REFERENCES [dbo].[Instructor] ([InstructorID])
GO
ALTER TABLE [dbo].[Supervise] CHECK CONSTRAINT [FK_Supervise_Instructor]
GO
ALTER TABLE [dbo].[Supervise]  WITH CHECK ADD  CONSTRAINT [FK_Supervise_Schedule] FOREIGN KEY([ID])
REFERENCES [dbo].[Schedule] ([ID])
GO
ALTER TABLE [dbo].[Supervise] CHECK CONSTRAINT [FK_Supervise_Schedule]
GO
