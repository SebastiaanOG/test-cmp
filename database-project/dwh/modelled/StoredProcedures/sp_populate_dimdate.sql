create procedure [modelled].[sp_populate_dimdate]
--/*****************************************************
--* Deze procedure fills the dimension DimDate         *
--*                                                    *
--*****************************************************/
as
begin
declare
/* insert-variables for TargetTable DimDate */
 @Date                      date
,@Year                      int
,@quarterNumber             tinyint
,@QuarterName               nvarchar(15)
,@QuarterNameShort          nchar(3)
,@MonthNumber               tinyint
,@MonthName                 nvarchar(10)
,@MonthNameShort            nchar(3)
,@WeekNumber                tinyint
,@WeekNumberSunday          tinyint
,@Dayname                   nvarchar(10)
,@DayNameShort              nchar(2)
,@DayNumberYear             smallint
,@dayNumberMonth            tinyint
,@DayNumberMonthSuffix      nvarchar(10)
,@dayNumberWeek             tinyint
,@dayNumberWeekSunday       tinyint
,@DayOfWeekInMonth          VARCHAR(5)
,@DayOfWeekInYear           VARCHAR(5)
,@IndFirstDayOfMonth        VARCHAR(3)
,@IndLastDayOfMonth         VARCHAR(3)
,@IndWeekDay                VARCHAR(3)
,@IndWeekendDay             VARCHAR(3)
,@IndDutchHoliday           VARCHAR(3)
,@HolidayName               nvarchar(50)
,@YearQuarter               nvarchar(10)
,@YearMonth                 int
,@YearWeek                  int
,@YearWeekSunday            int
,@IndLeapYear               VARCHAR(3)
/* Variabeles */
,@StartYear                 int = 1800
,@LoopYear                  int
,@EndYear                   int = 2300
,@EasterDate                datetime
,@LoopDate                  date

-- starts only if there is no data in DimDate. --
if not exists (select top 1 pk_date from modelled.DimDate)

    set @LoopYear = @StartYear
    set @LoopDate = convert(date,convert(nchar(4),@LoopYear)+'0101',112)

    while @EndYear >= @LoopYear
        begin
            set @EasterDate = (SELECT * FROM [modelled].[fn_get_easter_date] (@LoopYear))
            while @LoopYear = Year(@LoopDate)
                begin
                    set @Year = @LoopYear
                    set @QuarterNumber = DATEPART(Q,@LoopDate)
                    set @QuarterName =
                    case
                        when @QuarterNumber = 1 then 'First Quarter'
                        when @QuarterNumber = 2 then 'Second Quarter'
                        when @QuarterNumber = 3 then 'Thirth Quarter'
                        when @QuarterNumber = 4 then 'Fourth Quarter'
                    end
                    set @QuarterNameShort =
                    case
                        when @QuarterNumber = 1 then 'Q1'
                        when @QuarterNumber = 2 then 'Q2'
                        when @QuarterNumber = 3 then 'Q3'
                        when @QuarterNumber = 4 then 'Q4'
                    end
                    set @MonthNumber = DATEPART(MM,@LoopDate)
                    set @MonthName = lower(DATENAME(MM,@LoopDate))
                    set @MonthNameShort = SUBSTRING(@MonthName,1,3)
                    set @WeekNumber = DATEPART(ISOWW, @LoopDate)
                    set @WeekNumberSunday = case when SUBSTRING((LOWER(DATENAME(WEEKDAY,@LoopDate))),1,2) = 'su' and DATEPART(DAYOFYear,@LoopDate) = 1 then 1
                                           when SUBSTRING((LOWER(DATENAME(WEEKDAY,@LoopDate))),1,2) = 'su' then DATEPART(ISOWW, @LoopDate) +  1
                                           else DATEPART(ISOWW, @LoopDate) end
                    set @Date = @LoopDate
                    set @dayName = LOWER(DATENAME(WEEKDAY,@LoopDate))
                    set @dayNameShort = SUBSTRING(@dayName,1,2)
                    set @dayNumberYear = DATEPART(DAYOFYear,@LoopDate)
                    set @dayNumberMonth = DATEPART(DAY,@LoopDate)
                    set @DayNumberMonthSuffix =  CASE
                        WHEN DATEPART(DD,@LoopDate) IN (11,12,13) THEN CAST(DATEPART(DD,@LoopDate) AS VARCHAR) + 'th'
                        WHEN RIGHT(DATEPART(DD,@LoopDate),1) = 1 THEN CAST(DATEPART(DD,@LoopDate) AS VARCHAR) + 'st'
                        WHEN RIGHT(DATEPART(DD,@LoopDate),1) = 2 THEN CAST(DATEPART(DD,@LoopDate) AS VARCHAR) + 'nd'
                        WHEN RIGHT(DATEPART(DD,@LoopDate),1) = 3 THEN CAST(DATEPART(DD,@LoopDate) AS VARCHAR) + 'rd'
                        ELSE CAST(DATEPART(DD,@LoopDate) AS VARCHAR) + 'th' end
                    set @dayNumberWeek = case when SUBSTRING(@dayName,1,2) = 'mo' then 1
                                              when SUBSTRING(@dayName,1,2) = 'tu' then 2
                                              when SUBSTRING(@dayName,1,2) = 'we' then 3
                                              when SUBSTRING(@dayName,1,2) = 'th' then 4
                                              when SUBSTRING(@dayName,1,2) = 'fr' then 5
                                              when SUBSTRING(@dayName,1,2) = 'sa' then 6
                                              when SUBSTRING(@dayName,1,2) = 'su' then 7 end
                    set @dayNumberWeekSunday = case when SUBSTRING(@dayName,1,2) = 'mo' then 2
                                              when SUBSTRING(@dayName,1,2) = 'tu' then 3
                                              when SUBSTRING(@dayName,1,2) = 'we' then 4
                                              when SUBSTRING(@dayName,1,2) = 'th' then 5
                                              when SUBSTRING(@dayName,1,2) = 'fr' then 6
                                              when SUBSTRING(@dayName,1,2) = 'sa' then 7
                                              when SUBSTRING(@dayName,1,2) = 'su' then 1 end
                    set @DayOfWeekInYear = CASE WHEN CEILING(@dayNumberYear/7.0)  IN (11,12,13) THEN convert(varchar,(CEILING(@dayNumberYear/7.0))) + 'th'
                             WHEN CEILING(@dayNumberYear/7.0) = 1 THEN convert(varchar,(CEILING(@dayNumberYear/7.0))) + 'st'
                             WHEN CEILING(@dayNumberYear/7.0) = 2 THEN convert(varchar,(CEILING(@dayNumberYear/7.0))) + 'nd'
                             WHEN CEILING(@dayNumberYear/7.0) = 3 THEN convert(varchar,(CEILING(@dayNumberYear/7.0))) + 'rd'
                             ELSE convert(varchar,(CEILING(@dayNumberYear/7.0))) + 'th' end
                    set @DayOfWeekInMonth = CASE WHEN CEILING(@dayNumberMonth/7.0) IN (11,12,13) THEN convert(varchar,(CEILING(@dayNumberMonth/7.0))) + 'th'
                                                WHEN CEILING(@dayNumberMonth/7.0) = 1 THEN convert(varchar,(CEILING(@dayNumberMonth/7.0))) + 'st'
                                                WHEN CEILING(@dayNumberMonth/7.0) = 2 THEN convert(varchar,(CEILING(@dayNumberMonth/7.0))) + 'nd'
                                                WHEN CEILING(@dayNumberMonth/7.0) = 3 THEN convert(varchar,(CEILING(@dayNumberMonth/7.0))) + 'rd'
                                                ELSE convert(varchar,(CEILING(@dayNumberMonth/7.0))) + 'th' end
                    if @dayNumberMonth = 1 set @IndFirstdayofMonth = 'yes' else set @IndFirstdayofMonth = 'no'
                    if DATEPART(DAY,DATEADD(D,1,@LoopDate)) = 1 set @IndLastDayOfMonth = 'yes' else set @IndLastdayofMonth = 'no'
                    if SUBSTRING(@dayName,1,2) in ('sa', 'su') set @IndWeekendday = 'yes' else set @IndWeekendday = 'no'
                    if SUBSTRING(@dayName,1,2) not in ('sa', 'su')  set @IndWeekday = 'yes' else set @IndWeekday = 'no'
                    --- Holiday's ---
                    set @IndDutchHoliday = 'no'
                    set @HolidayName = NULL
                    if (@dayNumberYear = 1 and @MonthNumber = 1) set @IndDutchHoliday = 'yes'
                    if (@dayNumberYear = 1 and @MonthNumber = 1) set @HolidayName = 'New Year''s Day'
                    if @LoopDate = @EasterDate set @IndDutchHoliday = 'yes'
                    if @LoopDate = @EasterDate set @HolidayName = 'Easter day'
                    if @LoopDate = DATEADD(D,1,@EasterDate) set @IndDutchHoliday = 'yes'
                    if @LoopDate = DATEADD(D,1,@EasterDate) set @HolidayName = 'Easter Monday'
                    if (@dayNumberMonth = 27 and @MonthNumber = 4 and SUBSTRING((LOWER(DATENAME(WEEKDAY,@LoopDate))),1,2) <> 'su') set  @IndDutchHoliday = 'yes'
                    if (@dayNumberMonth = 27 and @MonthNumber = 4 and SUBSTRING((LOWER(DATENAME(WEEKDAY,@LoopDate))),1,2) <> 'su') set @HolidayName = 'King''s day'
                    if (@dayNumberMonth = 26 and @MonthNumber = 4 and SUBSTRING((LOWER(DATENAME(WEEKDAY,dateadd(day, 1,@LoopDate)))),1,2) = 'su') set  @IndDutchHoliday = 'yes'
                    if (@dayNumberMonth = 26 and @MonthNumber = 4 and SUBSTRING((LOWER(DATENAME(WEEKDAY,dateadd(day, 1,@LoopDate)))),1,2) = 'su') set @HolidayName = 'King''s day'
                    if (@dayNumberMonth = 5 and @MonthNumber = 5 and @Year % 5 = 0) set  @IndDutchHoliday = 'yes'
                    if (@dayNumberMonth = 5 and @MonthNumber = 5 and @Year % 5 = 0) set  @HolidayName = 'Liberation Day'

                    if @LoopDate = DATEADD(D,-2,@EasterDate) set @IndDutchHoliday = 'no' -- No day off
                    if @LoopDate = DATEADD(D,-2,@EasterDate) set @HolidayName = 'Good Friday'
                    if @LoopDate = DATEADD(D,39,@EasterDate) set @IndDutchHoliday = 'yes'
                    if @LoopDate = DATEADD(D,39,@EasterDate) set @HolidayName = 'Ascension Day'
                    if @LoopDate = DATEADD(D,49,@EasterDate) set @IndDutchHoliday = 'yes'
                    if @LoopDate = DATEADD(D,49,@EasterDate) set @HolidayName = '1st day of Pentecost'
                    if @LoopDate = DATEADD(D,50,@EasterDate) set @IndDutchHoliday = 'yes'
                    if @LoopDate = DATEADD(D,50,@EasterDate) set @HolidayName = '2st day of Pentecost'
                    if (@dayNumberMonth = 25 and @MonthNumber = 12) set @IndDutchHoliday = 'yes'
                    if (@dayNumberMonth = 25 and @MonthNumber = 12) set @HolidayName = '1ste Christmas Day'
                    if (@dayNumberMonth = 26 and @MonthNumber = 12) set @IndDutchHoliday = 'yes'
                    if (@dayNumberMonth = 26 and @MonthNumber = 12) set @HolidayName = '1ste Christmas Day'
                    if (@dayNumberMonth = 14 and @MonthNumber = 2)  set @IndDutchHoliday = 'no' -- No day off
                    if (@dayNumberMonth = 14 and @MonthNumber = 2)  set @HolidayName = 'Valentine''s Day'
                    if (@dayNumberMonth = 31 and @MonthNumber = 10)  set @IndDutchHoliday = 'no' -- No day off
                    if (@dayNumberMonth = 31 and @MonthNumber = 10)  set @HolidayName = 'Haloween'
                    set @YearQuarter = (year(@LoopDate) * 100) + DATEPART(Q,@LoopDate)
                    set @YearMonth =  (year(@LoopDate) * 100) + month(@LoopDate)
                    if @MonthNumber = 1 and @WeekNumber > 50
                        begin
                            set @YearWeek = (year(@LoopDate) - 1) * 100 + @WeekNumber
                            set @YearWeekSunday = (year(@LoopDate) - 1) * 100 + @WeekNumberSunday
                        end
                    else
                        begin
                            set @YearWeek = year(@LoopDate)  * 100 + @WeekNumber
                            set @YearWeekSunday = (year(@LoopDate) - 1) * 100 + @WeekNumberSunday
                        end
                    set @IndLeapYear = 'no'
                    if ((@Year % 4 = 0 and @Year % 100 != 0) or (@Year % 400 = 0)) set @IndLeapYear = 'yes'
                    INSERT INTO modelled.[DimDate]
                       ( [pk_date]
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
                        )
                    VALUES
                        (@date
                        ,@Year
                        ,@QuarterNumber
                        ,@QuarterName
                        ,@QuarterNameShort
                        ,@MonthNumber
                        ,@MonthName
                        ,@MonthNameShort
                        ,@WeekNumber
                        ,@WeekNumberSunday
                        ,@dayName
                        ,@dayNameShort
                        ,@dayNumberYear
                        ,@dayNumberMonth
                        ,@DayNumberMonthSuffix
                        ,@dayNumberWeek
                        ,@dayNumberWeekSunday
                        ,@DayOfWeekInMonth
                        ,@DayOfWeekInYear
                        ,@IndFirstDayOfMonth
                        ,@IndLastDayOfMonth
                        ,@IndWeekendDay
                        ,@IndWeekDay
                        ,@IndDutchHoliday
                        ,@HolidayName
                        ,@YearQuarter
                        ,@YearMonth
                        ,@YearWeek
                        ,@YearWeekSunday
                        ,@IndLeapYear
                        )

                    set @LoopDate = DATEADD(DD,1,@LoopDate)
                end
            set @LoopYear = DATEPART(YEAR,@LoopDate)
        end
    end