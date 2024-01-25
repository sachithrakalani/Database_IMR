USE [TestingIMR]
GO
/****** Object:  StoredProcedure [dbo].[passStudent]    Script Date: 1/10/2024 5:08:24 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
ALTER PROCEDURE [dbo].[aPlusStudent]
	@result varchar(2)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	select s.student_id,s.student_fname,SE.exam_id,SE.result
	FROM student AS S
	Inner join student_exam AS SE
	ON s.student_id = SE.student_id
	WHERE SE.result = @result
END

EXEC aPlusStudent @result = 'A+'
