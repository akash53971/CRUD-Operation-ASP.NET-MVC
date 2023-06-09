USE [db_MachineTast]
GO
/****** Object:  Table [dbo].[Category]    Script Date: 4/13/2023 8:04:17 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Category](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[CategoryName] [varchar](50) NULL,
	[Status] [int] NULL,
 CONSTRAINT [PK_Category] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Product]    Script Date: 4/13/2023 8:04:17 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Product](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[CatId] [int] NULL,
	[SubCatId] [int] NULL,
	[ProductName] [varchar](50) NULL,
	[DescriptionTitle] [varchar](50) NULL,
	[DescriptionHeading] [varchar](50) NULL,
	[Description] [varchar](50) NULL,
	[ShortDescription] [varchar](50) NULL,
	[Content] [varchar](100) NULL,
	[ProductUrl] [varchar](50) NULL,
	[PDFHeading] [varchar](50) NULL,
	[PDFUrl] [varchar](50) NULL,
	[Status] [int] NULL,
 CONSTRAINT [PK_Product] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Category] ON 

INSERT [dbo].[Category] ([Id], [CategoryName], [Status]) VALUES (1, N'gun', 1)
INSERT [dbo].[Category] ([Id], [CategoryName], [Status]) VALUES (2, N'gun', 1)
INSERT [dbo].[Category] ([Id], [CategoryName], [Status]) VALUES (3, N'nimap', 1)
INSERT [dbo].[Category] ([Id], [CategoryName], [Status]) VALUES (4, N'akash', 0)
INSERT [dbo].[Category] ([Id], [CategoryName], [Status]) VALUES (5, N'jagdish', 0)
INSERT [dbo].[Category] ([Id], [CategoryName], [Status]) VALUES (6, N'bhattacharya', 0)
INSERT [dbo].[Category] ([Id], [CategoryName], [Status]) VALUES (7, N'ash', 0)
INSERT [dbo].[Category] ([Id], [CategoryName], [Status]) VALUES (8, N'yadav', 0)
INSERT [dbo].[Category] ([Id], [CategoryName], [Status]) VALUES (9, N'mourya', 0)
INSERT [dbo].[Category] ([Id], [CategoryName], [Status]) VALUES (10, N'panday', 0)
INSERT [dbo].[Category] ([Id], [CategoryName], [Status]) VALUES (11, N'mumbai', 0)
INSERT [dbo].[Category] ([Id], [CategoryName], [Status]) VALUES (14, N'jsdfgj', 0)
SET IDENTITY_INSERT [dbo].[Category] OFF
GO
SET IDENTITY_INSERT [dbo].[Product] ON 

INSERT [dbo].[Product] ([Id], [CatId], [SubCatId], [ProductName], [DescriptionTitle], [DescriptionHeading], [Description], [ShortDescription], [Content], [ProductUrl], [PDFHeading], [PDFUrl], [Status]) VALUES (1, 2, NULL, N'Netbaind', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Product] ([Id], [CatId], [SubCatId], [ProductName], [DescriptionTitle], [DescriptionHeading], [Description], [ShortDescription], [Content], [ProductUrl], [PDFHeading], [PDFUrl], [Status]) VALUES (2, 2, NULL, N'Netbaindrr', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Product] ([Id], [CatId], [SubCatId], [ProductName], [DescriptionTitle], [DescriptionHeading], [Description], [ShortDescription], [Content], [ProductUrl], [PDFHeading], [PDFUrl], [Status]) VALUES (3, 3, NULL, N'pen', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Product] ([Id], [CatId], [SubCatId], [ProductName], [DescriptionTitle], [DescriptionHeading], [Description], [ShortDescription], [Content], [ProductUrl], [PDFHeading], [PDFUrl], [Status]) VALUES (4, 2, NULL, N'mobile', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Product] ([Id], [CatId], [SubCatId], [ProductName], [DescriptionTitle], [DescriptionHeading], [Description], [ShortDescription], [Content], [ProductUrl], [PDFHeading], [PDFUrl], [Status]) VALUES (5, 3, NULL, N'Netbaind', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Product] ([Id], [CatId], [SubCatId], [ProductName], [DescriptionTitle], [DescriptionHeading], [Description], [ShortDescription], [Content], [ProductUrl], [PDFHeading], [PDFUrl], [Status]) VALUES (6, 3, NULL, N'Smart Watch', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Product] ([Id], [CatId], [SubCatId], [ProductName], [DescriptionTitle], [DescriptionHeading], [Description], [ShortDescription], [Content], [ProductUrl], [PDFHeading], [PDFUrl], [Status]) VALUES (7, 2, NULL, N'goods', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Product] ([Id], [CatId], [SubCatId], [ProductName], [DescriptionTitle], [DescriptionHeading], [Description], [ShortDescription], [Content], [ProductUrl], [PDFHeading], [PDFUrl], [Status]) VALUES (8, 3, NULL, N'Netbaind', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Product] ([Id], [CatId], [SubCatId], [ProductName], [DescriptionTitle], [DescriptionHeading], [Description], [ShortDescription], [Content], [ProductUrl], [PDFHeading], [PDFUrl], [Status]) VALUES (9, 2, NULL, N'mobile', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Product] ([Id], [CatId], [SubCatId], [ProductName], [DescriptionTitle], [DescriptionHeading], [Description], [ShortDescription], [Content], [ProductUrl], [PDFHeading], [PDFUrl], [Status]) VALUES (10, 1, NULL, N'mobile', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Product] ([Id], [CatId], [SubCatId], [ProductName], [DescriptionTitle], [DescriptionHeading], [Description], [ShortDescription], [Content], [ProductUrl], [PDFHeading], [PDFUrl], [Status]) VALUES (11, 3, NULL, N'Smart Watch', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Product] ([Id], [CatId], [SubCatId], [ProductName], [DescriptionTitle], [DescriptionHeading], [Description], [ShortDescription], [Content], [ProductUrl], [PDFHeading], [PDFUrl], [Status]) VALUES (12, 2, NULL, N'mobile', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Product] ([Id], [CatId], [SubCatId], [ProductName], [DescriptionTitle], [DescriptionHeading], [Description], [ShortDescription], [Content], [ProductUrl], [PDFHeading], [PDFUrl], [Status]) VALUES (13, 3, NULL, N'pen', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Product] ([Id], [CatId], [SubCatId], [ProductName], [DescriptionTitle], [DescriptionHeading], [Description], [ShortDescription], [Content], [ProductUrl], [PDFHeading], [PDFUrl], [Status]) VALUES (14, 1, NULL, N'pen', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Product] ([Id], [CatId], [SubCatId], [ProductName], [DescriptionTitle], [DescriptionHeading], [Description], [ShortDescription], [Content], [ProductUrl], [PDFHeading], [PDFUrl], [Status]) VALUES (15, 2, NULL, N'efef', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Product] ([Id], [CatId], [SubCatId], [ProductName], [DescriptionTitle], [DescriptionHeading], [Description], [ShortDescription], [Content], [ProductUrl], [PDFHeading], [PDFUrl], [Status]) VALUES (16, 3, NULL, N'fewaf', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
SET IDENTITY_INSERT [dbo].[Product] OFF
GO
/****** Object:  StoredProcedure [dbo].[DeleteCategory]    Script Date: 4/13/2023 8:04:18 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE Procedure [dbo].[DeleteCategory]
(    
 @Id bigint    
)    
as     
Begin    
declare @ret int;
DECLARE @CName varchar(50)
select @CName=ProductName from Product where CatId=@Id;
 if(@CName IS NULL)
		Delete Category where Id=@Id;   
 select @ret=1 
End 
Begin 
select @ret=0  
End
return @ret;  
GO
/****** Object:  StoredProcedure [dbo].[DeleteProduct]    Script Date: 4/13/2023 8:04:18 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create Procedure [dbo].[DeleteProduct]   
(    
 @Id bigint    
)    
as     
Begin    
 Delete Product where Id=@Id;    
End  
GO
/****** Object:  StoredProcedure [dbo].[GetCategory]    Script Date: 4/13/2023 8:04:18 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE Procedure [dbo].[GetCategory]  
as     
Begin    
Select ROW_NUMBER() OVER(ORDER BY Id desc) AS SrNo,* from Category;    
End  
GO
/****** Object:  StoredProcedure [dbo].[GetProduct]    Script Date: 4/13/2023 8:04:18 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[GetProduct]
    @PageNumber INT,
    @PageSize INT
AS
BEGIN
    SELECT *
    FROM (
        SELECT ROW_NUMBER() OVER (ORDER BY pro.Id desc) AS SrNo, pro.Id, pro.ProductName, pro.CatId, cat.CategoryName 
	  From Product pro INNER JOIN Category cat ON cat.Id = pro.CatId ) AS Temp
    WHERE SrNo BETWEEN (@PageNumber - 1) * @PageSize + 1 AND @PageNumber * @PageSize
END
GO
/****** Object:  StoredProcedure [dbo].[InsertCategory]    Script Date: 4/13/2023 8:04:18 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[InsertCategory]    
(      
   @CategoryName varchar (50),    
   @Status int  
)    
As    
Begin    
 Insert into Category(CategoryName,[Status]) values(@CategoryName,@Status);    
End 
GO
/****** Object:  StoredProcedure [dbo].[InsertProduct]    Script Date: 4/13/2023 8:04:18 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[InsertProduct]    
(      
    @CatId int,
	@ProductName varchar (50)
)    
As    
Begin    
 Insert into Product(CatId,ProductName)
 values(@CatId,@ProductName);    
End 
GO
/****** Object:  StoredProcedure [dbo].[UpdateCategory]    Script Date: 4/13/2023 8:04:18 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create procedure [dbo].[UpdateCategory]    
(      
   @Id int, 
   @CategoryName varchar (50),    
   @Status int  
)    
As    
Begin    
 Update Category set CategoryName=@CategoryName,[Status]=@Status where Id=@Id;    
End      
GO
/****** Object:  StoredProcedure [dbo].[UpdateProduct]    Script Date: 4/13/2023 8:04:18 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[UpdateProduct]    
(      
   @Id int, 
	@CatId int,
	@ProductName varchar (50)
)    
As    
Begin    
 Update Product set CatId=@CatId,ProductName=@ProductName where Id=@Id;    
End      
GO
