
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date, ,>
-- Description:	<Description, ,>
-- =============================================
CREATE FUNCTION find_name
(
	
	@id varchar(25)
)
RETURNS varchar(255)
AS
BEGIN
	-- Declare the return variable here
	DECLARE @name varchar(255)

	-- Add the T-SQL statements to compute the return value here
	SELECT @name = student_fname FROM student
	WHERE student_id = @id
	RETURN @name

END
GO

SELECT dbo.find_name('S010') AS 'Student Name'

