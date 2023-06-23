CREATE TABLE [audit].[ProcessRun] (
    [id] UNIQUEIDENTIFIER NOT NULL,
    [TriggerType] VARCHAR (32) NULL,
    [TriggerName] VARCHAR (256) NULL,
    [TriggerId] VARCHAR (50) NULL,
    [TriggerTime] TIME (7) NULL,
    [TriggerStartTime] DATETIME2 (7) NULL,
    [DataFactoryName] VARCHAR (256) NOT NULL,
    [StartDate] DATETIME2 (7) NOT NULL,
    [EndDate] DATETIME2 (7) NULL
);
