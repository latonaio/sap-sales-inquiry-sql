CREATE TABLE `sap_sales_inquiry_header_partner_data`
(
  `SalesInquiry`            varchar(10) NOT NULL,
  `PartnerFunction`         varchar(2) NOT NULL,
  `Customer`                varchar(10) DEFAULT NULL,
  `Supplier`                varchar(10) DEFAULT NULL,
  PRIMARY KEY (`SalesInquiry`, `PartnerFunction`),
  CONSTRAINT `SAPSalesInquiryHeaderPartnerData_fk` FOREIGN KEY (`SalesInquiry`) REFERENCES `sap_sales_inqriry_header_data` (`SalesInquiry`)
) ENGINE = InnoDB
  DEFAULT CHARSET = utf8mb4;
