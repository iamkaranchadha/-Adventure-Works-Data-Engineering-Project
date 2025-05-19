# -Adventure-Works-Data-Engineering-Project

**Building a Complete Data Engineering Pipeline with Azure ✨**
In this blog, I present a step-by-step guide to creating a full-fledged end-to-end (E2E) data engineering solution using Azure’s robust ecosystem. The project involves processing, transforming, and delivering data for Business Intelligence (BI) purposes by utilizing key Azure services such as Azure Data Factory, Azure Databricks, Azure Synapse Analytics, and Power BI. The data is sourced from the AdventureWorks dataset, which is retrieved directly from GitHub. Here's an overview of the solution architecture:


![395744453-7c51260a-236e-43ae-a965-91508684014c](https://github.com/user-attachments/assets/a2e9c46b-3c78-4fb9-bf0a-da0f3656b7cc)

📌 **Project Objective**
The goal of this project is to develop a scalable, secure, and efficient data pipeline that:

* Ingests data from external sources
* Performs data transformation and cleaning using PySpark
* Stores the processed data in a structured format for seamless analysis
* Supports interactive and insightful visualizations to drive informed decision-making


**Step 1: Setting Up the Azure Environment ⚙️**
The first step involves provisioning the necessary Azure services to support the data pipeline:

* **Azure Data Factory (ADF):** Orchestrates and automates data workflows.
* **Azure Storage Account:** Serves as the data lake, organized into three layers—raw (bronze), transformed (silver), and curated (gold).
* **Azure Databricks:** Handles data transformation and computation using PySpark.
* **Azure Synapse Analytics:** Functions as the data warehouse, enabling fast querying and BI integration.

Each resource was configured with appropriate Identity and Access Management (IAM) roles to ensure secure and seamless connectivity across the environment.
![Screenshot 2025-05-19 182625](https://github.com/user-attachments/assets/41ea6b3a-ce79-4077-83c1-cc74c0b93f8e)





**Step 2: Implementing the Data Pipeline Using ADF 🚀**
Azure Data Factory (ADF) acts as the central orchestrator for the entire data pipeline.

* **Dynamic Copy Activity:**
  ADF uses an HTTP connector to fetch data directly from GitHub and loads it into the *bronze* layer of the Azure Storage Account.

* **Parameterized Pipeline:**
  Parameters were incorporated into the pipeline design, allowing flexibility and easy adaptation to changes in the data source or file structure.

This setup ensures a reusable and scalable approach to data ingestion.


![Screenshot 2025-05-19 183525](https://github.com/user-attachments/assets/f7bf432d-48a8-4c19-94cd-17fc8e0104e0)


The raw data is now securely stored and ready for transformation.



![Screenshot 2025-05-19 183637](https://github.com/user-attachments/assets/847e4f18-e701-4704-a137-e1010a2c24d1)

Step 3: Data Transformation with Azure Databricks 🔄
Using Azure Databricks, the raw data from the bronze container was transformed into a structured format.

Key Steps:
Cluster Setup: A Databricks cluster was created to process the data efficiently.
Data Lake Integration: Databricks connected to Azure Storage to access the raw data.


![Screenshot 2025-05-19 183805](https://github.com/user-attachments/assets/744fde3b-829a-4cbb-8249-28f2011265ec)

Transformations:
Normalized date formats for consistency.

Cleaned and filtered invalid or incomplete records.

Grouped and concatenated data to make it more usable for analysis.

Saved the transformed data in the silver container in Parquet format for optimal storage and query performance.



![Screenshot 2025-05-19 184015](https://github.com/user-attachments/assets/1ce18297-f9c7-4b32-953b-6d30e95a1653)



![Screenshot 2025-05-19 184040](https://github.com/user-attachments/assets/af9072a6-7e31-4817-ae1b-7636bae5e4de)

![Screenshot 2025-05-19 184123](https://github.com/user-attachments/assets/53884014-c786-4d5c-826e-36e972f762b1)



**Step 4: Data Warehousing with Azure Synapse Analytics 📊**
Azure Synapse Analytics was utilized to structure the transformed data for efficient analysis and BI reporting.

**Key Steps:**

* **Connecting to the Silver Container:**
  Synapse was configured to read data directly from the Azure Storage account’s *silver* layer.

* **Serverless SQL Pools:**
  Used to run queries on the data without the need to provision or manage dedicated compute resources, enabling cost-effective, on-demand access.

* **Database and Schema Setup:**
  Created SQL databases and schemas to logically organize the data for better manageability.

* **External Tables and Views:**
  Defined external tables and created views to make the data easily consumable for reporting tools like Power BI.

![image](https://github.com/user-attachments/assets/f2ec05b6-c9b3-4387-8283-2a3784bbf6ba)

![image](https://github.com/user-attachments/assets/ecd168e1-486a-43da-9b7c-fda3c8b89ea7)





  The cleaned, structured data was then moved to the gold container for reporting purposes.

  ![image](https://github.com/user-attachments/assets/d3b56a7c-cc08-4edf-8df5-5bb38588734e)




  Step 5: Business Intelligence Integration 🕵️‍♂️
The final step involved integrating the data with a BI tool to visualize and generate insights.

Power BI Integration:
Connected Power BI to Azure Synapse Analytics.

Designed dashboards and reports to present actionable insights to stakeholders.

![image](https://github.com/user-attachments/assets/7bc15af2-db6e-44e1-bc61-394e8736a6fd)



**🗂️ Project Breakdown**

**1️⃣ Data Ingestion (Bronze Layer)**

* Extracted data from an external HTTP API using **Azure Data Factory**.
* Stored the raw data in **Azure Data Lake Storage Gen2**, following a structured folder hierarchy.

**2️⃣ Data Transformation (Silver Layer)**

* Established a secure connection between Azure Data Lake and **Azure Databricks** using **Microsoft Entra ID** (App ID, Secret, Tenant ID).
* Utilized **PySpark** to clean, filter, and transform the ingested raw data.
* Implemented **incremental loading** using **SCD Type 1 (Upsert logic)** to improve efficiency and handle data updates.

**3️⃣ Data Serving (Gold Layer)**

* Loaded the transformed data into **Azure Synapse Analytics** using `OPENROWSET()` and **external tables**.
* Enabled fast and structured access for analytical queries and downstream reporting.

**4️⃣ Reporting and Dashboard**

* Connected **Power BI** to Azure Synapse Analytics.
* Designed a real-time, interactive dashboard to present actionable business insights.

---

**💡 Key Learnings**

* Practical application of the **Medallion Architecture** in a real-world scenario.
* Secure integration across Azure services using **managed identities** and **service principals**.
* Efficient handling of **incremental data loads** for scalable ETL workflows.
* Techniques for **query optimization** in Synapse with external tables and views.
* Delivering impactful insights through **Power BI** dashboards.

✅ This end-to-end solution demonstrates how modern, data-driven organizations can harness the power of Azure to transform raw data into valuable business intelligence, enabling smarter and faster decision-making.








