# Azure homework

This is an ETL pipeline using Azure Blob Storage, Azure Data Factory (ADF), and Azure Synapse Analytics. The goal is to automate the
process of ingesting, transforming, and loading data from the NYC Airbnb dataset CSV file.

The pipeline uses Blob Storage for storing data, ADF for data transformation and orchestration, and Synapse Analytics for querying.

To use this you need to do the following:
1. Create Free-Tier account in Azure.
2. Create resource group.
3. Create storage account, within that account create a container and load csv files.
4. Create Synapse workspace with sql pool (serverless option didn't work for me).
5. In Synapse Studio create a sql script and use statements from `sql-scripts.sql` to create tables within sql pool.
6. Set up Azure Data Factory, open Azure Data Factory Studio.
7. Link Blob Storage and Synapse Analytics, add Datasets pointing to csv files container and both raw and transformed data tables.
8. Create pipeline with `Copy Data` and `Data Flow` activities (all pipeline settings are in `pipeline_config` folder).
9. Add triggers to run pipeline when new files are added and schedule pipeline to run daily.
10. In Azure Monitor create an alert when pipeline fails.


### Storage account container example:
![img.png](img.png)

### Pipeline with retry policy
![img_2.png](img_2.png)

### Data flow details with error handling
![img_3.png](img_3.png)

### Successful run of data flow
![img_4.png](img_4.png)

### Transformed data
![img_6.png](img_6.png)

### Transformed data without invalid values in price, latitude and longitude columns.
![img_1.png](img_1.png)

### Alert rule details
![img_5.png](img_5.png)