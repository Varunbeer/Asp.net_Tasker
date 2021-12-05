CREATE TABLE [dbo].[adminsignup] (
    [email]    VARCHAR (50) NOT NULL,
    [username] VARCHAR (50) NULL,
    [password] VARCHAR (50) NULL,
    [gender]   VARCHAR (50) NULL,
    PRIMARY KEY CLUSTERED ([email] ASC)
);

