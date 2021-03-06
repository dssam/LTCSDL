USE ONLINE_SHOP
GO
IF OBJECT_ID('uspCAU1' , 'P') IS NOT NULL
DROP PROC uspCAU1
GO

/* cong 2 so nguyen */
CREATE PROC uspCAU1a
@a int,
@b int
AS
RETURN (@a + @b)
GO

DECLARE @x int = 3 , @y int = 4 , @tong int = 0
EXEC @tong = uspCAU1a @x, @y
PRINT  N'Tổng 2 số là : '+ CAST(@tong AS varchar);

/* cong 2 so thuc */
CREATE PROC uspCAU1b
@a float , 
@b float ,
@tong float OUT
AS
SET @tong = @a + @b
GO

DECLARE @x float = 3.5 , @y float = 4.1 , @tong float = 0.0
EXEC uspCAU1b @x, @y , @tong OUT
PRINT CAST(@x AS varchar) + ' + ' +
		CAST(@y AS varchar) + ' = ' +
		CAST(@tong AS varchar)
