CREATE TABLE `data_platform_quotations_header_partner_plant_data`  -- 新規追加
(
  `BusinessPartner`                  int(10) NOT NULL,         -- 新規追加
  `Quotation`                        int(10) NOT NULL,         -- 新規追加
  `PartnerFunction`                  varchar(2) NOT NULL,      -- 新規追加
  `PartnerFunctionBusinessPartner`   int(10) NOT NULL,         -- 新規追加
  `Plant`                            varchar(4) DEFAULT NULL,  -- 新規追加
    PRIMARY KEY (`BusinessPartner`, `Quotation`, `PartnerFunction`, `PartnerFunctionBusinessPartner`),
    CONSTRAINT `DataPlatformQuotationsHeaderPartnerPlantData_fk` FOREIGN KEY (`BusinessPartner`, `Quotation`, `PartnerFunction`) REFERENCES `data_platform_quotations_header_partner_data` (`BusinessPartner`, `Quotation`, `PartnerFunction`)
) ENGINE = InnoDB
  DEFAULT CHARSET = utf8mb4;
