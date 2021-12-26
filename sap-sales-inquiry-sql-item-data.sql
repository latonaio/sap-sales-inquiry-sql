CREATE TABLE `sap_sales_inquiry_item_data`
(
  `SalesInquiry`                   varchar(10) NOT NULL,
  `SalesInquiryItem`               varchar(6) NOT NULL,
  `SalesInquiryItemCategory`       varchar(4) DEFAULT NULL,
  `SalesInquiryItemText`           varchar(40) DEFAULT NULL,
  `PurchaseOrderByCustomer`        varchar(35) DEFAULT NULL,
  `Material`                       varchar(40) DEFAULT NULL,
  `MaterialByCustomer`             varchar(35) DEFAULT NULL,
  `RequestedQuantity`              varchar(17) DEFAULT NULL,
  `RequestedQuantityUnit`          varchar(3) DEFAULT NULL,
  `ItemOrderProbabilityInPercent`  varchar(3) DEFAULT NULL,
  `ItemGrossWeight`                varchar(17) DEFAULT NULL,
  `ItemNetWeight`                  varchar(17) DEFAULT NULL,
  `ItemWeightUnit`                 varchar(3) DEFAULT NULL,
  `ItemVolume`                     varchar(17) DEFAULT NULL,
  `ItemVolumeUnit`                 varchar(3) DEFAULT NULL,
  `TransactionCurrency`            varchar(5) DEFAULT NULL,
  `NetAmount`                      varchar(13) DEFAULT NULL,
  `MaterialGroup`                  varchar(9) DEFAULT NULL,
  `Batch`                          varchar(10) DEFAULT NULL,
  `IncotermsClassification`        varchar(3) DEFAULT NULL,
  `CustomerPaymentTerms`           varchar(4) DEFAULT NULL,
  `SalesDocumentRjcnReason`        varchar(2) DEFAULT NULL,
  `WBSElement`                     varchar(24) DEFAULT NULL,
  `SDProcessStatus`                varchar(1) DEFAULT NULL,
  PRIMARY KEY (`SalesInquiry`, `SalesInquiryItem`),
  CONSTRAINT `SAPSalesInquiryItemData_fk` FOREIGN KEY (`SalesInquiry`) REFERENCES `sap_sales_inquiry_header_data` (`SalesInquiry`)
) ENGINE = InnoDB
DEFAULT CHARSET = utf8mb4;
