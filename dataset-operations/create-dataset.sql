CREATE SCHEMA PROJECT_ID.DATASET_ID
  OPTIONS (
    default_kms_key_name = 'KMS_KEY_NAME',
    default_partition_expiration_days = PARTITION_EXPIRATION,
    default_table_expiration_days = TABLE_EXPIRATION,
    description = 'DESCRIPTION',
    labels = [('KEY_1','VALUE_1'),('KEY_2','VALUE_2')],
    location = 'LOCATION',
    max_time_travel_hours = HOURS,
    storage_billing_model = BILLING_MODEL);

/*
PROJECT_ID: your project ID
DATASET_ID: the ID of the dataset that you're creating
KMS_KEY_NAME: the name of the default Cloud Key Management Service key used to protect newly created tables in this dataset unless a different key is supplied at the time of creation. You cannot create a Google-encrypted table in a dataset with this parameter set.
PARTITION_EXPIRATION: the default lifetime (in days) for partitions in newly created partitioned tables. The default partition expiration has no minimum value. The expiration time evaluates to the partition's date plus the integer value. Any partition created in a partitioned table in the dataset is deleted PARTITION_EXPIRATION days after the partition's date. If you supply the time_partitioning_expiration option when you create or update a partitioned table, the table-level partition expiration takes precedence over the dataset-level default partition expiration.
TABLE_EXPIRATION: the default lifetime (in days) for newly created tables. The minimum value is 0.042 days (one hour). The expiration time evaluates to the current time plus the integer value. Any table created in the dataset is deleted TABLE_EXPIRATION days after its creation time. This value is applied if you do not set a table expiration when you create the table.
DESCRIPTION: a description of the dataset
KEY_1:VALUE_1: the key-value pair that you want to set as the first label on this dataset
KEY_2:VALUE_2: the key-value pair that you want to set as the second label
LOCATION: the dataset's location. After a dataset is created, the location can't be changed.
HOURS: the duration in hours of the time travel window for the new dataset. The HOURS value must be an integer expressed in multiples of 24 (48, 72, 96, 120, 144, 168) between 48 (2 days) and 168 (7 days). 168 hours is the default if this option isn't specified.
BILLING_MODEL: sets the storage billing model for the dataset. Set the BILLING_MODEL value to PHYSICAL to use physical bytes when calculating storage charges, or to LOGICAL to use logical bytes. LOGICAL is the default.
When you change a dataset's billing model, it takes 24 hours for the change to take effect.
Once you change a dataset's storage billing model, you must wait 14 days before you can change the storage billing model again
    */

CREATE SCHEMA PROJECT_ID.DATASET_ID
  OPTIONS (
   
    description = 'DESCRIPTION',
    labels = [('KEY_1','VALUE_1'),('KEY_2','VALUE_2')],
    location = 'asia-southeast1',--singapore
    );


--To List Datasets

SELECT
  schema_name
FROM
  PROJECT_ID.`region-REGION`.INFORMATION_SCHEMA.SCHEMATA;

--To Update Dataset Properties

 ALTER SCHEMA mydataset
 SET OPTIONS (
     description = 'Description of mydataset');
 