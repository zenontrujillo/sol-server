﻿CREATE TABLE [dbo].[Tenant]
(
	[Id] UNIQUEIDENTIFIER NOT NULL DEFAULT NEWSEQUENTIALID(), 
	[CreatedUtc] DATETIME2 NOT NULL DEFAULT SYSUTCDATETIME(), 
	[ModifiedUtc] DATETIME2 NULL,
    [RowVersion] ROWVERSION NOT NULL, 
    CONSTRAINT [PK_Tenant] PRIMARY KEY NONCLUSTERED ([Id])
)

GO

CREATE CLUSTERED INDEX [IX_Tenant_Clustered] ON [dbo].[Tenant] ([CreatedUtc])
