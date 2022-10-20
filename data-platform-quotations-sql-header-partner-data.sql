CREATE TABLE `data_platform_quotations_header_partner_data`
(
  `BusinessPartner`                 int(10) NOT NULL,           -- 新規追加
  `Quotation`                       int(10) NOT NULL,           -- 名称変更
  `PartnerFunction`                 varchar(2) NOT NULL,
  `PartnerFunctionBusinessPartner`  int(10) DEFAULT NULL,       -- 名称変更
  `BusinessPartnerFullName`         varchar(200) DEFAULT NULL,  -- 新規追加
  `BusinessPartnerName`             varchar(100) DEFAULT NULL,  -- 新規追加
  `AddressID`                       int(10) DEFAULT NULL,       -- 新規追加
    PRIMARY KEY (`BusinessPartner`, `Quotation`, `PartnerFunction`),
    CONSTRAINT `DataPlatformQuotationsHeaderPartnerData_fk` FOREIGN KEY (`BusinessPartner`, `Quotation`) REFERENCES `data_platform_quotations_header_data` (`BusinessPartner`, `Quotation`)
) ENGINE = InnoDB
  DEFAULT CHARSET = utf8mb4;
