create database Course
use Course

create procedure usp_DeleteAdd
@id int,
@name nvarchar(50),
@surname nvarchar(50),
@age int,
@email nvarchar(50),
@address nvarchar (50)
as
Begin
	DELETE FROM Student
	WHERE @id = Id;
	insert into StudentArchives([Name],[Surname],[Age],[Email],[Address])
	values(@name,@surname,@age,@email,@address)

End

exec usp_DeleteAdd 2,'Murad','Jafarov',19,'murad@gmail.com','Nzs'
