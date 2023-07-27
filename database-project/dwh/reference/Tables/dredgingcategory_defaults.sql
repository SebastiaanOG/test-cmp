CREATE TABLE [reference].[dredgingcategory_defaults](
    [pk_ref_dredgingcategory_defaults] [int] IDENTITY(1,1) NOT NULL,
    [dredgingcategory] int NOT NULL,
    [default_dredgingcategory_duration] int NULL,
    [default_days_to_startdate_of_work] int NULL,
    [default_days_to_tenderdate] int NULL,
    [default_winning_chance_%] int NULL,
    [default_contract_value] int NULL,
    [default_VO_contact_value] int NULL,
CONSTRAINT [pk_ref_dredgingcategory_defaults] PRIMARY KEY CLUSTERED 
(
    [pk_ref_dredgingcategory_defaults] ASC
) WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, FILLFACTOR = 100, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF, DATA_COMPRESSION = PAGE) ON [PRIMARY]
) ON [PRIMARY]
GO