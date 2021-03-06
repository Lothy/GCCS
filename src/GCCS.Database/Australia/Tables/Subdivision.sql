﻿CREATE TABLE [Australia].[Subdivision] (
    [CountryCode]     CHAR (2) NOT NULL,
    [SubdivisionCode] CHAR (6) NOT NULL,
    [SubdivisionType] CHAR (1) NOT NULL,
    CONSTRAINT [PK_Subdivision_1] PRIMARY KEY CLUSTERED ([CountryCode] ASC, [SubdivisionCode] ASC),
    CONSTRAINT [FK_Subdivision_Subdivision] FOREIGN KEY ([CountryCode], [SubdivisionCode]) REFERENCES [Jurisdiction].[Subdivision] ([CountryCode], [SubdivisionCode]),
    CONSTRAINT [FK_Subdivision_SubdivisionType] FOREIGN KEY ([SubdivisionType]) REFERENCES [Australia].[SubdivisionType] ([SubdivisionType])
);

