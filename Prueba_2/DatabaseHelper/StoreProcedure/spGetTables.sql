USE [Prueba_2]
GO
/****** Object:  StoredProcedure [dbo].[spGetTables]    Script Date: 28/04/2024 04:07:05 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

ALTER PROCEDURE [dbo].[spGetTables]
	
AS
BEGIN
	SELECT TABLE_NAME FROM Prueba_2.INFORMATION_SCHEMA.TABLES;
END
