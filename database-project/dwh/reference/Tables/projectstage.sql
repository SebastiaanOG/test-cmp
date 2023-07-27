CREATE TABLE [reference].[projectstage](
	[pk_ref_projectstage] [int] IDENTITY(1,1) NOT NULL,
	[AK_statuscode] [nvarchar](30) NOT NULL,
	[AK_typetender] [nvarchar](30) NULL,
	[projectstage] [nvarchar](30) NULL,
 CONSTRAINT [pk_ref_projectstage] PRIMARY KEY CLUSTERED 
(
	[pk_ref_projectstage] ASC
) WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, FILLFACTOR = 100, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF, DATA_COMPRESSION = PAGE) ON [PRIMARY]
) ON [PRIMARY]
GO