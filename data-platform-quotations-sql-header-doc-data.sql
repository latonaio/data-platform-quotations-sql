CREATE TABLE `data_platform_quotations_header_pdf_data`       -- 新規追加
(
--`BusinessPartner`                int(10) NOT NULL,          -- 新規追加
  `Quotation`                      int(16) NOT NULL,          -- 新規追加
  `DocType`                        varchar(20) NOT NULL,
  `DocVersionID`                   int(4) NOT NULL,
  `DocID`                          varchar(100) NOT NULL,
  `FileExtension`                  varchar(20) NOT NULL,
  `FileName`                       varchar(200) DEFAULT NULL,
  `FilePath`                       varchar(1000) DEFAULT NULL,
  `DocIssuerBusinessPartner`       int(12) DEFAULT NULL,
  
    PRIMARY KEY (`Quotation`, `DocType`, `DocVersionID`, `DocID`),
    
    CONSTRAINT `DataPlatformQuotationsHeaderDocData_fk` FOREIGN KEY (`Quotation`) REFERENCES `data_platform_quotations_header_data` (`Quotation`),
    CONSTRAINT `DataPlatformQuotationsHeaderDocDataDocType_fk` FOREIGN KEY (`DocType`) REFERENCES `data_platform_doc_type_doc_type_data` (`DocType`),
    CONSTRAINT `DataPlatformQuotationsHeaderDocDataDocIssuerBusinessPartner_fk` FOREIGN KEY (`DocIssuerBusinessPartner`) REFERENCES `data_platform_business_partner_general_data` (`BusinessPartner`)
    
) ENGINE = InnoDB
  DEFAULT CHARSET = utf8mb4;
