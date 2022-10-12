CREATE TABLE `data_platform_quotations_item_pricing_element_data`
(
  `BusinessPartner`                int(10) NOT NULL,          -- 新規追加
  `Quotation`                      int(10) NOT NULL,          -- 名称変更
  `QuotationItem`                  int(6) NOT NULL,           -- 名称変更
  `PricingProcedureStep`           int(3) NOT NULL,
  `PricingProcedureCounter`        int(3) NOT NULL,
  `ConditionType`                  varchar(4) DEFAULT NULL,
  `PriceConditionDeterminationDte` varchar(80) DEFAULT NULL,
  `ConditionRateValue`             varchar(25) DEFAULT NULL,
  `ConditionCurrency`              varchar(5) DEFAULT NULL,
  `ConditionRecord`                int(10) DEFAULT NULL,
  `ConditionSequentialNumber`      int(3) DEFAULT NULL,
  `TaxCode`                        varchar(2) DEFAULT NULL,
  `TransactionCurrency`            varchar(5) DEFAULT NULL,
  `ConditionIsManuallyChanged`     tinyint(1) DEFAULT NULL,
    PRIMARY KEY (`BusinessPartner`, `Quotation`, `QuotationItem`, `PricingProcedureStep`, `PricingProcedureCounter`),
    CONSTRAINT `DataPlatformOrdersItemPricingElementData_fk` FOREIGN KEY (`BusinessPartner`, `Quotation`, `QuotationItem`) REFERENCES `data_platform_quotations_item_data` (`BusinessPartner`, `Quotation`, `QuotationItem`)
) ENGINE = InnoDB
  DEFAULT CHARSET = utf8mb4;
