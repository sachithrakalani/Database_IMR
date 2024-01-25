SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE TRIGGER [dbo].[setempId]
   ON  [dbp].[employee] 
   AFTER INSERT
AS 
BEGIN
	SET NOCOUNT ON;


    -- Insert statements for trigger here

END
GO
