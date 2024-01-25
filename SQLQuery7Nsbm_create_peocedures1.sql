
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE getCminusStudent 
	@result varchar(2)
AS
BEGIN
	select s.student_id,s.student_fname,SE.exam_id,SE.result
	FROM student AS S
	Inner join student_exam AS SE
	ON s.student_id = SE.student_id
	WHERE SE.result = @result
END
GO

EXEC getCminusStudent @result = 'C-'