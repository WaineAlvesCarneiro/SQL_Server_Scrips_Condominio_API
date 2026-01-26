IF OBJECT_ID('[dbo].[Empresa]', 'U') IS NULL
BEGIN
    CREATE TABLE [dbo].[Empresa] (
        [Id]                BIGINT IDENTITY(1,1) NOT NULL,
        [RazaoSocial]       VARCHAR(70) NOT NULL,
        [Fantasia]          VARCHAR(50) NOT NULL,
        [Cnpj]              VARCHAR(14) NOT NULL,
        [TipoDeCondominio]  INT         NOT NULL,
        [Nome]              VARCHAR(50) NOT NULL,
	    [Celular]           VARCHAR(16) NOT NULL,
	    [Telefone]          VARCHAR(16) NOT NULL,
	    [Email]             VARCHAR(50) NOT NULL,
        [Senha]             VARCHAR(50) NULL,
        [Host]              VARCHAR(50) NOT NULL,
        [Porta]             INT         NOT NULL,
	    [Cep]               VARCHAR(12) NOT NULL,
	    [Uf]                VARCHAR(30) NOT NULL,
	    [Cidade]            VARCHAR(50) NOT NULL,
	    [Endereco]          VARCHAR(50) NOT NULL,
	    [Complemento]       VARCHAR(50) NOT NULL,
        [DataInclusao]      DATETIME2 NOT NULL CONSTRAINT DF_Empresa_Inclusao DEFAULT GETDATE(),
        [DataAlteracao]     DATETIME2 NULL,
        CONSTRAINT PK_Empresa PRIMARY KEY ([Id])
    );
END
GO

INSERT INTO dbo.Empresa(RazaoSocial,Fantasia,Cnpj,TipoDeCondominio,Nome,Celular
    ,Telefone,Email,Senha,Host,Porta,Cep,Uf,Cidade,Endereco,Complemento,DataInclusao,DataAlteracao)
VALUES
('Meu Condomínio Ltda','Meu Condomínio','99999999999999',2,'Nome Resposável','62999999999','62999999999',
    'enviaemailwebapi@gmail.com',null,'smtp.gmail.com',587,'74843140','GO','Goiânia','Rua Macéio','Qd 130','2026-01-23 17:51:47.9210000',NULL)
GO