USE [TestingIMR]
GO
/****** Object:  Trigger [dbo].[access_insert]    Script Date: 1/8/2024 4:29:10 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
ALTER TRIGGER [dbo].[access_insert]
ON [dbo].[student]
   AFTER INSERT
AS 
BEGIN
	declare @student_id int;

	select student_id = studentList.student_id from inserted studentList;

	INSERT INTO gate(student_id,status)
	VALUES(@student_id,'TRUE')

END
