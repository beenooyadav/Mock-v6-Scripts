CREATE EXTERNAL TABLE `udm_130_address`(
  `id` string COMMENT 'from deserializer', 
  `tenantid` int COMMENT 'from deserializer', 
  `sourcesystemid` string COMMENT 'from deserializer', 
  `sourceaddressnumber` string COMMENT 'from deserializer', 
  `address1` string COMMENT 'from deserializer', 
  `address2` string COMMENT 'from deserializer', 
  `city` string COMMENT 'from deserializer', 
  `zip` string COMMENT 'from deserializer', 
  `zipext` string COMMENT 'from deserializer', 
  `state` string COMMENT 'from deserializer', 
  `country` string COMMENT 'from deserializer', 
  `countrycode` string COMMENT 'from deserializer', 
  `certified` string COMMENT 'from deserializer', 
  `dpvconfirm` string COMMENT 'from deserializer', 
  `deliverypointcode` string COMMENT 'from deserializer', 
  `datecertified` string COMMENT 'from deserializer', 
  `suite` string COMMENT 'from deserializer', 
  `carrierroute` string COMMENT 'from deserializer', 
  `cmra` string COMMENT 'from deserializer', 
  `deliverypointcheckdigit` string COMMENT 'from deserializer', 
  `errorcode` string COMMENT 'from deserializer', 
  `errorstring` string COMMENT 'from deserializer', 
  `lacs` string COMMENT 'from deserializer', 
  `rbdi` string COMMENT 'from deserializer', 
  `latitude` string COMMENT 'from deserializer', 
  `longitude` string COMMENT 'from deserializer', 
  `ncoadatemodified` string COMMENT 'from deserializer', 
  `ncoadateupdate` string COMMENT 'from deserializer', 
  `movetype` string COMMENT 'from deserializer', 
  `movedate` string COMMENT 'from deserializer', 
  `matchflag` string COMMENT 'from deserializer', 
  `deleteflag` boolean COMMENT 'from deserializer', 
  `rowcreated` bigint COMMENT 'from deserializer', 
  `rowmodified` bigint COMMENT 'from deserializer', 
  `batch` string COMMENT 'from deserializer', 
  `name` string COMMENT 'from deserializer', 
  `type` string COMMENT 'from deserializer', 
  `source` string COMMENT 'from deserializer', 
  `addresstype` string COMMENT 'from deserializer')
ROW FORMAT SERDE 
  'org.apache.hadoop.hive.hbase.SaltedHBaseSerDe' 
STORED BY 
  'org.apache.hadoop.hive.hbase.SaltedHBaseStorageHandler' 
WITH SERDEPROPERTIES ( 
  'hbase.columns.mapping'=':key,f:s1,f:s2,f:s3,f:s4,f:s5,f:s6,f:s7,f:s8,f:s9,f:s10,f:s11,f:s12,f:s13,f:s14,f:s15,f:s16,f:s17,f:s18,f:s19,f:s20,f:s21,f:s22,f:s23,f:s24,f:s25,f:s26,f:s27,f:s28,f:s29,f:s30,f:s31,f:s32,f:s33,f:s34,f:s35,f:s36,f:s37,f:s38', 
  'serialization.format'='1')
LOCATION
  'hdfs://agiloneCluster:8020/user/hive/warehouse/tenant_130.db/udm_130_address'
TBLPROPERTIES (
  'COLUMN_STATS_ACCURATE'='false', 
  'agilone.batch'='1', 
  'agilone.batch.end'='9223372036854775807', 
  'agilone.partition'='40', 
  'agilone.ssid'='0', 
  'agilone.table'='-494901133', 
  'agilone.tenant'='130', 
  'hbase.table.name'='pod_GeorgiaPacific', 
  'numFiles'='0', 
  'numRows'='-1', 
  'rawDataSize'='-1', 
  'totalSize'='0', 
  'transient_lastDdlTime'='1519949631')
