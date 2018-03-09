CREATE EXTERNAL TABLE `udm_130_ProductCategoryxref`(
  `id` string COMMENT 'from deserializer', 
  `tenantid` int COMMENT 'from deserializer', 
  `sourcesystemid` string COMMENT 'from deserializer', 
  `sourceproductnumber` string COMMENT 'from deserializer', 
  `productid` string COMMENT 'from deserializer', 
  `sourceproductcategorynumber` string COMMENT 'from deserializer', 
  `productcategoryid` string COMMENT 'from deserializer', 
  `deleteflag` boolean COMMENT 'from deserializer', 
  `rowcreated` bigint COMMENT 'from deserializer', 
  `rowmodified` bigint COMMENT 'from deserializer', 
  `batch` string COMMENT 'from deserializer', 
  `source` string COMMENT 'from deserializer')
ROW FORMAT SERDE 
  'org.apache.hadoop.hive.hbase.SaltedHBaseSerDe' 
STORED BY 
  'org.apache.hadoop.hive.hbase.SaltedHBaseStorageHandler' 
WITH SERDEPROPERTIES ( 
  'hbase.columns.mapping'=':key,f:s1,f:s2,f:s3,f:s4,f:s5,f:s6,f:s7,f:s8,f:s9,f:s10,f:s11', 
  'serialization.format'='1')
LOCATION
  'hdfs://agiloneCluster:8020/user/hive/warehouse/tenant_130.db/udm_130_productcategoryxref'
TBLPROPERTIES (
  'COLUMN_STATS_ACCURATE'='false', 
  'agilone.batch'='1', 
  'agilone.batch.end'='9223372036854775807', 
  'agilone.partition'='40', 
  'agilone.ssid'='0', 
  'agilone.table'='-132237433', 
  'agilone.tenant'='130', 
  'hbase.table.name'='pod_GeorgiaPacific', 
  'numFiles'='0', 
  'numRows'='-1', 
  'rawDataSize'='-1', 
  'totalSize'='0', 
  'transient_lastDdlTime'='1519949562')
