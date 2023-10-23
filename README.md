# Uber Business Intelligence Engineering Project via GCP

## [Final Dashboard](https://lookerstudio.google.com/reporting/31de764d-ec5a-43f4-a6e1-229e24c0ce40)

## Project Scope: 

* Design and implement an end-to-end **ETL data pipeline** integrating Uber ride-sharing data into **Google Big Query data warehouse** by utilizing Python, Google Cloud Storage, Google Mage compute engine, and Mage.ai data engineering tools.
* Construct a **comprehensive STAR data model** in Google Big Query with QuickDBD and SQL, optimizing data analytics processes.
* Develop an **interactive dashboard** using Google Looker Analytics to visualize key Uber KPIs such as driver productivity, rider retention, and revenue while enabling dynamic filtering capabilities for business users.

### Technologies: 
**Technology used:** SQL, Python, QuickDBD, Google Cloud Storage, Google Mage compute engine, Mage.AI Data Pipeline Tool, Google Big Query, Google Looker Analytics

### Services:
* Cloud Storage: Provides online file storage and allows users to retrieve data from the cloud, making it accessible from anywhere.
* Compute Engine: Offers a cloud computing service that provides virtual machines for running applications.
* Big Query: A cloud-based data warehouse designed for storing, analyzing, and querying large datasets.
* Looker: A web-based tool specializing in data visualization and reporting.

## Key Learning

- Leveraging Python and GCP for a comprehensive end-to-end ETL pipeline.
- Implementing a robust STAR data model in Google Big Query for optimized data analysis.
- Designing an interactive dashboard with Google Looker Analytics for dynamic data visualization and filtering capabilities.
- Incorporating effective data preprocessing techniques for efficient and accurate data analysis.

## Key Struggles

- Addressing potential challenges in data integration and management throughout the ETL process.
- Balancing the complexities of data transformation with the need for maintaining data integrity and accuracy.
- Ensuring seamless communication and compatibility between various components within the GCP ecosystem.
- Managing and optimizing computational resources to meet the demands of large-scale data processing.

## Key Insight

- Unveiling critical insights into key Uber KPIs, including driver productivity, rider retention, and revenue generation, through dynamic and interactive data visualization.
- Empowering business users with the ability to make data-driven decisions through user-friendly and customizable dashboards.
- Highlighting the significance of leveraging comprehensive data analytics tools for deriving actionable business intelligence and strategic insights.

## Architecture
![image](https://github.com/MarkPhamm/Business-Intelligence-Engineer/assets/99457952/69d44bc7-4fbf-440f-be6a-486232355029)

## Dataset Used
* [Dataset](https://www.nyc.gov/site/tlc/about/tlc-trip-record-data.page)
* [Data Dictionary](https://www.nyc.gov/assets/tlc/downloads/pdf/data_dictionary_trip_records_yellow.pdf)

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
* **Google Cloud Storage**
  * Create a new Google Project → Create a Google Cloud Bucket → Load data into Google Cloud Storage → Edit Access to Public
   
* **Google Cloud Compute Engine**
  * Create a new Instance → Chose region, configuration → Run SSH
  * Command List can be found [here](https://github.com/MarkPhamm/Uber-BI-Engineer-Project/blob/main/GCP%20Command.txt)
  * Edit Firewall:
    * Create new Firewall rules
    * Sources IPV4 address 0.0.0.0/0
    * Port: Result from the Compute Engine
* Run External IP address: port
## Step 3: Write Transformation Code and ETL Script on Mage.AI
* Python Transformation Code (Jupiter Notebook) can be found [here](https://github.com/MarkPhamm/Uber-BI-Engineer-Project/blob/main/Python%20Transform.ipynb)
* Python ELT Code Via Mage.AI can be found [here](https://github.com/MarkPhamm/Uber-BI-Engineer-Project/blob/main/Python%20ETL.ipynb)
* Edit io_config.yaml
  * Go to GCP API → Create new credential → Service Account → Create new keys → Download keys
  * Enter keys to io_config.yaml
 
## Step 4: Write SQL Queries on Google Big Query
* SQL Queries can be found [here](https://github.com/MarkPhamm/Uber-BI-Engineer-Project/blob/main/SQL%20Analytics%20Table)

## Step 5: Load data into Google Looker Studio and create a Dashboard 
* The last step is to Develop an interactive dashboard using Google Looker Analytics to visualize key Uber KPIs such as driver productivity, rider retention, and revenue while enabling dynamic filtering capabilities for business users
* [**Result Dashboard**](https://lookerstudio.google.com/reporting/31de764d-ec5a-43f4-a6e1-229e24c0ce40)


