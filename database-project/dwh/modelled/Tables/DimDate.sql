CREATE TABLE modelled.DimDate (
   [pk_date]  int   NOT NULL
,  [date]  date   NOT NULL
,  [year]  int   NOT NULL
,  [quarter_number]  tinyint   NOT NULL
,  [quarter_name]  nvarchar(15)   NOT NULL
,  [quarter_nameshort]  nvarchar(3)   NOT NULL
,  [month_number]  tinyint   NOT NULL
,  [month_name]  nvarchar(10)   NOT NULL
,  [month_name_short]  nvarchar(3)   NOT NULL
,  [week_number]  tinyint   NOT NULL
,  [week_number_sunday]  tinyint   NOT NULL
,  [day_name]  nvarchar(10)   NOT NULL
,  [day_name_short]  nvarchar(2)   NOT NULL
,  [day_number_in_year]  smallint   NOT NULL
,  [day_number_in_month]  smallint   NOT NULL
,  [day_in_month_suffix]  nvarchar(10)   NOT NULL
,  [day_numer_in_week]  tinyint   NOT NULL
,  [day_numer_in_week_sunday]  tinyint   NOT NULL
,  [weekday_in_month]  nvarchar(5)   NOT NULL
,  [weekday_in_year]  nvarchar(5)   NOT NULL
,  [indicator_first_day_of_the_month]  bit   NOT NULL
,  [indicator_last_day_of_the_month]  bit   NOT NULL
,  [indicator_weekendday]  bit   NOT NULL
,  [indicator_weekday]  bit   NOT NULL
,  [indicator_dutch_holiday]  bit   NOT NULL
,  [holiday_name]  nvarchar(50)   NULL
,  [year_and_quarter]  nvarchar(10)   NOT NULL
,  [year_and_month]  int   NOT NULL
,  [year_and_week]  int   NOT NULL
,  [year_and_week_sunday]  int   NOT NULL
,  [indicator_leap year]  bit   NOT NULL
, CONSTRAINT [PK_modelled.DimDate] PRIMARY KEY CLUSTERED ([pk_date] ASC) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100, DATA_COMPRESSION = PAGE) )
GO

GO

exec sys.sp_addextendedproperty @name=N'Table Name', @value=N'DimDate', @level0type=N'SCHEMA', @level0name=modelled, @level1type=N'TABLE', @level1name=DimDate
GO
exec sys.sp_addextendedproperty @name=N'Table Type', @value=N'Dimension', @level0type=N'SCHEMA', @level0name=modelled, @level1type=N'TABLE', @level1name=DimDate
GO
exec sys.sp_addextendedproperty @name=N'Display Name', @value=N'Date', @level0type=N'SCHEMA', @level0name=modelled, @level1type=N'TABLE', @level1name=DimDate
GO
exec sys.sp_addextendedproperty @name=N'Database Schema', @value=N'modelled', @level0type=N'SCHEMA', @level0name=modelled, @level1type=N'TABLE', @level1name=DimDate
GO
GO

exec sys.sp_addextendedproperty @name=N'Display Name', @value=N'Primary key dimension = ISO-date', @level0type=N'SCHEMA', @level0name=N'modelled', @level1type=N'TABLE', @level1name=N'DimDate', @level2type=N'COLUMN', @level2name=N'pk_date'; 
GO
exec sys.sp_addextendedproperty @name=N'Display Name', @value=N'date', @level0type=N'SCHEMA', @level0name=N'modelled', @level1type=N'TABLE', @level1name=N'DimDate', @level2type=N'COLUMN', @level2name=N'date'; 
GO
exec sys.sp_addextendedproperty @name=N'Display Name', @value=N'year', @level0type=N'SCHEMA', @level0name=N'modelled', @level1type=N'TABLE', @level1name=N'DimDate', @level2type=N'COLUMN', @level2name=N'year'; 
GO
exec sys.sp_addextendedproperty @name=N'Display Name', @value=N'quarter number', @level0type=N'SCHEMA', @level0name=N'modelled', @level1type=N'TABLE', @level1name=N'DimDate', @level2type=N'COLUMN', @level2name=N'quarter_number'; 
GO
exec sys.sp_addextendedproperty @name=N'Display Name', @value=N'quarter name', @level0type=N'SCHEMA', @level0name=N'modelled', @level1type=N'TABLE', @level1name=N'DimDate', @level2type=N'COLUMN', @level2name=N'quarter_name'; 
GO
exec sys.sp_addextendedproperty @name=N'Display Name', @value=N'quarter nameshort', @level0type=N'SCHEMA', @level0name=N'modelled', @level1type=N'TABLE', @level1name=N'DimDate', @level2type=N'COLUMN', @level2name=N'quarter_nameshort'; 
GO
exec sys.sp_addextendedproperty @name=N'Display Name', @value=N'month number', @level0type=N'SCHEMA', @level0name=N'modelled', @level1type=N'TABLE', @level1name=N'DimDate', @level2type=N'COLUMN', @level2name=N'month_number'; 
GO
exec sys.sp_addextendedproperty @name=N'Display Name', @value=N'month name', @level0type=N'SCHEMA', @level0name=N'modelled', @level1type=N'TABLE', @level1name=N'DimDate', @level2type=N'COLUMN', @level2name=N'month_name'; 
GO
exec sys.sp_addextendedproperty @name=N'Display Name', @value=N'month name short', @level0type=N'SCHEMA', @level0name=N'modelled', @level1type=N'TABLE', @level1name=N'DimDate', @level2type=N'COLUMN', @level2name=N'month_name_short'; 
GO
exec sys.sp_addextendedproperty @name=N'Display Name', @value=N'iso week number', @level0type=N'SCHEMA', @level0name=N'modelled', @level1type=N'TABLE', @level1name=N'DimDate', @level2type=N'COLUMN', @level2name=N'week_number'; 
GO
exec sys.sp_addextendedproperty @name=N'Display Name', @value=N'week number sunday', @level0type=N'SCHEMA', @level0name=N'modelled', @level1type=N'TABLE', @level1name=N'DimDate', @level2type=N'COLUMN', @level2name=N'week_number_sunday'; 
GO
exec sys.sp_addextendedproperty @name=N'Display Name', @value=N'day name', @level0type=N'SCHEMA', @level0name=N'modelled', @level1type=N'TABLE', @level1name=N'DimDate', @level2type=N'COLUMN', @level2name=N'day_name'; 
GO
exec sys.sp_addextendedproperty @name=N'Display Name', @value=N'day name short', @level0type=N'SCHEMA', @level0name=N'modelled', @level1type=N'TABLE', @level1name=N'DimDate', @level2type=N'COLUMN', @level2name=N'day_name_short'; 
GO
exec sys.sp_addextendedproperty @name=N'Display Name', @value=N'day number in year', @level0type=N'SCHEMA', @level0name=N'modelled', @level1type=N'TABLE', @level1name=N'DimDate', @level2type=N'COLUMN', @level2name=N'day_number_in_year'; 
GO
exec sys.sp_addextendedproperty @name=N'Display Name', @value=N'day number in month', @level0type=N'SCHEMA', @level0name=N'modelled', @level1type=N'TABLE', @level1name=N'DimDate', @level2type=N'COLUMN', @level2name=N'day_number_in_month'; 
GO
exec sys.sp_addextendedproperty @name=N'Display Name', @value=N'day in month suffix', @level0type=N'SCHEMA', @level0name=N'modelled', @level1type=N'TABLE', @level1name=N'DimDate', @level2type=N'COLUMN', @level2name=N'day_in_month_suffix'; 
GO
exec sys.sp_addextendedproperty @name=N'Display Name', @value=N'day numer in week ISO', @level0type=N'SCHEMA', @level0name=N'modelled', @level1type=N'TABLE', @level1name=N'DimDate', @level2type=N'COLUMN', @level2name=N'day_numer_in_week'; 
GO
exec sys.sp_addextendedproperty @name=N'Display Name', @value=N'day numer in week Sunday', @level0type=N'SCHEMA', @level0name=N'modelled', @level1type=N'TABLE', @level1name=N'DimDate', @level2type=N'COLUMN', @level2name=N'day_numer_in_week_sunday'; 
GO
exec sys.sp_addextendedproperty @name=N'Display Name', @value=N'weekday in month', @level0type=N'SCHEMA', @level0name=N'modelled', @level1type=N'TABLE', @level1name=N'DimDate', @level2type=N'COLUMN', @level2name=N'weekday_in_month'; 
GO
exec sys.sp_addextendedproperty @name=N'Display Name', @value=N'weekday in year', @level0type=N'SCHEMA', @level0name=N'modelled', @level1type=N'TABLE', @level1name=N'DimDate', @level2type=N'COLUMN', @level2name=N'weekday_in_year'; 
GO
exec sys.sp_addextendedproperty @name=N'Display Name', @value=N'indicator first day of the month', @level0type=N'SCHEMA', @level0name=N'modelled', @level1type=N'TABLE', @level1name=N'DimDate', @level2type=N'COLUMN', @level2name=N'indicator_first_day_of_the_month'; 
GO
exec sys.sp_addextendedproperty @name=N'Display Name', @value=N'indicator last day of the month', @level0type=N'SCHEMA', @level0name=N'modelled', @level1type=N'TABLE', @level1name=N'DimDate', @level2type=N'COLUMN', @level2name=N'indicator_last_day_of_the_month'; 
GO
exec sys.sp_addextendedproperty @name=N'Display Name', @value=N'indicator weekendday', @level0type=N'SCHEMA', @level0name=N'modelled', @level1type=N'TABLE', @level1name=N'DimDate', @level2type=N'COLUMN', @level2name=N'indicator_weekendday'; 
GO
exec sys.sp_addextendedproperty @name=N'Display Name', @value=N'indicator weekday', @level0type=N'SCHEMA', @level0name=N'modelled', @level1type=N'TABLE', @level1name=N'DimDate', @level2type=N'COLUMN', @level2name=N'indicator_weekday'; 
GO
exec sys.sp_addextendedproperty @name=N'Display Name', @value=N'indicator dutch holiday', @level0type=N'SCHEMA', @level0name=N'modelled', @level1type=N'TABLE', @level1name=N'DimDate', @level2type=N'COLUMN', @level2name=N'indicator_dutch_holiday'; 
GO
exec sys.sp_addextendedproperty @name=N'Display Name', @value=N'Holiday name', @level0type=N'SCHEMA', @level0name=N'modelled', @level1type=N'TABLE', @level1name=N'DimDate', @level2type=N'COLUMN', @level2name=N'holiday_name'; 
GO
exec sys.sp_addextendedproperty @name=N'Display Name', @value=N'year and quarter', @level0type=N'SCHEMA', @level0name=N'modelled', @level1type=N'TABLE', @level1name=N'DimDate', @level2type=N'COLUMN', @level2name=N'year_and_quarter'; 
GO
exec sys.sp_addextendedproperty @name=N'Display Name', @value=N'year and month', @level0type=N'SCHEMA', @level0name=N'modelled', @level1type=N'TABLE', @level1name=N'DimDate', @level2type=N'COLUMN', @level2name=N'year_and_month'; 
GO
exec sys.sp_addextendedproperty @name=N'Display Name', @value=N'year and week ISO', @level0type=N'SCHEMA', @level0name=N'modelled', @level1type=N'TABLE', @level1name=N'DimDate', @level2type=N'COLUMN', @level2name=N'year_and_week'; 
GO
exec sys.sp_addextendedproperty @name=N'Display Name', @value=N'year and week Sunday', @level0type=N'SCHEMA', @level0name=N'modelled', @level1type=N'TABLE', @level1name=N'DimDate', @level2type=N'COLUMN', @level2name=N'year_and_week_sunday'; 
GO
exec sys.sp_addextendedproperty @name=N'Display Name', @value=N'indicator leap year', @level0type=N'SCHEMA', @level0name=N'modelled', @level1type=N'TABLE', @level1name=N'DimDate', @level2type=N'COLUMN', @level2name=N'indicator_leap year'; 
GO
exec sys.sp_addextendedproperty @name=N'Description', @value=N'Primary key dimension = ISO-date', @level0type=N'SCHEMA', @level0name=N'modelled', @level1type=N'TABLE', @level1name=N'DimDate', @level2type=N'COLUMN', @level2name=N'pk_date'; 
GO
exec sys.sp_addextendedproperty @name=N'Description', @value=N'date', @level0type=N'SCHEMA', @level0name=N'modelled', @level1type=N'TABLE', @level1name=N'DimDate', @level2type=N'COLUMN', @level2name=N'date'; 
GO
exec sys.sp_addextendedproperty @name=N'Description', @value=N'year', @level0type=N'SCHEMA', @level0name=N'modelled', @level1type=N'TABLE', @level1name=N'DimDate', @level2type=N'COLUMN', @level2name=N'year'; 
GO
exec sys.sp_addextendedproperty @name=N'Description', @value=N'quarter number', @level0type=N'SCHEMA', @level0name=N'modelled', @level1type=N'TABLE', @level1name=N'DimDate', @level2type=N'COLUMN', @level2name=N'quarter_number'; 
GO
exec sys.sp_addextendedproperty @name=N'Description', @value=N'First,Second..', @level0type=N'SCHEMA', @level0name=N'modelled', @level1type=N'TABLE', @level1name=N'DimDate', @level2type=N'COLUMN', @level2name=N'quarter_name'; 
GO
exec sys.sp_addextendedproperty @name=N'Description', @value=N'quarter nameshort', @level0type=N'SCHEMA', @level0name=N'modelled', @level1type=N'TABLE', @level1name=N'DimDate', @level2type=N'COLUMN', @level2name=N'quarter_nameshort'; 
GO
exec sys.sp_addextendedproperty @name=N'Description', @value=N'month number', @level0type=N'SCHEMA', @level0name=N'modelled', @level1type=N'TABLE', @level1name=N'DimDate', @level2type=N'COLUMN', @level2name=N'month_number'; 
GO
exec sys.sp_addextendedproperty @name=N'Description', @value=N'January, February etc', @level0type=N'SCHEMA', @level0name=N'modelled', @level1type=N'TABLE', @level1name=N'DimDate', @level2type=N'COLUMN', @level2name=N'month_name'; 
GO
exec sys.sp_addextendedproperty @name=N'Description', @value=N'Jan, Feb etc', @level0type=N'SCHEMA', @level0name=N'modelled', @level1type=N'TABLE', @level1name=N'DimDate', @level2type=N'COLUMN', @level2name=N'month_name_short'; 
GO
exec sys.sp_addextendedproperty @name=N'Description', @value=N'iso week number (week starts on Monday)', @level0type=N'SCHEMA', @level0name=N'modelled', @level1type=N'TABLE', @level1name=N'DimDate', @level2type=N'COLUMN', @level2name=N'week_number'; 
GO
exec sys.sp_addextendedproperty @name=N'Description', @value=N'week number derived from ISO-week, week starts on Sunday', @level0type=N'SCHEMA', @level0name=N'modelled', @level1type=N'TABLE', @level1name=N'DimDate', @level2type=N'COLUMN', @level2name=N'week_number_sunday'; 
GO
exec sys.sp_addextendedproperty @name=N'Description', @value=N'Contains name of the day, Sunday, Monday ', @level0type=N'SCHEMA', @level0name=N'modelled', @level1type=N'TABLE', @level1name=N'DimDate', @level2type=N'COLUMN', @level2name=N'day_name'; 
GO
exec sys.sp_addextendedproperty @name=N'Description', @value=N'day name short', @level0type=N'SCHEMA', @level0name=N'modelled', @level1type=N'TABLE', @level1name=N'DimDate', @level2type=N'COLUMN', @level2name=N'day_name_short'; 
GO
exec sys.sp_addextendedproperty @name=N'Description', @value=N'day number in year', @level0type=N'SCHEMA', @level0name=N'modelled', @level1type=N'TABLE', @level1name=N'DimDate', @level2type=N'COLUMN', @level2name=N'day_number_in_year'; 
GO
exec sys.sp_addextendedproperty @name=N'Description', @value=N'Field will hold day number of Month', @level0type=N'SCHEMA', @level0name=N'modelled', @level1type=N'TABLE', @level1name=N'DimDate', @level2type=N'COLUMN', @level2name=N'day_number_in_month'; 
GO
exec sys.sp_addextendedproperty @name=N'Description', @value=N'Apply suffix as 1st, 2nd ,3rd etc', @level0type=N'SCHEMA', @level0name=N'modelled', @level1type=N'TABLE', @level1name=N'DimDate', @level2type=N'COLUMN', @level2name=N'day_in_month_suffix'; 
GO
exec sys.sp_addextendedproperty @name=N'Description', @value=N'First Day Monday = 1 and Sunday=7', @level0type=N'SCHEMA', @level0name=N'modelled', @level1type=N'TABLE', @level1name=N'DimDate', @level2type=N'COLUMN', @level2name=N'day_numer_in_week'; 
GO
exec sys.sp_addextendedproperty @name=N'Description', @value=N'First Day Sunday=1 and Saturday=7', @level0type=N'SCHEMA', @level0name=N'modelled', @level1type=N'TABLE', @level1name=N'DimDate', @level2type=N'COLUMN', @level2name=N'day_numer_in_week_sunday'; 
GO
exec sys.sp_addextendedproperty @name=N'Description', @value=N'1st Monday or 2nd Monday in Month', @level0type=N'SCHEMA', @level0name=N'modelled', @level1type=N'TABLE', @level1name=N'DimDate', @level2type=N'COLUMN', @level2name=N'weekday_in_month'; 
GO
exec sys.sp_addextendedproperty @name=N'Description', @value=N'1st Monday or 2nd Monday in Year', @level0type=N'SCHEMA', @level0name=N'modelled', @level1type=N'TABLE', @level1name=N'DimDate', @level2type=N'COLUMN', @level2name=N'weekday_in_year'; 
GO
exec sys.sp_addextendedproperty @name=N'Description', @value=N'indicator first day of the month', @level0type=N'SCHEMA', @level0name=N'modelled', @level1type=N'TABLE', @level1name=N'DimDate', @level2type=N'COLUMN', @level2name=N'indicator_first_day_of_the_month'; 
GO
exec sys.sp_addextendedproperty @name=N'Description', @value=N'indicator last day of the month', @level0type=N'SCHEMA', @level0name=N'modelled', @level1type=N'TABLE', @level1name=N'DimDate', @level2type=N'COLUMN', @level2name=N'indicator_last_day_of_the_month'; 
GO
exec sys.sp_addextendedproperty @name=N'Description', @value=N'indicator weekendday', @level0type=N'SCHEMA', @level0name=N'modelled', @level1type=N'TABLE', @level1name=N'DimDate', @level2type=N'COLUMN', @level2name=N'indicator_weekendday'; 
GO
exec sys.sp_addextendedproperty @name=N'Description', @value=N'indicator weekday', @level0type=N'SCHEMA', @level0name=N'modelled', @level1type=N'TABLE', @level1name=N'DimDate', @level2type=N'COLUMN', @level2name=N'indicator_weekday'; 
GO
exec sys.sp_addextendedproperty @name=N'Description', @value=N'indicator dutch holiday', @level0type=N'SCHEMA', @level0name=N'modelled', @level1type=N'TABLE', @level1name=N'DimDate', @level2type=N'COLUMN', @level2name=N'indicator_dutch_holiday'; 
GO
exec sys.sp_addextendedproperty @name=N'Description', @value=N'Name of Holiday', @level0type=N'SCHEMA', @level0name=N'modelled', @level1type=N'TABLE', @level1name=N'DimDate', @level2type=N'COLUMN', @level2name=N'holiday_name'; 
GO
exec sys.sp_addextendedproperty @name=N'Description', @value=N'2020-Q2, 2020-Q2', @level0type=N'SCHEMA', @level0name=N'modelled', @level1type=N'TABLE', @level1name=N'DimDate', @level2type=N'COLUMN', @level2name=N'year_and_quarter'; 
GO
exec sys.sp_addextendedproperty @name=N'Description', @value=N'202002, 202010 ', @level0type=N'SCHEMA', @level0name=N'modelled', @level1type=N'TABLE', @level1name=N'DimDate', @level2type=N'COLUMN', @level2name=N'year_and_month'; 
GO
exec sys.sp_addextendedproperty @name=N'Description', @value=N'202001, 202052 (week starts on Monday)', @level0type=N'SCHEMA', @level0name=N'modelled', @level1type=N'TABLE', @level1name=N'DimDate', @level2type=N'COLUMN', @level2name=N'year_and_week'; 
GO
exec sys.sp_addextendedproperty @name=N'Description', @value=N'202001, 202052 (week starts on Sunday)', @level0type=N'SCHEMA', @level0name=N'modelled', @level1type=N'TABLE', @level1name=N'DimDate', @level2type=N'COLUMN', @level2name=N'year_and_week_sunday'; 
GO
exec sys.sp_addextendedproperty @name=N'Description', @value=N'indicator leap year', @level0type=N'SCHEMA', @level0name=N'modelled', @level1type=N'TABLE', @level1name=N'DimDate', @level2type=N'COLUMN', @level2name=N'indicator_leap year'; 
GO
exec sys.sp_addextendedproperty @name=N'Example Values', @value=N'20230528', @level0type=N'SCHEMA', @level0name=N'modelled', @level1type=N'TABLE', @level1name=N'DimDate', @level2type=N'COLUMN', @level2name=N'pk_date'; 
GO
exec sys.sp_addextendedproperty @name=N'Example Values', @value=N'28-09-2023', @level0type=N'SCHEMA', @level0name=N'modelled', @level1type=N'TABLE', @level1name=N'DimDate', @level2type=N'COLUMN', @level2name=N'date'; 
GO
exec sys.sp_addextendedproperty @name=N'Example Values', @value=N'2023', @level0type=N'SCHEMA', @level0name=N'modelled', @level1type=N'TABLE', @level1name=N'DimDate', @level2type=N'COLUMN', @level2name=N'year'; 
GO
exec sys.sp_addextendedproperty @name=N'Example Values', @value=N'3', @level0type=N'SCHEMA', @level0name=N'modelled', @level1type=N'TABLE', @level1name=N'DimDate', @level2type=N'COLUMN', @level2name=N'quarter_number'; 
GO
exec sys.sp_addextendedproperty @name=N'Example Values', @value=N'third quarter', @level0type=N'SCHEMA', @level0name=N'modelled', @level1type=N'TABLE', @level1name=N'DimDate', @level2type=N'COLUMN', @level2name=N'quarter_name'; 
GO
exec sys.sp_addextendedproperty @name=N'Example Values', @value=N'Q3', @level0type=N'SCHEMA', @level0name=N'modelled', @level1type=N'TABLE', @level1name=N'DimDate', @level2type=N'COLUMN', @level2name=N'quarter_nameshort'; 
GO
exec sys.sp_addextendedproperty @name=N'Example Values', @value=N'9', @level0type=N'SCHEMA', @level0name=N'modelled', @level1type=N'TABLE', @level1name=N'DimDate', @level2type=N'COLUMN', @level2name=N'month_number'; 
GO
exec sys.sp_addextendedproperty @name=N'Example Values', @value=N'September', @level0type=N'SCHEMA', @level0name=N'modelled', @level1type=N'TABLE', @level1name=N'DimDate', @level2type=N'COLUMN', @level2name=N'month_name'; 
GO
exec sys.sp_addextendedproperty @name=N'Example Values', @value=N'Sept', @level0type=N'SCHEMA', @level0name=N'modelled', @level1type=N'TABLE', @level1name=N'DimDate', @level2type=N'COLUMN', @level2name=N'month_name_short'; 
GO
exec sys.sp_addextendedproperty @name=N'Example Values', @value=N'39', @level0type=N'SCHEMA', @level0name=N'modelled', @level1type=N'TABLE', @level1name=N'DimDate', @level2type=N'COLUMN', @level2name=N'week_number'; 
GO
exec sys.sp_addextendedproperty @name=N'Example Values', @value=N'39', @level0type=N'SCHEMA', @level0name=N'modelled', @level1type=N'TABLE', @level1name=N'DimDate', @level2type=N'COLUMN', @level2name=N'week_number_sunday'; 
GO
exec sys.sp_addextendedproperty @name=N'Example Values', @value=N'Monday', @level0type=N'SCHEMA', @level0name=N'modelled', @level1type=N'TABLE', @level1name=N'DimDate', @level2type=N'COLUMN', @level2name=N'day_name'; 
GO
exec sys.sp_addextendedproperty @name=N'Example Values', @value=N'MON', @level0type=N'SCHEMA', @level0name=N'modelled', @level1type=N'TABLE', @level1name=N'DimDate', @level2type=N'COLUMN', @level2name=N'day_name_short'; 
GO
exec sys.sp_addextendedproperty @name=N'Example Values', @value=N'45', @level0type=N'SCHEMA', @level0name=N'modelled', @level1type=N'TABLE', @level1name=N'DimDate', @level2type=N'COLUMN', @level2name=N'day_number_in_year'; 
GO
exec sys.sp_addextendedproperty @name=N'Example Values', @value=N'29', @level0type=N'SCHEMA', @level0name=N'modelled', @level1type=N'TABLE', @level1name=N'DimDate', @level2type=N'COLUMN', @level2name=N'day_number_in_month'; 
GO
exec sys.sp_addextendedproperty @name=N'Example Values', @value=N'29', @level0type=N'SCHEMA', @level0name=N'modelled', @level1type=N'TABLE', @level1name=N'DimDate', @level2type=N'COLUMN', @level2name=N'day_in_month_suffix'; 
GO
exec sys.sp_addextendedproperty @name=N'Example Values', @value=N'2', @level0type=N'SCHEMA', @level0name=N'modelled', @level1type=N'TABLE', @level1name=N'DimDate', @level2type=N'COLUMN', @level2name=N'day_numer_in_week'; 
GO
exec sys.sp_addextendedproperty @name=N'Example Values', @value=N'2', @level0type=N'SCHEMA', @level0name=N'modelled', @level1type=N'TABLE', @level1name=N'DimDate', @level2type=N'COLUMN', @level2name=N'day_numer_in_week_sunday'; 
GO
exec sys.sp_addextendedproperty @name=N'Example Values', @value=N'2', @level0type=N'SCHEMA', @level0name=N'modelled', @level1type=N'TABLE', @level1name=N'DimDate', @level2type=N'COLUMN', @level2name=N'weekday_in_month'; 
GO
exec sys.sp_addextendedproperty @name=N'Example Values', @value=N'2', @level0type=N'SCHEMA', @level0name=N'modelled', @level1type=N'TABLE', @level1name=N'DimDate', @level2type=N'COLUMN', @level2name=N'weekday_in_year'; 
GO
exec sys.sp_addextendedproperty @name=N'Example Values', @value=N'1', @level0type=N'SCHEMA', @level0name=N'modelled', @level1type=N'TABLE', @level1name=N'DimDate', @level2type=N'COLUMN', @level2name=N'indicator_first_day_of_the_month'; 
GO
exec sys.sp_addextendedproperty @name=N'Example Values', @value=N'0', @level0type=N'SCHEMA', @level0name=N'modelled', @level1type=N'TABLE', @level1name=N'DimDate', @level2type=N'COLUMN', @level2name=N'indicator_last_day_of_the_month'; 
GO
exec sys.sp_addextendedproperty @name=N'Example Values', @value=N'1', @level0type=N'SCHEMA', @level0name=N'modelled', @level1type=N'TABLE', @level1name=N'DimDate', @level2type=N'COLUMN', @level2name=N'indicator_weekendday'; 
GO
exec sys.sp_addextendedproperty @name=N'Example Values', @value=N'1', @level0type=N'SCHEMA', @level0name=N'modelled', @level1type=N'TABLE', @level1name=N'DimDate', @level2type=N'COLUMN', @level2name=N'indicator_weekday'; 
GO
exec sys.sp_addextendedproperty @name=N'Example Values', @value=N'1', @level0type=N'SCHEMA', @level0name=N'modelled', @level1type=N'TABLE', @level1name=N'DimDate', @level2type=N'COLUMN', @level2name=N'indicator_dutch_holiday'; 
GO
exec sys.sp_addextendedproperty @name=N'Example Values', @value=N'202303', @level0type=N'SCHEMA', @level0name=N'modelled', @level1type=N'TABLE', @level1name=N'DimDate', @level2type=N'COLUMN', @level2name=N'year_and_quarter'; 
GO
exec sys.sp_addextendedproperty @name=N'Example Values', @value=N'202309', @level0type=N'SCHEMA', @level0name=N'modelled', @level1type=N'TABLE', @level1name=N'DimDate', @level2type=N'COLUMN', @level2name=N'year_and_month'; 
GO
exec sys.sp_addextendedproperty @name=N'Example Values', @value=N'202335', @level0type=N'SCHEMA', @level0name=N'modelled', @level1type=N'TABLE', @level1name=N'DimDate', @level2type=N'COLUMN', @level2name=N'year_and_week'; 
GO
exec sys.sp_addextendedproperty @name=N'Example Values', @value=N'202335', @level0type=N'SCHEMA', @level0name=N'modelled', @level1type=N'TABLE', @level1name=N'DimDate', @level2type=N'COLUMN', @level2name=N'year_and_week_sunday'; 
GO
exec sys.sp_addextendedproperty @name=N'Example Values', @value=N'1', @level0type=N'SCHEMA', @level0name=N'modelled', @level1type=N'TABLE', @level1name=N'DimDate', @level2type=N'COLUMN', @level2name=N'indicator_leap year'; 
GO
exec sys.sp_addextendedproperty @name=N'Source System', @value=N'Derived in ETL', @level0type=N'SCHEMA', @level0name=N'modelled', @level1type=N'TABLE', @level1name=N'DimDate', @level2type=N'COLUMN', @level2name=N'pk_date'; 
GO
exec sys.sp_addextendedproperty @name=N'Source System', @value=N'Derived in ETL', @level0type=N'SCHEMA', @level0name=N'modelled', @level1type=N'TABLE', @level1name=N'DimDate', @level2type=N'COLUMN', @level2name=N'date'; 
GO
exec sys.sp_addextendedproperty @name=N'Source System', @value=N'Derived in ETL', @level0type=N'SCHEMA', @level0name=N'modelled', @level1type=N'TABLE', @level1name=N'DimDate', @level2type=N'COLUMN', @level2name=N'year'; 
GO
exec sys.sp_addextendedproperty @name=N'Source System', @value=N'Derived in ETL', @level0type=N'SCHEMA', @level0name=N'modelled', @level1type=N'TABLE', @level1name=N'DimDate', @level2type=N'COLUMN', @level2name=N'quarter_number'; 
GO
exec sys.sp_addextendedproperty @name=N'Source System', @value=N'Derived in ETL', @level0type=N'SCHEMA', @level0name=N'modelled', @level1type=N'TABLE', @level1name=N'DimDate', @level2type=N'COLUMN', @level2name=N'quarter_name'; 
GO
exec sys.sp_addextendedproperty @name=N'Source System', @value=N'Derived in ETL', @level0type=N'SCHEMA', @level0name=N'modelled', @level1type=N'TABLE', @level1name=N'DimDate', @level2type=N'COLUMN', @level2name=N'quarter_nameshort'; 
GO
exec sys.sp_addextendedproperty @name=N'Source System', @value=N'Derived in ETL', @level0type=N'SCHEMA', @level0name=N'modelled', @level1type=N'TABLE', @level1name=N'DimDate', @level2type=N'COLUMN', @level2name=N'month_number'; 
GO
exec sys.sp_addextendedproperty @name=N'Source System', @value=N'Derived in ETL', @level0type=N'SCHEMA', @level0name=N'modelled', @level1type=N'TABLE', @level1name=N'DimDate', @level2type=N'COLUMN', @level2name=N'month_name'; 
GO
exec sys.sp_addextendedproperty @name=N'Source System', @value=N'Derived in ETL', @level0type=N'SCHEMA', @level0name=N'modelled', @level1type=N'TABLE', @level1name=N'DimDate', @level2type=N'COLUMN', @level2name=N'month_name_short'; 
GO
exec sys.sp_addextendedproperty @name=N'Source System', @value=N'Derived in ETL', @level0type=N'SCHEMA', @level0name=N'modelled', @level1type=N'TABLE', @level1name=N'DimDate', @level2type=N'COLUMN', @level2name=N'week_number'; 
GO
exec sys.sp_addextendedproperty @name=N'Source System', @value=N'Derived in ETL', @level0type=N'SCHEMA', @level0name=N'modelled', @level1type=N'TABLE', @level1name=N'DimDate', @level2type=N'COLUMN', @level2name=N'week_number_sunday'; 
GO
exec sys.sp_addextendedproperty @name=N'Source System', @value=N'Derived in ETL', @level0type=N'SCHEMA', @level0name=N'modelled', @level1type=N'TABLE', @level1name=N'DimDate', @level2type=N'COLUMN', @level2name=N'day_name'; 
GO
exec sys.sp_addextendedproperty @name=N'Source System', @value=N'Derived in ETL', @level0type=N'SCHEMA', @level0name=N'modelled', @level1type=N'TABLE', @level1name=N'DimDate', @level2type=N'COLUMN', @level2name=N'day_name_short'; 
GO
exec sys.sp_addextendedproperty @name=N'Source System', @value=N'Derived in ETL', @level0type=N'SCHEMA', @level0name=N'modelled', @level1type=N'TABLE', @level1name=N'DimDate', @level2type=N'COLUMN', @level2name=N'day_number_in_year'; 
GO
exec sys.sp_addextendedproperty @name=N'Source System', @value=N'Derived in ETL', @level0type=N'SCHEMA', @level0name=N'modelled', @level1type=N'TABLE', @level1name=N'DimDate', @level2type=N'COLUMN', @level2name=N'day_number_in_month'; 
GO
exec sys.sp_addextendedproperty @name=N'Source System', @value=N'Derived in ETL', @level0type=N'SCHEMA', @level0name=N'modelled', @level1type=N'TABLE', @level1name=N'DimDate', @level2type=N'COLUMN', @level2name=N'day_in_month_suffix'; 
GO
exec sys.sp_addextendedproperty @name=N'Source System', @value=N'Derived in ETL', @level0type=N'SCHEMA', @level0name=N'modelled', @level1type=N'TABLE', @level1name=N'DimDate', @level2type=N'COLUMN', @level2name=N'day_numer_in_week'; 
GO
exec sys.sp_addextendedproperty @name=N'Source System', @value=N'Derived in ETL', @level0type=N'SCHEMA', @level0name=N'modelled', @level1type=N'TABLE', @level1name=N'DimDate', @level2type=N'COLUMN', @level2name=N'day_numer_in_week_sunday'; 
GO
exec sys.sp_addextendedproperty @name=N'Source System', @value=N'Derived in ETL', @level0type=N'SCHEMA', @level0name=N'modelled', @level1type=N'TABLE', @level1name=N'DimDate', @level2type=N'COLUMN', @level2name=N'weekday_in_month'; 
GO
exec sys.sp_addextendedproperty @name=N'Source System', @value=N'Derived in ETL', @level0type=N'SCHEMA', @level0name=N'modelled', @level1type=N'TABLE', @level1name=N'DimDate', @level2type=N'COLUMN', @level2name=N'weekday_in_year'; 
GO
exec sys.sp_addextendedproperty @name=N'Source System', @value=N'Derived in ETL', @level0type=N'SCHEMA', @level0name=N'modelled', @level1type=N'TABLE', @level1name=N'DimDate', @level2type=N'COLUMN', @level2name=N'indicator_first_day_of_the_month'; 
GO
exec sys.sp_addextendedproperty @name=N'Source System', @value=N'Derived in ETL', @level0type=N'SCHEMA', @level0name=N'modelled', @level1type=N'TABLE', @level1name=N'DimDate', @level2type=N'COLUMN', @level2name=N'indicator_last_day_of_the_month'; 
GO
exec sys.sp_addextendedproperty @name=N'Source System', @value=N'Derived in ETL', @level0type=N'SCHEMA', @level0name=N'modelled', @level1type=N'TABLE', @level1name=N'DimDate', @level2type=N'COLUMN', @level2name=N'indicator_weekendday'; 
GO
exec sys.sp_addextendedproperty @name=N'Source System', @value=N'Derived in ETL', @level0type=N'SCHEMA', @level0name=N'modelled', @level1type=N'TABLE', @level1name=N'DimDate', @level2type=N'COLUMN', @level2name=N'indicator_weekday'; 
GO
exec sys.sp_addextendedproperty @name=N'Source System', @value=N'Derived in ETL', @level0type=N'SCHEMA', @level0name=N'modelled', @level1type=N'TABLE', @level1name=N'DimDate', @level2type=N'COLUMN', @level2name=N'indicator_dutch_holiday'; 
GO
exec sys.sp_addextendedproperty @name=N'Source System', @value=N'Derived in ETL', @level0type=N'SCHEMA', @level0name=N'modelled', @level1type=N'TABLE', @level1name=N'DimDate', @level2type=N'COLUMN', @level2name=N'year_and_quarter'; 
GO
exec sys.sp_addextendedproperty @name=N'Source System', @value=N'Derived in ETL', @level0type=N'SCHEMA', @level0name=N'modelled', @level1type=N'TABLE', @level1name=N'DimDate', @level2type=N'COLUMN', @level2name=N'year_and_month'; 
GO
exec sys.sp_addextendedproperty @name=N'Source System', @value=N'Derived in ETL', @level0type=N'SCHEMA', @level0name=N'modelled', @level1type=N'TABLE', @level1name=N'DimDate', @level2type=N'COLUMN', @level2name=N'year_and_week'; 
GO
exec sys.sp_addextendedproperty @name=N'Source System', @value=N'Derived in ETL', @level0type=N'SCHEMA', @level0name=N'modelled', @level1type=N'TABLE', @level1name=N'DimDate', @level2type=N'COLUMN', @level2name=N'year_and_week_sunday'; 
GO
exec sys.sp_addextendedproperty @name=N'Source System', @value=N'Derived in ETL', @level0type=N'SCHEMA', @level0name=N'modelled', @level1type=N'TABLE', @level1name=N'DimDate', @level2type=N'COLUMN', @level2name=N'indicator_leap year'; 
GO