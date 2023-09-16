# Uber Business Intelligence Engineering Project via GCP

## Dashboard can be found [here](https://lookerstudio.google.com/reporting/31de764d-ec5a-43f4-a6e1-229e24c0ce40)
## Project Scope: 

* Design and implement an end-to-end **ETL data pipeline** integrating Uber ride-sharing data into **Google Big Query data warehouse** by utilizing Python, Google Cloud Storage, Google Mage compute engine, and Mage.ai data engineering tools.
* Construct a **compressive STAR data model** in Google Big Query with QuickDBD and SQL, optimizing data analytics processes.
* Develop an **interactive dashboard** using Google Looker Analytics to visualize key Uber KPIs such as driver productivity, rider retention, and revenue while enabling dynamic filtering capabilities for business users.

### Technologies: 
**Technology used:** SQL, Python, QuickDBD, Google Cloud Storage, Google Mage compute engine, Mage.AI Data Pipeline Tool, Google Big Query, Google Looker Analytics

### Services:
* Cloud Storage: Provides online file storage and allows users to retrieve data from the cloud, making it accessible from anywhere.
* Compute Engine: Offers a cloud computing service that provides virtual machines for running applications.
* Big Query: A cloud-based data warehouse designed for storing, analyzing, and querying large datasets.
* Looker: A web-based tool specializing in data visualization and reporting.
### Mage: 
Open pipeline tools (similar to airflow): Modern data engineering tool

## Architecture
![image](https://github.com/MarkPhamm/Business-Intelligence-Engineer/assets/99457952/69d44bc7-4fbf-440f-be6a-486232355029)

## Dataset Used
[Dataset](https://www.nyc.gov/site/tlc/about/tlc-trip-record-data.page)
[Data Dictionary](https://www.nyc.gov/assets/tlc/downloads/pdf/data_dictionary_trip_records_yellow.pdf)


## Step 1: Data Modelling 
**Fact vs. Dimension tables**
* **Fact Table: (changing)**
  * Contains quantitative measures or metrics that are used for analysis
  * Typically contains foreign keys that link to dimension tables
  * Contains columns that have high cardinality and change frequently
  * Contains columns that are not useful for analysis by themselves, but are necessary for calculating metrics

* **Dimension Table: (static)**
  * Contains columns that describe attributes of the data being analyzed
  * Typically contains primary keys that link to fact tables
  * Contains columns that have low cardinality and don't change frequently
  * Contains columns that can be used for grouping or filtering data for analysis

### The Star-Schema data model:
![image](https://github.com/MarkPhamm/Business-Intelligence-Engineer/assets/99457952/f5b3f214-b55a-4108-aef1-bb23a16b895a)

## Step 2: Store Data in Google Cloud Storage and set up Google Cloud Service
* Google Cloud Storage
  * Create a new Google Project → Create a Google Cloud Bucket → Load data into Google Cloud Storage
* Command List can be found [here]
## Step 3: Write Transformation Code and ETL Script on Mage.AI
* Python Transformation Code (Jupiter Notebook) can be found [here]
* Python ELT Code Via Mage.AI can be found [here]

## Step 4: Write SQL Queries on Google Big Query
* SQL Queries can be found [here]

## Step 5: Load data into Google Looker Studio and create a Dashboard 
* The last step is to Develop an interactive dashboard using Google Looker Analytics to visualize key Uber KPIs such as driver productivity, rider retention, and revenue while enabling dynamic filtering capabilities for business users
* [**Result Dashboard**](https://lookerstudio.google.com/reporting/31de764d-ec5a-43f4-a6e1-229e24c0ce40)
