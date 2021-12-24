CREATE TABLE `sap-sales-inquiry-partner-data`
(
  `SalesInquiry`            varchar(10) NOT NULL,
  `PartnerFunction`         varchar(2) NOT NULL,
  `Customer`                varchar(10) DEFAULT NULL,
  `Supplier`                varchar(10) DEFAULT NULL,
  PRIMARY KEY (`SalesInquiry`, `PartnerFunction`),
  CONSTRAINT `SalesInquiry_fk` FOREIGN KEY (`SalesInquiry`) REFERENCES `sap-sales-inqriry-header-data` (`SalesInquiry`)
) ENGINE = InnoDB
  DEFAULT CHARSET = utf8mb4;
