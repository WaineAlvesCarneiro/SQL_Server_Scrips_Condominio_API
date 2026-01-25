IF OBJECT_ID('[dbo].[Imovel]', 'U') IS NULL
BEGIN
    CREATE TABLE [dbo].[Imovel] (
        [Id]          BIGINT IDENTITY(1,1) NOT NULL,
        [Bloco]       VARCHAR(255) NOT NULL,
        [Apartamento] VARCHAR(255) NOT NULL,
        [BoxGaragem]  VARCHAR(255) NOT NULL,
        [EmpresaId]    BIGINT NOT NULL,
        
        CONSTRAINT PK_Imovel PRIMARY KEY ([Id])
    );
END
GO