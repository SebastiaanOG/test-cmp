﻿CREATE TABLE [etl].[MetadataStructure] (
    [SystemCode]             NVARCHAR (30)  NOT NULL,
    [SystemName]             NVARCHAR (64)  NOT NULL,
    [SchemaName]             NVARCHAR (50)  NOT NULL,
    [EntityName]             NVARCHAR (64)  NOT NULL,
    [Name]                   NVARCHAR (128) NOT NULL,
    [SemanticName]           NVARCHAR (128) NULL,
    [DataType]               NVARCHAR (16)  NOT NULL,
    [CharacterMaximumLength] BIGINT         NULL,
    [IsNullable]             NVARCHAR (4)   NOT NULL,
    [OrdinalPosition]        INT            NOT NULL,
    [NumericPrecision]       INT            NULL,
    [NumericScale]           INT            NULL,
    [DatetimeCulture]        NVARCHAR (64)  NULL,
    [DatetimeFormat]         NVARCHAR (64)  NULL,
    [IsActive]               BIT            NULL,
    [IsPrimaryKey]           INT            NULL,
    [PrimaryKeyOrdinal]      INT            NULL,
    [IsHistory]              BIT            DEFAULT ((1)) NOT NULL,
    [LastModifiedDate]       DATETIME       NULL,
    [IsDeleted]              BIT            DEFAULT ((0)) NULL
);

