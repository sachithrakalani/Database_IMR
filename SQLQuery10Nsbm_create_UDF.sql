
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE FUNCTION allStudentDetails
(	
	@bid varchar(25)
)
RETURNS TABLE 
AS
RETURN 
(
	
	SELECT student_id,student_fname,batch_id FROM student
	WHERE batch_id = @bid  
)
GO

SELECT * from allStudentDetails('B002')




