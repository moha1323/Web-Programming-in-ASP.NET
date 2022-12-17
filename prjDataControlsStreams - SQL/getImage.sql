CREATE proc getImgbyID
@ID nchar(50)
as
BEGIN
	SELECT ImageData FROM ContactImage 
	WHERE Id = @Id
END