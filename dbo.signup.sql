CREATE TABLE [dbo].[signup] (
    [email]            VARCHAR (50) NOT NULL,
    [username]         VARCHAR (50) NULL,
    [password]         VARCHAR (50) NULL,
    [contactno]        INT          NULL,
    [gender]           VARCHAR (50) NULL,
    [securityquestion] VARCHAR (50) NULL,
    [securityanswer]   VARCHAR (50) NULL,
    PRIMARY KEY CLUSTERED ([email] ASC)
);

