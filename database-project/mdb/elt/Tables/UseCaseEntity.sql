CREATE TABLE [elt].[UseCaseEntity](
	[UseCaseCode] [nvarchar](50) NOT NULL,
	[SystemCode] [nvarchar](50) NOT NULL,
	[EntityName] [nvarchar](50) NOT NULL,
	[SchemaName] [nvarchar](50) NOT NULL,
	[Active] [bit] NULL,
	[CopyToRaw] [bit] DEFAULT 0 NOT NULL,
	[CopyToStg] [bit] DEFAULT 0 NOT NULL
)