CREATE TABLE [reference].[contractvalue_class](
    [pk_ref_contractalue_class] [int] IDENTITY(1,1) NOT NULL,
    [contractvalue_class] [nvarchar](30) NOT NULL,
    [total_VO_share_from] bigint NULL,
    [total_VO_share_to] bigint NULL,
    [sort_contractvalue_class] int NULL,
 CONSTRAINT [pk_ref_contractalue_class] PRIMARY KEY CLUSTERED
(
    [pk_ref_contractalue_class] ASC
) WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, FILLFACTOR = 100, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF, DATA_COMPRESSION = PAGE) ON [PRIMARY]
) ON [PRIMARY]
GO