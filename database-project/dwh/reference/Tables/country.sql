CREATE TABLE [reference].[country](
	[pk_ref_country] [int] IDENTITY(1,1) NOT NULL,
	[country] [nvarchar](100) NOT NULL,
	[region_NL] [nvarchar](100) NULL,
	[region_DR] [nvarchar](100) NULL,
	[region_OW] [nvarchar](100) NULL,
	[region_OF] [nvarchar](100) NULL,
	[subregion_OF] [nvarchar](100) NULL,
CONSTRAINT [pk_ref_country] PRIMARY KEY CLUSTERED 
(
	[pk_ref_country] ASC
) WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, FILLFACTOR = 100, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF, DATA_COMPRESSION = PAGE) ON [PRIMARY]
) ON [PRIMARY]
GO