CREATE TABLE [dbo].[register] (
    [uId]      INT           IDENTITY (1, 1) NOT NULL,
    [Name]    CHAR (30)     NOT NULL,
    [Date_of_Birth]      NVARCHAR(50)          NOT NULL,
    [Email_Address]    NVARCHAR (50) NOT NULL,
    [Mobile_Number]   NVARCHAR (50) NOT NULL,
    [password] NVARCHAR (50) NOT NULL,
    [Time_Of_Registration]      NVARCHAR (50) NULL,
    PRIMARY KEY CLUSTERED ([uId] ASC)
);

