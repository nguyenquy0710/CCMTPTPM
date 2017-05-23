USE [FaceShop]
GO

INSERT dbo.Administrator
        ( AdName ,
          UserName ,
          Password ,
          Priviledge
        )
VALUES  ( N'Nguyễn Quý' , -- AdName - nvarchar(50)
          N'admin' , -- UserName - nvarchar(50)
          N'admin' , -- Password - nvarchar(50)
          N'admin'  -- Priviledge - nvarchar(50)
        )
GO
