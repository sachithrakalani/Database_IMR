
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE TRIGGER [dbo].[access_insert]
ON [dbo].[student]
   AFTER INSERT
AS 
BEGIN
	declare @student_id varchar(25);

	select @student_id = studentList.student_id from inserted studentList;

	INSERT INTO gate(student_id,status)
	VALUES(@student_id,'TRUE')

	INSERT INTO library1(student_id,status)
	VALUES(@student_id,'FALSE')

END
GO
