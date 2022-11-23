CREATE TABLE `data_platform_quotations_address_data`
(
--  `BusinessPartner`         int(10) NOT NULL,
    `Quotation`               int(16) NOT NULL,
    `AddressID`               int(12) NOT NULL,
    `PostalCode`              varchar(10) DEFAULT NULL,
    `LocalRegion`             varchar(3) DEFAULT NULL,
    `Country`                 varchar(3) DEFAULT NULL,
    `District`                varchar(6) DEFAULT NULL,
    `StreetName`              varchar(200) DEFAULT NULL,
    `CityName`                varchar(200) DEFAULT NULL,
    `Building`                varchar(100) DEFAULT NULL,
    `Floor`                   int(4) DEFAULT NULL,
    `Room`                    int(8) DEFAULT NULL,
    
    PRIMARY KEY (`Quotation`, `AddressID`),

    CONSTRAINT `DataPlatformQuotationsAddressData_fk` FOREIGN KEY (`Quotation`) REFERENCES `data_platform_quotations_header_data` (`Quotation`)

) ENGINE = InnoDB
  DEFAULT CHARSET = utf8mb4;
