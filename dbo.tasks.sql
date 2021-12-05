CREATE TABLE [dbo].[tasks] (
    [name]    VARCHAR (150) NOT NULL,
    [task]    VARCHAR (150) NULL,
    [details] VARCHAR (150) NULL,
    [duedate] VARCHAR (150) NULL,
    [company] VARCHAR (150) NULL,
    [comment] VARCHAR (150) NULL,
    PRIMARY KEY CLUSTERED ([name] ASC)
);

