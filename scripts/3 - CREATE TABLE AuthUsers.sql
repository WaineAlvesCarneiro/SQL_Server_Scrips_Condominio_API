IF OBJECT_ID('[dbo].[AuthUsers]', 'U') IS NULL
BEGIN
    CREATE TABLE [dbo].[AuthUsers] (
        [Id]           UNIQUEIDENTIFIER CONSTRAINT PK_AuthUsers PRIMARY KEY DEFAULT NEWSEQUENTIALID(),
        [EmpresaId]    BIGINT NOT NULL,
        [UserName]     VARCHAR(100)     NOT NULL CONSTRAINT UQ_AuthUsers_UserName UNIQUE,
        [PasswordHash] NVARCHAR(MAX)    NOT NULL,
        [Role]         VARCHAR(100)      NOT NULL,
        [Dt_Criacao]   DATETIMEOFFSET   NOT NULL CONSTRAINT DF_AuthUsers_Dt_Criacao DEFAULT SYSDATETIMEOFFSET()
    );
END
GO

--INSERT INTO AuthUsers (EmpresaId, UserName, PasswordHash, Role)
--VALUES (0, 'Admin', '$2a$12$GBHAUIYniuJbzB/tgW.eV.kNLsmOY7ajlRwMcMvzgj0GdlrxIDXWG', 'Suporte');
--GO

--INSERT INTO AuthUsers (EmpresaId, UserName, PasswordHash, Role)
--VALUES (1, 'Sindico', '$2a$12$GBHAUIYniuJbzB/tgW.eV.kNLsmOY7ajlRwMcMvzgj0GdlrxIDXWG', 'Sindico');
--GO

--INSERT INTO AuthUsers (EmpresaId, UserName, PasswordHash, Role)
--VALUES (1, 'Porteiro', '$2a$12$GBHAUIYniuJbzB/tgW.eV.kNLsmOY7ajlRwMcMvzgj0GdlrxIDXWG', 'Porteiro');
--GO

--INSERT INTO AuthUsers (EmpresaId, UserName, PasswordHash, Role)
--VALUES (1, 'Waine', '$2a$12$GBHAUIYniuJbzB/tgW.eV.kNLsmOY7ajlRwMcMvzgj0GdlrxIDXWG', 'Waine');
--GO