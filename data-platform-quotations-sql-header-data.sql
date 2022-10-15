CREATE TABLE `data_platform_quotations_header_data`
(
    `BusinessPartner`                 int(10) NOT NULL,         -- 新規追加
    `Quotation`                       int(10) NOT NULL,
    `QuotationType`                   varchar(4) DEFAULT NULL,
    `QuotationDate`                   varchar(80) DEFAULT NULL,
    `PurchaseOrganization`            varchar(4) DEFAULT NULL,
    `SalesOrganization`               varchar(4) DEFAULT NULL,
    `DistributionChannel`             varchar(2) DEFAULT NULL,
    `Division`                        varchar(2) DEFAULT NULL,
    `District`                        varchar(6) DEFAULT NULL,
    `Customer`                        int(10) DEFAULT NULL,
    `Supplier`                        int(10) DEFAULT NULL,
    `CreationDate`                    varchar(80) DEFAULT NULL,
    `LastChangeDate`                  varchar(80) DEFAULT NULL,
    `SalesExternalDocumentID`         varchar(40) DEFAULT NULL,  -- 新規追加
    `PurchaseExternalDocumentID`      varchar(40) DEFAULT NULL,  -- 新規追加        
    `TotalNetAmount`                  varchar(13) DEFAULT NULL,
    `TransactionCurrency`             varchar(5) DEFAULT NULL,
    `PricingDate`                     varchar(80) DEFAULT NULL,
    `RequestedDeliveryDate`           varchar(80) DEFAULT NULL,
    `BindingPeriodValidityStartDate`  varchar(80) DEFAULT NULL,
    `BindingPeriodValidityEndDate`    varchar(80) DEFAULT NULL,
    `OrderProbabilityInPercent`       varchar(3) DEFAULT NULL, -- 名称変更
    `ExpectedOrderNetAmount`          varchar(13) DEFAULT NULL,
    `Incoterms`                       varchar(3) DEFAULT NULL, -- 名称変更
    `PaymentTerms`                    varchar(4) DEFAULT NULL,
    `PaymentMethod`                   varchar(1) DEFAULT NULL,
    `BPTaxClassification1`            varchar(1) DEFAULT NULL,
    `ReferenceInquiry`                int(10) DEFAULT NULL,
    PRIMARY KEY (`BusinessPartner`, `SalesQuotation`)
) ENGINE = InnoDB
  DEFAULT CHARSET = utf8mb4;
