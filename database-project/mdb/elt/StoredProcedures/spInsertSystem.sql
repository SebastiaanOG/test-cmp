Create Procedure [elt].[spInsertSystem]
    (
        @SystemCode nvarchar(128),
        @SystemName nvarchar(128),
        @SystemType nvarchar(128)
    )
As

If Not Exists (Select Top 1 * From [elt].[MetadataSystem]
    Where 1 = 1
        And [SystemCode] = @SystemCode
        And [SystemName] = @SystemName
        And [SystemType] = @SystemType)
    Begin
        Insert Into [elt].[MetadataSystem]
        ([SystemCode],
            [SystemName],
            [SystemType],
            [Active],
            [Created])
        Values
        (@SystemCode,
            @SystemName,
            @SystemType,
            1,
            GETDATE())
    End
