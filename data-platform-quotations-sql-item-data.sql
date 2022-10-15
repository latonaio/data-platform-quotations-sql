CREATE TABLE `data_platform_quotations_item_data`
(
  `BusinessPartner`                int(10) NOT NULL,          -- 新規追加
  `Quotation`                      int(10) NOT NULL,          -- 名称変更
  `QuotationItem`                  int(6) NOT NULL,           -- 名称変更
  `QuotationItemCategory`          varchar(4) DEFAULT NULL,   -- 名称変更
  `QuotationItemText`              varchar(100) DEFAULT NULL, -- 名称変更
  `Product`                        varchar(40) DEFAULT NULL,  -- 名称変更
  `ProductByCustomer`              varchar(35) DEFAULT NULL,  -- 名称変更
  `QuotationQuantity`              varchar(17) DEFAULT NULL,  -- 名称変更
  `QuotationQuantityUnit`          varchar(3) DEFAULT NULL,   -- 名称変更
  `ItemOrderProbabilityInPercent`  varchar(3) DEFAULT NULL,
  `ItemGrossWeight`                varchar(17) DEFAULT NULL,
  `ItemNetWeight`                  varchar(17) DEFAULT NULL,
  `ItemWeightUnit`                 varchar(3) DEFAULT NULL,
  `TransactionCurrency`            varchar(5) DEFAULT NULL,
  `NetAmount`                      varchar(13) DEFAULT NULL,
  `ProductGroup`                   varchar(9) DEFAULT NULL,
  `ProductPricingGroup`            varchar(2) DEFAULT NULL,
  `Batch`                          varchar(10) DEFAULT NULL,
  `IssuingPlant`                   varchar(4) DEFAULT NULL,  -- 新規追加
  `IssuingPlantStorageLocation`    varchar(4) DEFAULT NULL,  -- 新規追加
  `ReceivingPlant`                 varchar(4) DEFAULT NULL,  -- 新規追加
  `ReceivingPlantStorageLocation`  varchar(4) DEFAULT NULL,  -- 新規追加
  `Incoterms`       　　　　　　　　　varchar(3) DEFAULT NULL,  -- 名称変更
  `PaymentTerms`                   varchar(4) DEFAULT NULL,  -- 名称変更
  `ProductTaxClassification1`      varchar(1) DEFAULT NULL,
  `Project`                        varchar(24) DEFAULT NULL, -- 新規追加
  `ProfitCenter`                   varchar(10) DEFAULT NULL,
  `ReferenceInquiry`               int(10) DEFAULT NULL,     -- 名称変更
  `ReferenceInquiryItem`           int(6) DEFAULT NULL,      -- 名称変更
  PRIMARY KEY (`BusinessPartner`, `Quotation`, `QuotationItem`),
  CONSTRAINT `DataPlatformQuotationsItemData_fk` FOREIGN KEY (`BusinessPartner`, `Quotation`) REFERENCES `data_platform_quotations_header_data` (`BusinessPartner`, `Quotation`)
) ENGINE = InnoDB
DEFAULT CHARSET = utf8mb4;
