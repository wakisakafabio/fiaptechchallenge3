CREATE EXTERNAL TABLE bank_churn_fabiowakisaka_db.bank_churn_data (
  customer_id STRING,
  credit_score INT,
  country STRING,
  gender STRING,
  age INT,
  tenure INT,
  balance DOUBLE,
  products_number INT,
  credit_card INT,
  active_member INT,
  estimated_salary DOUBLE,
  churn INT
)
ROW FORMAT SERDE 'org.apache.hadoop.hive.serde2.OpenCSVSerde'
WITH SERDEPROPERTIES (
  'separatorChar' = ',',
  'quoteChar' = '"',
  'escapeChar' = '\\'
)
LOCATION 's3://bank-churn-fabiowakisaka-bucket/raw/'
TBLPROPERTIES ('skip.header.line.count'='1');
