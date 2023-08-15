--CREATE VIEW [dbo].[DimDateView]
  --AS 
  
  SELECT
    pk_date
    ,[year]
    ,[quarter_number]
    ,[quarter_name]
    ,[quarter_nameshort]
    ,[month_number]
    ,[month_name]
    ,[month_name_short]
    ,[week_number]
    ,[week_number_sunday]
    ,[day_name]
    ,[day_name_short]
    ,[day_number_in_year]
    ,[day_number_in_month]
    ,[day_in_month_suffix]
    ,[day_numer_in_week]
    ,[day_numer_in_week_sunday]
    ,[weekday_in_month]
    ,[weekday_in_year]
    ,[indicator_first_day_of_the_month]
    ,[indicator_last_day_of_the_month]
    ,[indicator_weekendday]
    ,[indicator_weekday]
    ,[indicator_dutch_holiday]
    ,[holiday_name]
    ,[year_and_quarter]
    ,[year_and_month]
    ,[year_and_week]
    ,[year_and_week_sunday]
    ,[indicator_leap year]
    ,DATEDIFF(day, GETDATE(), pk_date)              AS [day_index]
    ,CASE 
        WHEN DATEDIFF(day, GETDATE(), pk_date) = 0 THEN 'Today'
        WHEN DATEDIFF(day, GETDATE(), pk_date) = 1 THEN 'Tomorrow'
        WHEN DATEDIFF(day, GETDATE(), pk_date) = -1 THEN 'Yesterday'
    END                                                                                                                         AS [day_index_description]

    , year_and_week - ((year(GETDATE()) - 1) * 100 + DATEPART(ISOWW, GETDATE()))                                                AS [week_index]
    ,year_and_week_sunday - (year(GETDATE()) - 1) * 100 + 
        case 
            when SUBSTRING((LOWER(DATENAME(WEEKDAY,GETDATE()))),1,2) = 'su' and DATEPART(DAYOFYear,GETDATE()) = 1 then 1
            when SUBSTRING((LOWER(DATENAME(WEEKDAY,GETDATE()))),1,2) = 'su' then DATEPART(ISOWW, GETDATE()) +  1
            else DATEPART(ISOWW, GETDATE()) 
        end                                                                                                                     AS [week_sunday_index]


    ,(12 * year + month_number) - (12 * YEAR(GETDATE()) + DATEPART(MM,GETDATE()))                                               AS [month_index]

    ,CASE
        WHEN (12 * year + month_number) - (12 * YEAR(GETDATE()) + DATEPART(MM,GETDATE())) = 0 THEN 'This Month'
        WHEN (12 * year + month_number) - (12 * YEAR(GETDATE()) + DATEPART(MM,GETDATE())) = -1 THEN 'Last Month'
        WHEN (12 * year + month_number) - (12 * YEAR(GETDATE()) + DATEPART(MM,GETDATE())) = 1 THEN 'Next Month'
    END                                                                                                                         AS [month_index_description]

    ,(4 * year + quarter_number) - (4 * YEAR(GETDATE()) + DATEPART(Q,GETDATE()))                                                AS [quarter_index]

    ,CASE
        WHEN (4 * year + quarter_number) - (4 * YEAR(GETDATE()) + DATEPART(Q,GETDATE())) = 0 THEN 'This Quarter'
        WHEN (4 * year + quarter_number) - (4 * YEAR(GETDATE()) + DATEPART(Q,GETDATE())) = -1 THEN 'Last Quarter'
        WHEN (4 * year + quarter_number) - (4 * YEAR(GETDATE()) + DATEPART(Q,GETDATE())) = 1 THEN 'Next Quarter'
    END                                                                                                                         AS [quarter_index_description]

    ,[year] - YEAR(GETDATE())                                                                                                   AS [year_index]

    ,CASE
        WHEN [year] - YEAR(GETDATE()) = 0 THEN 'This Quarter'
        WHEN [year] - YEAR(GETDATE()) = -1 THEN 'Last Quarter'
        WHEN [year] - YEAR(GETDATE()) = 1 THEN 'Next Quarter'
    END                                                                                                                         AS [year_index_description]

   
  
  FROM 
    modelled.DimDate

    WHERE DATEDIFF(day, GETDATE(), pk_date) BETWEEN -1000 AND 400
