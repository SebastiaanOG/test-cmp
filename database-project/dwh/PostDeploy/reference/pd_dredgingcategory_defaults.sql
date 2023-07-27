TRUNCATE TABLE [reference].[dredgingcategory_defaults]
GO
INSERT INTO [reference].[dredgingcategory_defaults]
    ([dredgingcategory]
    ,[default_dredgingcategory_duration]
    ,[default_days_to_startdate_of_work]
    ,[default_days_to_tenderdate]
    ,[default_winning_chance_%]
    ,[default_contract_value]
    ,[default_VO_contact_value])
VALUES
     (100000000     ,34,    90,         400,    19,        7,       6)
    ,(100000001     ,45,    170,        500,    17,        42,      30)
    ,(100000002     ,115,   200,        750,    15,        200,     100)
    ,(0             ,75,    150,        300,    18,        30,      20)
GO