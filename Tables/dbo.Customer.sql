CREATE TABLE [dbo].[Customer]
(
[CustomerID] [int] NOT NULL IDENTITY(1, 1),
[CustomerName] [nvarchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Address] [nvarchar] (max) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Phone] [nchar] (20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[DOJ] [datetime] NULL,
[name] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[town] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL CONSTRAINT [DF_Customer_town] DEFAULT ('test'),
[state] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
) ON [PRIMARY]
GO
CREATE CLUSTERED INDEX [ci_customer] ON [dbo].[Customer] ([CustomerName]) ON [PRIMARY]
GO
