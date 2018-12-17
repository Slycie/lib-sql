# id_types
CREATE EXTERNAL TABLE `mapping_id_types`(
  `source_provider` string, 
  `business_line` string, 
  `source_id` int, 
  `source_identification` string, 
  `target_identification` string)
ROW FORMAT DELIMITED 
  FIELDS TERMINATED BY ',' 
STORED AS INPUTFORMAT 
  'org.apache.hadoop.mapred.TextInputFormat' 
OUTPUTFORMAT 
  'org.apache.hadoop.hive.ql.io.HiveIgnoreKeyTextOutputFormat'
LOCATION
  's3://selina-data-lake/mapping/mapping_id_types'
TBLPROPERTIES (
  'CrawlerSchemaDeserializerVersion'='1.0', 
  'CrawlerSchemaSerializerVersion'='1.0', 
  'UPDATED_BY_CRAWLER'='mapping_id_types', 
  'averageRecordSize'='65', 
  'classification'='csv', 
  'columnsOrdered'='true', 
  'compressionType'='none', 
  'delimiter'=',', 
  'objectCount'='1', 
  'recordCount'='29', 
  'sizeKey'='1919', 
  'skip.header.line.count'='1', 
  'transient_lastDdlTime'='1543528604', 
  'typeOfData'='file')

# winks room categories 
CREATE EXTERNAL TABLE `mapping_winks_room_categories`(
  `source_provider` string, 
  `business_line` string, 
  `source_id` int, 
  `source_room` string, 
  `room_type` string, 
  `target_room_sub_category` string, 
  `target_room_category` string, 
  `is_internal` smallint, 
  `min_sqm` decimal(9,2))
ROW FORMAT DELIMITED 
  FIELDS TERMINATED BY ',' 
STORED AS INPUTFORMAT 
  'org.apache.hadoop.mapred.TextInputFormat' 
OUTPUTFORMAT 
  'org.apache.hadoop.hive.ql.io.HiveIgnoreKeyTextOutputFormat'
LOCATION
  's3://selina-data-lake/mapping/mapping_winks_room_categories'
TBLPROPERTIES (
  'transient_lastDdlTime'='1542623014')

# winks room categories
CREATE EXTERNAL TABLE `mapping_winks_room_categories`(
  `source_provider` string, 
  `business_line` string, 
  `source_id` int, 
  `source_room` string, 
  `room_type` string, 
  `target_room_sub_category` string, 
  `target_room_category` string, 
  `is_internal` smallint, 
  `min_sqm` decimal(9,2))
ROW FORMAT DELIMITED 
  FIELDS TERMINATED BY ',' 
STORED AS INPUTFORMAT 
  'org.apache.hadoop.mapred.TextInputFormat' 
OUTPUTFORMAT 
  'org.apache.hadoop.hive.ql.io.HiveIgnoreKeyTextOutputFormat'
LOCATION
  's3://selina-data-lake/mapping/mapping_winks_room_categories'
TBLPROPERTIES (
  'CrawlerSchemaDeserializerVersion'='1.0', 
  'CrawlerSchemaSerializerVersion'='1.0', 
  'UPDATED_BY_CRAWLER'='mapping_winks_room_categories', 
  'averageRecordSize'='65', 
  'classification'='csv', 
  'columnsOrdered'='true', 
  'compressionType'='none', 
  'delimiter'=',', 
  'objectCount'='1', 
  'recordCount'='29', 
  'sizeKey'='1919', 
  'skip.header.line.count'='1', 
  'transient_lastDdlTime'='1543528698', 
  'typeOfData'='file')

# winks product categories
CREATE EXTERNAL TABLE `mapping_winks_product_categories`(
  `source_provider` string, 
  `business_line` string, 
  `source_id` int, 
  `source_product_group` string, 
  `target_sub_category` string, 
  `target_category` string)
ROW FORMAT DELIMITED 
  FIELDS TERMINATED BY ',' 
STORED AS INPUTFORMAT 
  'org.apache.hadoop.mapred.TextInputFormat' 
OUTPUTFORMAT 
  'org.apache.hadoop.hive.ql.io.HiveIgnoreKeyTextOutputFormat'
LOCATION
  's3://selina-data-lake/mapping/mapping_winks_product_categories'
TBLPROPERTIES (
  'CrawlerSchemaDeserializerVersion'='1.0', 
  'CrawlerSchemaSerializerVersion'='1.0', 
  'UPDATED_BY_CRAWLER'='mapping_winks_product_categories', 
  'averageRecordSize'='65', 
  'classification'='csv', 
  'columnsOrdered'='true', 
  'compressionType'='none', 
  'delimiter'=',', 
  'objectCount'='1', 
  'recordCount'='29', 
  'sizeKey'='1919', 
  'skip.header.line.count'='1', 
  'transient_lastDdlTime'='1543528698', 
  'typeOfData'='file')

# booking statuses
CREATE EXTERNAL TABLE `mapping_booking_statuses`(
  `source_provider` string, 
  `business_line` string, 
  `source_id` int, 
  `source_status` string, 
  `status_english` string, 
  `target_status` string, 
  `is_final` bigint)
ROW FORMAT DELIMITED 
  FIELDS TERMINATED BY ',' 
STORED AS INPUTFORMAT 
  'org.apache.hadoop.mapred.TextInputFormat' 
OUTPUTFORMAT 
  'org.apache.hadoop.hive.ql.io.HiveIgnoreKeyTextOutputFormat'
LOCATION
  's3://selina-data-lake/mapping/mapping_booking_statuses'
TBLPROPERTIES (
  'CrawlerSchemaDeserializerVersion'='1.0', 
  'CrawlerSchemaSerializerVersion'='1.0', 
  'UPDATED_BY_CRAWLER'='mapping_booking_statuses', 
  'averageRecordSize'='65', 
  'classification'='csv', 
  'columnsOrdered'='true', 
  'compressionType'='none', 
  'delimiter'=',', 
  'objectCount'='1', 
  'recordCount'='29', 
  'sizeKey'='1919', 
  'skip.header.line.count'='1', 
  'transient_lastDdlTime'='1543526792', 
  'typeOfData'='file')

# payment methods
CREATE EXTERNAL TABLE `mapping_payment_methods`(
  `source_provider` string, 
  `business_line` string, 
  `source_id` int, 
  `source_method` string, 
  `method_english` string, 
  `target_method` string, 
  `is_internal` bigint)
ROW FORMAT DELIMITED 
  FIELDS TERMINATED BY ',' 
STORED AS INPUTFORMAT 
  'org.apache.hadoop.mapred.TextInputFormat' 
OUTPUTFORMAT 
  'org.apache.hadoop.hive.ql.io.HiveIgnoreKeyTextOutputFormat'
LOCATION
  's3://selina-data-lake/mapping/mapping_payment_methods/'
TBLPROPERTIES (
  'CrawlerSchemaDeserializerVersion'='1.0', 
  'CrawlerSchemaSerializerVersion'='1.0', 
  'UPDATED_BY_CRAWLER'='mapping_payment_methods', 
  'averageRecordSize'='55', 
  'classification'='csv', 
  'columnsOrdered'='true', 
  'compressionType'='none', 
  'delimiter'=',', 
  'objectCount'='1', 
  'recordCount'='81', 
  'sizeKey'='4485', 
  'skip.header.line.count'='1', 
  'typeOfData'='file')

# rezdy categories 
CREATE EXTERNAL TABLE `mapping_rezdy_categories`(
  `source_provider` string, 
  `business_line` string, 
  `source_id` int, 
  `source_category` string, 
  `target_sub_category` string, 
  `target_category` string, 
  `is_app_web` bigint, 
  `is_internal` bigint)
ROW FORMAT DELIMITED 
  FIELDS TERMINATED BY ',' 
STORED AS INPUTFORMAT 
  'org.apache.hadoop.mapred.TextInputFormat' 
OUTPUTFORMAT 
  'org.apache.hadoop.hive.ql.io.HiveIgnoreKeyTextOutputFormat'
LOCATION
  's3://selina-data-lake/mapping/mapping_rezdy_categories/'
TBLPROPERTIES (
  'CrawlerSchemaDeserializerVersion'='1.0', 
  'CrawlerSchemaSerializerVersion'='1.0', 
  'UPDATED_BY_CRAWLER'='mapping_rezdy_categories', 
  'averageRecordSize'='67', 
  'classification'='csv', 
  'columnsOrdered'='true', 
  'compressionType'='none', 
  'delimiter'=',', 
  'objectCount'='1', 
  'recordCount'='68', 
  'sizeKey'='4587', 
  'skip.header.line.count'='1', 
  'typeOfData'='file')