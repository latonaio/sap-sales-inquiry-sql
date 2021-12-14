CREATE TABLE `sap-sales-inquiry-partner-data`
(
  `SalesInquiry`            varchar(10) DEFAULT NULL,
  `PartnerFunction`         varchar(2) DEFAULT NULL,
  `Customer`                varchar(10) DEFAULT NULL,
  `Supplier`                varchar(10) DEFAULT NULL,
  PRIMARY KEY (`SalesInquiry`),
  CONSTRAINT `SalesInquiry_fk` FOREIGN KEY (`SalesInquiry`) REFERENCES `sap-sales-inqriry-header-data` (`SalesInquiry`)
) ENGINE = InnoDB
  DEFAULT CHARSET = utf8mb4;
