CREATE proc uploadImg
@Name nvarchar(255),
@Size int,
@ImageData varbinary(max),
@Id nchar(50)
as
BEGIN
	INSERT INTO ContactImage
	VALUES(@Id,@Name,@Size,@ImageData)
END