USE [DB_Mcf]
GO
/****** Object:  Table [dbo].[ms_storage_location]    Script Date: 19/11/2024 11:45:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ms_storage_location](
	[location_id] [int] IDENTITY(1,1) NOT NULL,
	[location_name] [varchar](50) NULL,
 CONSTRAINT [PK_ms_storage_location] PRIMARY KEY CLUSTERED 
(
	[location_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ms_user]    Script Date: 19/11/2024 11:45:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ms_user](
	[user_id] [int] IDENTITY(1,1) NOT NULL,
	[user_name] [varchar](50) NULL,
	[password] [varchar](50) NULL,
	[is_active] [bit] NULL,
 CONSTRAINT [PK_ms_user] PRIMARY KEY CLUSTERED 
(
	[user_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tr_bpkb]    Script Date: 19/11/2024 11:45:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tr_bpkb](
	[agreement_number] [int] IDENTITY(1,1) NOT NULL,
	[bpkb_no] [varchar](100) NULL,
	[branch_id] [nchar](10) NULL,
	[bpkb_date] [datetime] NULL,
	[faktur_no] [varchar](100) NULL,
	[faktur_date] [datetime] NULL,
	[location_id] [int] NULL,
	[police_no] [varchar](50) NULL,
	[bpkb_date_in] [datetime] NULL,
	[created_by] [varchar](20) NULL,
	[created_on] [datetime] NULL,
	[last_updated_by] [varchar](20) NULL,
	[last_updated_on] [datetime] NULL,
 CONSTRAINT [PK_tr_bpkb] PRIMARY KEY CLUSTERED 
(
	[agreement_number] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[ms_storage_location] ON 

INSERT [dbo].[ms_storage_location] ([location_id], [location_name]) VALUES (1, N'Jakarta')
SET IDENTITY_INSERT [dbo].[ms_storage_location] OFF
GO
SET IDENTITY_INSERT [dbo].[ms_user] ON 

INSERT [dbo].[ms_user] ([user_id], [user_name], [password], [is_active]) VALUES (1, N'asep', N'123', 1)
SET IDENTITY_INSERT [dbo].[ms_user] OFF
GO
SET IDENTITY_INSERT [dbo].[tr_bpkb] ON 

INSERT [dbo].[tr_bpkb] ([agreement_number], [bpkb_no], [branch_id], [bpkb_date], [faktur_no], [faktur_date], [location_id], [police_no], [bpkb_date_in], [created_by], [created_on], [last_updated_by], [last_updated_on]) VALUES (1, N'123Abc', N'123       ', CAST(N'2024-11-18T00:00:00.000' AS DateTime), N'F123', CAST(N'2024-11-18T00:00:00.000' AS DateTime), 1, N'B 123 A', CAST(N'2024-11-18T00:00:00.000' AS DateTime), N'asep', CAST(N'2024-11-18T21:55:47.000' AS DateTime), NULL, NULL)
INSERT [dbo].[tr_bpkb] ([agreement_number], [bpkb_no], [branch_id], [bpkb_date], [faktur_no], [faktur_date], [location_id], [police_no], [bpkb_date_in], [created_by], [created_on], [last_updated_by], [last_updated_on]) VALUES (2, N'123123', N'123       ', CAST(N'2024-11-19T00:00:00.000' AS DateTime), N'F1234', CAST(N'2024-11-19T00:00:00.000' AS DateTime), 1, N'B 123 Z', CAST(N'2024-11-19T00:00:00.000' AS DateTime), N'asep', CAST(N'2024-11-19T07:55:58.000' AS DateTime), NULL, NULL)
INSERT [dbo].[tr_bpkb] ([agreement_number], [bpkb_no], [branch_id], [bpkb_date], [faktur_no], [faktur_date], [location_id], [police_no], [bpkb_date_in], [created_by], [created_on], [last_updated_by], [last_updated_on]) VALUES (3, N'123123', N'FD123     ', CAST(N'2024-11-19T00:00:00.000' AS DateTime), N'F1234', CAST(N'2024-11-19T00:00:00.000' AS DateTime), 1, N'B 123 Z', CAST(N'2024-11-19T00:00:00.000' AS DateTime), N'asep', CAST(N'2024-11-19T07:59:28.000' AS DateTime), NULL, NULL)
INSERT [dbo].[tr_bpkb] ([agreement_number], [bpkb_no], [branch_id], [bpkb_date], [faktur_no], [faktur_date], [location_id], [police_no], [bpkb_date_in], [created_by], [created_on], [last_updated_by], [last_updated_on]) VALUES (4, N'34234', N'X123      ', CAST(N'2024-11-19T00:00:00.000' AS DateTime), N'F34324', CAST(N'2024-11-19T00:00:00.000' AS DateTime), 1, N'B 12321 R', CAST(N'2024-11-19T00:00:00.000' AS DateTime), N'asep', CAST(N'2024-11-19T08:01:44.000' AS DateTime), NULL, NULL)
INSERT [dbo].[tr_bpkb] ([agreement_number], [bpkb_no], [branch_id], [bpkb_date], [faktur_no], [faktur_date], [location_id], [police_no], [bpkb_date_in], [created_by], [created_on], [last_updated_by], [last_updated_on]) VALUES (5, N'123123', N'X123      ', CAST(N'2024-11-19T00:00:00.000' AS DateTime), N'F1234', CAST(N'2024-11-19T00:00:00.000' AS DateTime), 1, N'B 123 Z', CAST(N'2024-11-19T00:00:00.000' AS DateTime), N'asep', CAST(N'2024-11-19T11:02:46.000' AS DateTime), NULL, NULL)
INSERT [dbo].[tr_bpkb] ([agreement_number], [bpkb_no], [branch_id], [bpkb_date], [faktur_no], [faktur_date], [location_id], [police_no], [bpkb_date_in], [created_by], [created_on], [last_updated_by], [last_updated_on]) VALUES (6, N'5452', N'X123      ', CAST(N'2024-11-19T00:00:00.000' AS DateTime), N'F1234', CAST(N'2024-11-19T00:00:00.000' AS DateTime), 0, N'B 123 Z', CAST(N'2024-11-19T00:00:00.000' AS DateTime), N'asep', CAST(N'2024-11-19T11:41:02.000' AS DateTime), NULL, NULL)
SET IDENTITY_INSERT [dbo].[tr_bpkb] OFF
GO
