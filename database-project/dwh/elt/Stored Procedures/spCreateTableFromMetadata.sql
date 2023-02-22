﻿


CREATE PROCEDURE [elt].[spCreateTableFromMetadata]
     @create_table_script nvarchar(max)
AS

--Let op: deze parameter wordt gevoed vanuit ADF
	BEGIN TRY

		BEGIN TRANSACTION
	EXEC(@create_table_script)	
		COMMIT TRANSACTION


	END TRY

	BEGIN CATCH
		DECLARE
			@ErrorMessage     NVARCHAR(MAX)
			, @ErrorSeverity  TINYINT
			, @ErrorState     TINYINT
			, @ErrorLine	  TINYINT

		SET @ErrorMessage  = ERROR_MESSAGE()
		SET @ErrorSeverity = ERROR_SEVERITY()
		SET @ErrorState    = ERROR_STATE()
		SET @ErrorLine	   = ERROR_LINE()
		
		RAISERROR(@ErrorMessage, @ErrorSeverity, @ErrorState, @ErrorLine)

		ROLLBACK TRANSACTION

	END CATCH