CREATE TABLE [elt].[ProcessedTables](
    [TableID] [int] IDENTITY(1,1) NOT NULL,
    [Level] [int] NOT NULL,
    [EntityName] [nvarchar](100) NOT NULL,
    [UseCaseCode] [nvarchar] (50) NOT NULL,
    [StoredProcedureName] [nvarchar](200) NOT NULL,
    [Schema] [varchar](50) DEFAULT 'processed' NOT NULL,
    [Active] [bit] NOT NULL,
    [Comment] [nvarchar](255) NULL
) ON [PRIMARY];