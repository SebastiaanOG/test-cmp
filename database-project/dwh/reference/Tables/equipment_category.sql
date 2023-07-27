CREATE TABLE [reference].[equipment_category](
	[pk_ref_equipment_category] [int] IDENTITY(1,1) NOT NULL,
	[equipment_scope] [nvarchar](100) NOT NULL,
	[equipment_activity] [nvarchar](100) NULL,
	[equipment_product_services] [nvarchar](100) NULL,
	[equipment_category] [nvarchar](100) NULL,
 CONSTRAINT [pk_ref_equipment_category] PRIMARY KEY CLUSTERED 
(
	[pk_ref_equipment_category] ASC
) WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, FILLFACTOR = 100, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF, DATA_COMPRESSION = PAGE) ON [PRIMARY]
) ON [PRIMARY]
GO