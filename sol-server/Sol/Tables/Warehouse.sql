﻿CREATE TABLE [dbo].[Warehouse]
(
	[Id] UNIQUEIDENTIFIER NOT NULL DEFAULT NEWSEQUENTIALID(), 
	[TenantId] UNIQUEIDENTIFIER NOT NULL,
	[Name] NVARCHAR(30) NOT NULL,
    [CreatedUtc] DATETIME2 NOT NULL DEFAULT SYSUTCDATETIME(), 
	[ModifiedUtc] DATETIME2 NULL,
	[RowVersion] ROWVERSION NOT NULL, 
    CONSTRAINT [PK_Warehouse] PRIMARY KEY NONCLUSTERED ([Id]), 
    CONSTRAINT [FK_Warehouse_ToTenant] FOREIGN KEY ([TenantId]) REFERENCES [dbo].[Tenant]([Id])
)

GO

CREATE CLUSTERED INDEX [IX_Warehouse_Clustered] ON [dbo].[Warehouse] ([CreatedUtc])
