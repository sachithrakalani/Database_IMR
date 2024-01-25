
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE TRIGGER [dbo].[access_delete] 
   ON [dbo].[student]
   AFTER DELETE
AS 
BEGIN
	declare @student_id varchar(25);

	select @student_id = studentList.student_id from deleted studentList;

	INSERT INTO gate(student_id,status)
	VALUES(@student_id,'FALSE')


END
GO

