IF OBJECT_ID('[dbo].[AuthUsers]', 'U') IS NULL
BEGIN
    CREATE TABLE [dbo].[AuthUsers] (
        [Id]              UNIQUEIDENTIFIER CONSTRAINT PK_AuthUsers PRIMARY KEY DEFAULT NEWSEQUENTIALID(),
        [EmpresaId]       BIGINT NULL,
        [UserName]        VARCHAR(100) NOT NULL CONSTRAINT UQ_AuthUsers_UserName UNIQUE,
        [Email]           VARCHAR(100) NOT NULL,
        [PasswordHash]    NVARCHAR(MAX) NOT NULL,
        [Role]            VARCHAR(100) NOT NULL,
        [PrimeiroAcesso]  BIT NOT NULL,
        [DataInclusao]    DATETIME2 NOT NULL CONSTRAINT DF_AuthUsers_Inclusao DEFAULT GETDATE(),
        [DataAlteracao]   DATETIME2 NULL,
    );
END
GO