
-- --------------------------------------------------
-- Entity Designer DDL Script for SQL Server 2005, 2008, 2012 and Azure
-- --------------------------------------------------
-- Date Created: 10/01/2018 14:24:00
-- Generated from EDMX file: C:\Users\extpiki\source\repos\ModelFirstEntityFramework\ModelFirstEntityFramework\JewelleryModel.edmx
-- --------------------------------------------------

SET QUOTED_IDENTIFIER OFF;
GO
USE [Jewellery];
GO
IF SCHEMA_ID(N'dbo') IS NULL EXECUTE(N'CREATE SCHEMA [dbo]');
GO

-- --------------------------------------------------
-- Dropping existing FOREIGN KEY constraints
-- --------------------------------------------------

IF OBJECT_ID(N'[dbo].[FK_ProductsItems]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Items] DROP CONSTRAINT [FK_ProductsItems];
GO
IF OBJECT_ID(N'[dbo].[FK_LegalUnitsProducts]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Products] DROP CONSTRAINT [FK_LegalUnitsProducts];
GO
IF OBJECT_ID(N'[dbo].[FK_ItemsItemLocalisation]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[ItemLocalisations] DROP CONSTRAINT [FK_ItemsItemLocalisation];
GO
IF OBJECT_ID(N'[dbo].[FK_ItemsItemPrices]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[ItemPrices] DROP CONSTRAINT [FK_ItemsItemPrices];
GO
IF OBJECT_ID(N'[dbo].[FK_PriceCodesItemPrices]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[ItemPrices] DROP CONSTRAINT [FK_PriceCodesItemPrices];
GO
IF OBJECT_ID(N'[dbo].[FK_ItemPricesCurrencies]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[ItemPrices] DROP CONSTRAINT [FK_ItemPricesCurrencies];
GO
IF OBJECT_ID(N'[dbo].[FK_MerchantsStores]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Stores] DROP CONSTRAINT [FK_MerchantsStores];
GO
IF OBJECT_ID(N'[dbo].[FK_PriceCodesStores]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Stores] DROP CONSTRAINT [FK_PriceCodesStores];
GO
IF OBJECT_ID(N'[dbo].[FK_ItemDescriptionsItems]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[ItemDescriptions] DROP CONSTRAINT [FK_ItemDescriptionsItems];
GO
IF OBJECT_ID(N'[dbo].[FK_LegalUnitsStores]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Stores] DROP CONSTRAINT [FK_LegalUnitsStores];
GO
IF OBJECT_ID(N'[dbo].[FK_ItemDescriptionsItemLocalisation]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[ItemDescriptions] DROP CONSTRAINT [FK_ItemDescriptionsItemLocalisation];
GO
IF OBJECT_ID(N'[dbo].[FK_StoresStoreItems]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[StoreItems] DROP CONSTRAINT [FK_StoresStoreItems];
GO
IF OBJECT_ID(N'[dbo].[FK_StoreItemsItems]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Items] DROP CONSTRAINT [FK_StoreItemsItems];
GO

-- --------------------------------------------------
-- Dropping existing tables
-- --------------------------------------------------

IF OBJECT_ID(N'[dbo].[Items]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Items];
GO
IF OBJECT_ID(N'[dbo].[Products]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Products];
GO
IF OBJECT_ID(N'[dbo].[LegalUnits]', 'U') IS NOT NULL
    DROP TABLE [dbo].[LegalUnits];
GO
IF OBJECT_ID(N'[dbo].[ItemLocalisations]', 'U') IS NOT NULL
    DROP TABLE [dbo].[ItemLocalisations];
GO
IF OBJECT_ID(N'[dbo].[ItemPrices]', 'U') IS NOT NULL
    DROP TABLE [dbo].[ItemPrices];
GO
IF OBJECT_ID(N'[dbo].[PriceCodes]', 'U') IS NOT NULL
    DROP TABLE [dbo].[PriceCodes];
GO
IF OBJECT_ID(N'[dbo].[Currencies]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Currencies];
GO
IF OBJECT_ID(N'[dbo].[Merchants]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Merchants];
GO
IF OBJECT_ID(N'[dbo].[Stores]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Stores];
GO
IF OBJECT_ID(N'[dbo].[StoreItems]', 'U') IS NOT NULL
    DROP TABLE [dbo].[StoreItems];
GO
IF OBJECT_ID(N'[dbo].[ItemDescriptions]', 'U') IS NOT NULL
    DROP TABLE [dbo].[ItemDescriptions];
GO

-- --------------------------------------------------
-- Creating all tables
-- --------------------------------------------------

-- Creating table 'Items'
CREATE TABLE [dbo].[Items] (
    [ItemId] int IDENTITY(1,1) NOT NULL,
    [ProductId] int  NOT NULL,
    [AXItemId] nvarchar(max)  NOT NULL,
    [ItemSizeId] nvarchar(max)  NOT NULL,
    [ItemTypeId] nvarchar(max)  NOT NULL,
    [ItemBarcode] nvarchar(max)  NOT NULL,
    [ItemModifiedBy] nvarchar(max)  NOT NULL,
    [ItemModifiedDateTime] nvarchar(max)  NOT NULL,
    [StoreItemsStoreItemId] int  NOT NULL,
    [OrderLine_OrderLineId] int  NOT NULL
);
GO

-- Creating table 'Products'
CREATE TABLE [dbo].[Products] (
    [ProductId] int IDENTITY(1,1) NOT NULL,
    [LegalUnitId] int  NOT NULL,
    [ProductName] nvarchar(50)  NOT NULL,
    [ProductNo] nvarchar(max)  NOT NULL,
    [ProductTypeId] nvarchar(max)  NOT NULL,
    [ProductModifiedBy] nvarchar(max)  NOT NULL,
    [ProductModifiedDateTime] nvarchar(max)  NOT NULL
);
GO

-- Creating table 'LegalUnits'
CREATE TABLE [dbo].[LegalUnits] (
    [LegalUnitId] int IDENTITY(1,1) NOT NULL,
    [LegalUnitCode] nvarchar(max)  NOT NULL,
    [LegalUnitName] nvarchar(max)  NOT NULL,
    [LegalUnitModifiedBy] nvarchar(max)  NOT NULL,
    [LegalUnitModifiedDateTime] nvarchar(max)  NOT NULL
);
GO

-- Creating table 'ItemLocalisations'
CREATE TABLE [dbo].[ItemLocalisations] (
    [ItemLocalisationId] int IDENTITY(1,1) NOT NULL,
    [ItemId] int  NOT NULL,
    [NameTranslated] nvarchar(max)  NOT NULL,
    [LanguageCultureCode] nvarchar(max)  NOT NULL,
    [LanguageName] nvarchar(max)  NOT NULL,
    [ISO639_2] nvarchar(max)  NOT NULL,
    [ISO639_3] nvarchar(max)  NOT NULL,
    [ItemLocalisationModifiedBy] nvarchar(max)  NOT NULL,
    [ItemLocalisationModifiedDateTime] nvarchar(max)  NOT NULL
);
GO

-- Creating table 'ItemPrices'
CREATE TABLE [dbo].[ItemPrices] (
    [PriceId] int IDENTITY(1,1) NOT NULL,
    [ItemId] int  NOT NULL,
    [CurrencyId] int  NOT NULL,
    [PriceCodeId] int  NOT NULL,
    [ItemPrice] nvarchar(max)  NOT NULL
);
GO

-- Creating table 'PriceCodes'
CREATE TABLE [dbo].[PriceCodes] (
    [PriceCodeId] int IDENTITY(1,1) NOT NULL,
    [PriceCodeModifiedBy] nvarchar(max)  NOT NULL,
    [PriceCodeModifiedDateTime] nvarchar(max)  NOT NULL
);
GO

-- Creating table 'Currencies'
CREATE TABLE [dbo].[Currencies] (
    [CurrencyId] int IDENTITY(1,1) NOT NULL,
    [CurrencyModifiedBy] nvarchar(max)  NOT NULL,
    [CurrencyModifiedDateTime] nvarchar(max)  NOT NULL
);
GO

-- Creating table 'Merchants'
CREATE TABLE [dbo].[Merchants] (
    [MerchantId] int IDENTITY(1,1) NOT NULL,
    [MerchantName] nvarchar(max)  NOT NULL,
    [MerchantPhone] nvarchar(max)  NOT NULL,
    [MerchantEmail] nvarchar(max)  NOT NULL,
    [MerchantAddress] nvarchar(max)  NOT NULL,
    [MerchantCity] nvarchar(max)  NOT NULL,
    [MerchantPostCode] nvarchar(max)  NOT NULL,
    [MerchantCountry] nvarchar(max)  NOT NULL,
    [MerchantModifiedBy] nvarchar(max)  NOT NULL,
    [MerchantModifiedDateTime] nvarchar(max)  NOT NULL
);
GO

-- Creating table 'Stores'
CREATE TABLE [dbo].[Stores] (
    [StoreId] int IDENTITY(1,1) NOT NULL,
    [MerchantId] int  NOT NULL,
    [StoreName] nvarchar(max)  NOT NULL,
    [StorePhone] nvarchar(max)  NOT NULL,
    [StoreEmail] nvarchar(max)  NOT NULL,
    [StoreAddress] nvarchar(max)  NOT NULL,
    [StoreCity] nvarchar(max)  NOT NULL,
    [StorePostCode] nvarchar(max)  NOT NULL,
    [PriceCodesPriceCodeId] int  NOT NULL,
    [LegalUnitId] nvarchar(max)  NOT NULL,
    [StoreModifiedBy] nvarchar(max)  NOT NULL,
    [StoreModifiedDateTime] nvarchar(max)  NOT NULL,
    [LegalUnit_LegalUnitId] int  NOT NULL
);
GO

-- Creating table 'StoreItems'
CREATE TABLE [dbo].[StoreItems] (
    [StoreItemId] int  NOT NULL,
    [StoreId] int  NOT NULL,
    [StoresStoreId] int  NOT NULL,
    [StoreIdModifiedBy] nvarchar(max)  NOT NULL,
    [StoreIdModifiedDateTime] nvarchar(max)  NOT NULL
);
GO

-- Creating table 'ItemDescriptions'
CREATE TABLE [dbo].[ItemDescriptions] (
    [ItemDescriptionId] int IDENTITY(1,1) NOT NULL,
    [ItemId] nvarchar(max)  NOT NULL,
    [ItemName] nvarchar(max)  NOT NULL,
    [ItemDescription] nvarchar(max)  NOT NULL,
    [ItemColor] nvarchar(max)  NOT NULL,
    [ItemMaterial] nvarchar(max)  NOT NULL,
    [ItemTheme] nvarchar(max)  NOT NULL,
    [ItemStone] nvarchar(max)  NOT NULL,
    [ItemDescrModifiedBy] nvarchar(max)  NOT NULL,
    [ItemDescModifiedDateTime] nvarchar(max)  NOT NULL,
    [LocalisationId] int  NOT NULL,
    [Item_ItemId] int  NOT NULL
);
GO

-- Creating table 'Orders'
CREATE TABLE [dbo].[Orders] (
    [OrderId] int IDENTITY(1,1) NOT NULL,
    [TransactionTime] datetime  NOT NULL,
    [CashierName] nvarchar(max)  NOT NULL,
    [Amount] decimal(18,0)  NOT NULL,
    [CurrencyId] int  NOT NULL,
    [Discount] decimal(18,0)  NOT NULL,
    [Note] nvarchar(max)  NOT NULL,
    [MerchantId] int  NOT NULL,
    [StoreId] int  NOT NULL,
    [Terminal_TerminalId] int  NOT NULL
);
GO

-- Creating table 'OrderLines'
CREATE TABLE [dbo].[OrderLines] (
    [OrderLineId] int IDENTITY(1,1) NOT NULL,
    [OrderId] int  NOT NULL,
    [ItemId] nvarchar(max)  NOT NULL,
    [Count] int  NOT NULL,
    [Ammount] decimal(18,0)  NOT NULL,
    [Discount] decimal(18,0)  NOT NULL,
    [Note] nvarchar(max)  NOT NULL,
    [CurrencyId] int  NOT NULL
);
GO

-- Creating table 'OrderPaymentLines'
CREATE TABLE [dbo].[OrderPaymentLines] (
    [OrderPaymentLineId] int IDENTITY(1,1) NOT NULL,
    [OrderLineId] int  NOT NULL,
    [PaymentId] int  NOT NULL,
    [PaymentType] nvarchar(max)  NOT NULL,
    [CurrencyId] nvarchar(max)  NOT NULL,
    [Note] nvarchar(max)  NOT NULL,
    [Currency_CurrencyId] int  NOT NULL
);
GO

-- Creating table 'Terminals'
CREATE TABLE [dbo].[Terminals] (
    [TerminalId] int IDENTITY(1,1) NOT NULL,
    [StoreId] int  NOT NULL,
    [OrderId] nvarchar(max)  NOT NULL
);
GO

-- Creating table 'Payments'
CREATE TABLE [dbo].[Payments] (
    [PaymentId] int IDENTITY(1,1) NOT NULL,
    [Ammount] decimal(18,0)  NOT NULL,
    [CurrencyId] nvarchar(max)  NOT NULL,
    [Note] nvarchar(max)  NOT NULL,
    [OrderId] int  NOT NULL
);
GO

-- --------------------------------------------------
-- Creating all PRIMARY KEY constraints
-- --------------------------------------------------

-- Creating primary key on [ItemId] in table 'Items'
ALTER TABLE [dbo].[Items]
ADD CONSTRAINT [PK_Items]
    PRIMARY KEY CLUSTERED ([ItemId] ASC);
GO

-- Creating primary key on [ProductId] in table 'Products'
ALTER TABLE [dbo].[Products]
ADD CONSTRAINT [PK_Products]
    PRIMARY KEY CLUSTERED ([ProductId] ASC);
GO

-- Creating primary key on [LegalUnitId] in table 'LegalUnits'
ALTER TABLE [dbo].[LegalUnits]
ADD CONSTRAINT [PK_LegalUnits]
    PRIMARY KEY CLUSTERED ([LegalUnitId] ASC);
GO

-- Creating primary key on [ItemLocalisationId] in table 'ItemLocalisations'
ALTER TABLE [dbo].[ItemLocalisations]
ADD CONSTRAINT [PK_ItemLocalisations]
    PRIMARY KEY CLUSTERED ([ItemLocalisationId] ASC);
GO

-- Creating primary key on [PriceId] in table 'ItemPrices'
ALTER TABLE [dbo].[ItemPrices]
ADD CONSTRAINT [PK_ItemPrices]
    PRIMARY KEY CLUSTERED ([PriceId] ASC);
GO

-- Creating primary key on [PriceCodeId] in table 'PriceCodes'
ALTER TABLE [dbo].[PriceCodes]
ADD CONSTRAINT [PK_PriceCodes]
    PRIMARY KEY CLUSTERED ([PriceCodeId] ASC);
GO

-- Creating primary key on [CurrencyId] in table 'Currencies'
ALTER TABLE [dbo].[Currencies]
ADD CONSTRAINT [PK_Currencies]
    PRIMARY KEY CLUSTERED ([CurrencyId] ASC);
GO

-- Creating primary key on [MerchantId] in table 'Merchants'
ALTER TABLE [dbo].[Merchants]
ADD CONSTRAINT [PK_Merchants]
    PRIMARY KEY CLUSTERED ([MerchantId] ASC);
GO

-- Creating primary key on [StoreId] in table 'Stores'
ALTER TABLE [dbo].[Stores]
ADD CONSTRAINT [PK_Stores]
    PRIMARY KEY CLUSTERED ([StoreId] ASC);
GO

-- Creating primary key on [StoreItemId] in table 'StoreItems'
ALTER TABLE [dbo].[StoreItems]
ADD CONSTRAINT [PK_StoreItems]
    PRIMARY KEY CLUSTERED ([StoreItemId] ASC);
GO

-- Creating primary key on [ItemDescriptionId] in table 'ItemDescriptions'
ALTER TABLE [dbo].[ItemDescriptions]
ADD CONSTRAINT [PK_ItemDescriptions]
    PRIMARY KEY CLUSTERED ([ItemDescriptionId] ASC);
GO

-- Creating primary key on [OrderId] in table 'Orders'
ALTER TABLE [dbo].[Orders]
ADD CONSTRAINT [PK_Orders]
    PRIMARY KEY CLUSTERED ([OrderId] ASC);
GO

-- Creating primary key on [OrderLineId] in table 'OrderLines'
ALTER TABLE [dbo].[OrderLines]
ADD CONSTRAINT [PK_OrderLines]
    PRIMARY KEY CLUSTERED ([OrderLineId] ASC);
GO

-- Creating primary key on [OrderPaymentLineId] in table 'OrderPaymentLines'
ALTER TABLE [dbo].[OrderPaymentLines]
ADD CONSTRAINT [PK_OrderPaymentLines]
    PRIMARY KEY CLUSTERED ([OrderPaymentLineId] ASC);
GO

-- Creating primary key on [TerminalId] in table 'Terminals'
ALTER TABLE [dbo].[Terminals]
ADD CONSTRAINT [PK_Terminals]
    PRIMARY KEY CLUSTERED ([TerminalId] ASC);
GO

-- Creating primary key on [PaymentId] in table 'Payments'
ALTER TABLE [dbo].[Payments]
ADD CONSTRAINT [PK_Payments]
    PRIMARY KEY CLUSTERED ([PaymentId] ASC);
GO

-- --------------------------------------------------
-- Creating all FOREIGN KEY constraints
-- --------------------------------------------------

-- Creating foreign key on [ProductId] in table 'Items'
ALTER TABLE [dbo].[Items]
ADD CONSTRAINT [FK_ProductsItems]
    FOREIGN KEY ([ProductId])
    REFERENCES [dbo].[Products]
        ([ProductId])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_ProductsItems'
CREATE INDEX [IX_FK_ProductsItems]
ON [dbo].[Items]
    ([ProductId]);
GO

-- Creating foreign key on [LegalUnitId] in table 'Products'
ALTER TABLE [dbo].[Products]
ADD CONSTRAINT [FK_LegalUnitsProducts]
    FOREIGN KEY ([LegalUnitId])
    REFERENCES [dbo].[LegalUnits]
        ([LegalUnitId])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_LegalUnitsProducts'
CREATE INDEX [IX_FK_LegalUnitsProducts]
ON [dbo].[Products]
    ([LegalUnitId]);
GO

-- Creating foreign key on [ItemId] in table 'ItemLocalisations'
ALTER TABLE [dbo].[ItemLocalisations]
ADD CONSTRAINT [FK_ItemsItemLocalisation]
    FOREIGN KEY ([ItemId])
    REFERENCES [dbo].[Items]
        ([ItemId])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_ItemsItemLocalisation'
CREATE INDEX [IX_FK_ItemsItemLocalisation]
ON [dbo].[ItemLocalisations]
    ([ItemId]);
GO

-- Creating foreign key on [ItemId] in table 'ItemPrices'
ALTER TABLE [dbo].[ItemPrices]
ADD CONSTRAINT [FK_ItemsItemPrices]
    FOREIGN KEY ([ItemId])
    REFERENCES [dbo].[Items]
        ([ItemId])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_ItemsItemPrices'
CREATE INDEX [IX_FK_ItemsItemPrices]
ON [dbo].[ItemPrices]
    ([ItemId]);
GO

-- Creating foreign key on [PriceCodeId] in table 'ItemPrices'
ALTER TABLE [dbo].[ItemPrices]
ADD CONSTRAINT [FK_PriceCodesItemPrices]
    FOREIGN KEY ([PriceCodeId])
    REFERENCES [dbo].[PriceCodes]
        ([PriceCodeId])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_PriceCodesItemPrices'
CREATE INDEX [IX_FK_PriceCodesItemPrices]
ON [dbo].[ItemPrices]
    ([PriceCodeId]);
GO

-- Creating foreign key on [CurrencyId] in table 'ItemPrices'
ALTER TABLE [dbo].[ItemPrices]
ADD CONSTRAINT [FK_ItemPricesCurrencies]
    FOREIGN KEY ([CurrencyId])
    REFERENCES [dbo].[Currencies]
        ([CurrencyId])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_ItemPricesCurrencies'
CREATE INDEX [IX_FK_ItemPricesCurrencies]
ON [dbo].[ItemPrices]
    ([CurrencyId]);
GO

-- Creating foreign key on [MerchantId] in table 'Stores'
ALTER TABLE [dbo].[Stores]
ADD CONSTRAINT [FK_MerchantsStores]
    FOREIGN KEY ([MerchantId])
    REFERENCES [dbo].[Merchants]
        ([MerchantId])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_MerchantsStores'
CREATE INDEX [IX_FK_MerchantsStores]
ON [dbo].[Stores]
    ([MerchantId]);
GO

-- Creating foreign key on [PriceCodesPriceCodeId] in table 'Stores'
ALTER TABLE [dbo].[Stores]
ADD CONSTRAINT [FK_PriceCodesStores]
    FOREIGN KEY ([PriceCodesPriceCodeId])
    REFERENCES [dbo].[PriceCodes]
        ([PriceCodeId])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_PriceCodesStores'
CREATE INDEX [IX_FK_PriceCodesStores]
ON [dbo].[Stores]
    ([PriceCodesPriceCodeId]);
GO

-- Creating foreign key on [Item_ItemId] in table 'ItemDescriptions'
ALTER TABLE [dbo].[ItemDescriptions]
ADD CONSTRAINT [FK_ItemDescriptionsItems]
    FOREIGN KEY ([Item_ItemId])
    REFERENCES [dbo].[Items]
        ([ItemId])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_ItemDescriptionsItems'
CREATE INDEX [IX_FK_ItemDescriptionsItems]
ON [dbo].[ItemDescriptions]
    ([Item_ItemId]);
GO

-- Creating foreign key on [LegalUnit_LegalUnitId] in table 'Stores'
ALTER TABLE [dbo].[Stores]
ADD CONSTRAINT [FK_LegalUnitsStores]
    FOREIGN KEY ([LegalUnit_LegalUnitId])
    REFERENCES [dbo].[LegalUnits]
        ([LegalUnitId])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_LegalUnitsStores'
CREATE INDEX [IX_FK_LegalUnitsStores]
ON [dbo].[Stores]
    ([LegalUnit_LegalUnitId]);
GO

-- Creating foreign key on [LocalisationId] in table 'ItemDescriptions'
ALTER TABLE [dbo].[ItemDescriptions]
ADD CONSTRAINT [FK_ItemDescriptionsItemLocalisation]
    FOREIGN KEY ([LocalisationId])
    REFERENCES [dbo].[ItemLocalisations]
        ([ItemLocalisationId])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_ItemDescriptionsItemLocalisation'
CREATE INDEX [IX_FK_ItemDescriptionsItemLocalisation]
ON [dbo].[ItemDescriptions]
    ([LocalisationId]);
GO

-- Creating foreign key on [StoresStoreId] in table 'StoreItems'
ALTER TABLE [dbo].[StoreItems]
ADD CONSTRAINT [FK_StoresStoreItems]
    FOREIGN KEY ([StoresStoreId])
    REFERENCES [dbo].[Stores]
        ([StoreId])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_StoresStoreItems'
CREATE INDEX [IX_FK_StoresStoreItems]
ON [dbo].[StoreItems]
    ([StoresStoreId]);
GO

-- Creating foreign key on [StoreItemsStoreItemId] in table 'Items'
ALTER TABLE [dbo].[Items]
ADD CONSTRAINT [FK_StoreItemsItems]
    FOREIGN KEY ([StoreItemsStoreItemId])
    REFERENCES [dbo].[StoreItems]
        ([StoreItemId])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_StoreItemsItems'
CREATE INDEX [IX_FK_StoreItemsItems]
ON [dbo].[Items]
    ([StoreItemsStoreItemId]);
GO

-- Creating foreign key on [CurrencyId] in table 'Orders'
ALTER TABLE [dbo].[Orders]
ADD CONSTRAINT [FK_CurrencyID]
    FOREIGN KEY ([CurrencyId])
    REFERENCES [dbo].[Currencies]
        ([CurrencyId])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_CurrencyID'
CREATE INDEX [IX_FK_CurrencyID]
ON [dbo].[Orders]
    ([CurrencyId]);
GO

-- Creating foreign key on [StoreId] in table 'Terminals'
ALTER TABLE [dbo].[Terminals]
ADD CONSTRAINT [FK_StoresTerminals]
    FOREIGN KEY ([StoreId])
    REFERENCES [dbo].[Stores]
        ([StoreId])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_StoresTerminals'
CREATE INDEX [IX_FK_StoresTerminals]
ON [dbo].[Terminals]
    ([StoreId]);
GO

-- Creating foreign key on [Terminal_TerminalId] in table 'Orders'
ALTER TABLE [dbo].[Orders]
ADD CONSTRAINT [FK_TerminalsOrders]
    FOREIGN KEY ([Terminal_TerminalId])
    REFERENCES [dbo].[Terminals]
        ([TerminalId])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_TerminalsOrders'
CREATE INDEX [IX_FK_TerminalsOrders]
ON [dbo].[Orders]
    ([Terminal_TerminalId]);
GO

-- Creating foreign key on [MerchantId] in table 'Orders'
ALTER TABLE [dbo].[Orders]
ADD CONSTRAINT [FK_MerchantsOrders]
    FOREIGN KEY ([MerchantId])
    REFERENCES [dbo].[Merchants]
        ([MerchantId])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_MerchantsOrders'
CREATE INDEX [IX_FK_MerchantsOrders]
ON [dbo].[Orders]
    ([MerchantId]);
GO

-- Creating foreign key on [StoreId] in table 'Orders'
ALTER TABLE [dbo].[Orders]
ADD CONSTRAINT [FK_StoresOrders]
    FOREIGN KEY ([StoreId])
    REFERENCES [dbo].[Stores]
        ([StoreId])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_StoresOrders'
CREATE INDEX [IX_FK_StoresOrders]
ON [dbo].[Orders]
    ([StoreId]);
GO

-- Creating foreign key on [OrderId] in table 'OrderLines'
ALTER TABLE [dbo].[OrderLines]
ADD CONSTRAINT [FK_OrdersOrderLines]
    FOREIGN KEY ([OrderId])
    REFERENCES [dbo].[Orders]
        ([OrderId])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_OrdersOrderLines'
CREATE INDEX [IX_FK_OrdersOrderLines]
ON [dbo].[OrderLines]
    ([OrderId]);
GO

-- Creating foreign key on [OrderLine_OrderLineId] in table 'Items'
ALTER TABLE [dbo].[Items]
ADD CONSTRAINT [FK_ItemsOrderLines]
    FOREIGN KEY ([OrderLine_OrderLineId])
    REFERENCES [dbo].[OrderLines]
        ([OrderLineId])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_ItemsOrderLines'
CREATE INDEX [IX_FK_ItemsOrderLines]
ON [dbo].[Items]
    ([OrderLine_OrderLineId]);
GO

-- Creating foreign key on [CurrencyId] in table 'OrderLines'
ALTER TABLE [dbo].[OrderLines]
ADD CONSTRAINT [FK_CurrenciesOrderLines]
    FOREIGN KEY ([CurrencyId])
    REFERENCES [dbo].[Currencies]
        ([CurrencyId])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_CurrenciesOrderLines'
CREATE INDEX [IX_FK_CurrenciesOrderLines]
ON [dbo].[OrderLines]
    ([CurrencyId]);
GO

-- Creating foreign key on [OrderLineId] in table 'OrderPaymentLines'
ALTER TABLE [dbo].[OrderPaymentLines]
ADD CONSTRAINT [FK_OrderLinesOrderPaymentLines]
    FOREIGN KEY ([OrderLineId])
    REFERENCES [dbo].[OrderLines]
        ([OrderLineId])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_OrderLinesOrderPaymentLines'
CREATE INDEX [IX_FK_OrderLinesOrderPaymentLines]
ON [dbo].[OrderPaymentLines]
    ([OrderLineId]);
GO

-- Creating foreign key on [PaymentId] in table 'OrderPaymentLines'
ALTER TABLE [dbo].[OrderPaymentLines]
ADD CONSTRAINT [FK_PaymentsOrderPaymentLines]
    FOREIGN KEY ([PaymentId])
    REFERENCES [dbo].[Payments]
        ([PaymentId])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_PaymentsOrderPaymentLines'
CREATE INDEX [IX_FK_PaymentsOrderPaymentLines]
ON [dbo].[OrderPaymentLines]
    ([PaymentId]);
GO

-- Creating foreign key on [Currency_CurrencyId] in table 'OrderPaymentLines'
ALTER TABLE [dbo].[OrderPaymentLines]
ADD CONSTRAINT [FK_CurrenciesOrderPaymentLines]
    FOREIGN KEY ([Currency_CurrencyId])
    REFERENCES [dbo].[Currencies]
        ([CurrencyId])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_CurrenciesOrderPaymentLines'
CREATE INDEX [IX_FK_CurrenciesOrderPaymentLines]
ON [dbo].[OrderPaymentLines]
    ([Currency_CurrencyId]);
GO

-- Creating foreign key on [OrderId] in table 'Payments'
ALTER TABLE [dbo].[Payments]
ADD CONSTRAINT [FK_OrdersPayments]
    FOREIGN KEY ([OrderId])
    REFERENCES [dbo].[Orders]
        ([OrderId])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_OrdersPayments'
CREATE INDEX [IX_FK_OrdersPayments]
ON [dbo].[Payments]
    ([OrderId]);
GO

-- --------------------------------------------------
-- Script has ended
-- --------------------------------------------------