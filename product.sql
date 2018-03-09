CREATE EXTERNAL TABLE `udm_130_Product`(
  `id` string COMMENT 'from deserializer', 
  `tenantid` int COMMENT 'from deserializer', 
  `sourcesystemid` string COMMENT 'from deserializer', 
  `sourceproductnumber` string COMMENT 'from deserializer', 
  `name` string COMMENT 'from deserializer', 
  `description` string COMMENT 'from deserializer', 
  `producturl` string COMMENT 'from deserializer', 
  `imageurl` string COMMENT 'from deserializer', 
  `parentproductid` string COMMENT 'from deserializer', 
  `parentproductnumber` string COMMENT 'from deserializer', 
  `status` string COMMENT 'from deserializer', 
  `bundlenumber` string COMMENT 'from deserializer', 
  `brandname` string COMMENT 'from deserializer', 
  `sourcebrandnumber` string COMMENT 'from deserializer', 
  `msrp` decimal(18,4) COMMENT 'from deserializer', 
  `listprice` decimal(18,4) COMMENT 'from deserializer', 
  `saleprice` decimal(18,4) COMMENT 'from deserializer', 
  `salecondition` string COMMENT 'from deserializer', 
  `availability` string COMMENT 'from deserializer', 
  `availableqty` int COMMENT 'from deserializer', 
  `size` string COMMENT 'from deserializer', 
  `color` string COMMENT 'from deserializer', 
  `weight` decimal(18,4) COMMENT 'from deserializer', 
  `datecreated` bigint COMMENT 'from deserializer', 
  `datemodified` bigint COMMENT 'from deserializer', 
  `deleteflag` boolean COMMENT 'from deserializer', 
  `rowcreated` bigint COMMENT 'from deserializer', 
  `rowmodified` bigint COMMENT 'from deserializer', 
  `batch` string COMMENT 'from deserializer', 
  `recostatus` string COMMENT 'from deserializer', 
  `source` string COMMENT 'from deserializer')
ROW FORMAT SERDE 
  'org.apache.hadoop.hive.hbase.SaltedHBaseSerDe' 
STORED BY 
  'org.apache.hadoop.hive.hbase.SaltedHBaseStorageHandler' 
WITH SERDEPROPERTIES ( 
  'hbase.columns.mapping'=':key,f:s1,f:s2,f:s3,f:s4,f:s5,f:s6,f:s7,f:s8,f:s9,f:s10,f:s11,f:s12,f:s13,f:s14,f:s15,f:s16,f:s17,f:s18,f:s19,f:s20,f:s21,f:s22,f:s23,f:s24,f:s25,f:s26,f:s27,f:s28,f:s29,f:s30', 
  'serialization.format'='1')
LOCATION
  'hdfs://agiloneCluster:8020/user/hive/warehouse/tenant_130.db/udm_130_product'
TBLPROPERTIES (
  'COLUMN_STATS_ACCURATE'='false', 
  'agilone.batch'='1', 
  'agilone.batch.end'='9223372036854775807', 
  'agilone.partition'='40', 
  'agilone.ssid'='0', 
  'agilone.table'='343316846', 
  'agilone.tenant'='130', 
  'hbase.table.name'='pod_GeorgiaPacific', 
  'numFiles'='0', 
  'numRows'='-1', 
  'rawDataSize'='-1', 
  'totalSize'='0', 
  'transient_lastDdlTime'='1519949629')
