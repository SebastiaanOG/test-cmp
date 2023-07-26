TRUNCATE TABLE [reference].[contractvalue_class]
GO
INSERT INTO [reference].[contractvalue_class]
    ([contractvalue_class]
    ,[total_VO_share_from]
    ,[total_VO_share_to]
    ,[sort_contractvalue_class])
VALUES
     ('0-1',	    0	        ,1000000	    ,0)
    ,('1-5',	    1000000	    ,5000000	    ,1)
    ,('5-25',	    5000000	    ,25000000	    ,2)
    ,('25-50',	    25000000	,50000000	    ,3)
    ,('50-100',	    50000000	,100000000	    ,4)
    ,('100-250',    100000000	,250000000	    ,5)
    ,('250-500',    250000000	,500000000	    ,6)
    ,('500-750',    500000000	,750000000	    ,7)
    ,('>750',	    750000000	,999999999999  	,8)
GO