CREATE TABLE `data_platform_quotations_partner_address_data`  -- 新規追加
(
    `BusinessPartner`         int(10) NOT NULL,           -- 新規追加
    `Quotation`               int(10) NOT NULL,           -- 新規追加
    `AddressID`               int(10) NOT NULL,           -- 新規追加
    `PostalCode`              varchar(10) DEFAULT NULL,   -- 新規追加
    `LocalRegion`             varchar(3) DEFAULT NULL,    -- 新規追加
    `Country`                 varchar(3) DEFAULT NULL,    -- 新規追加
    `District`                varchar(6) DEFAULT NULL,    -- 新規追加
    `StreetName`              varchar(200) DEFAULT NULL,  -- 新規追加
    `CityName`                varchar(200) DEFAULT NULL,  -- 新規追加
    `Builiding`               varchar(100) DEFAULT NULL,  -- 新規追加
    `Floor`                   int(4) DEFAULT NULL,        -- 新規追加
    `Room`                    int(8) DEFAULT NULL,        -- 新規追加
    PRIMARY KEY (`BusinessPartner`, `Quotation`, `AddressID`),
    CONSTRAINT `DataPlatformQuotationsPartnerAddressData_fk` FOREIGN KEY (`BusinessPartner`, `Quotation`) REFERENCES `data_platform_quotations_header_data` (`BusinessPartner`, `Quotation`)
) ENGINE = InnoDB
  DEFAULT CHARSET = utf8mb4;