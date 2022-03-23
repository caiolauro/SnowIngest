# **Snowflake Data Ingestion Demonstration**
---

## **Goal**<br>

Create an **auto ingestion** pipeline using:

- Terraform to set AWS and Snowflake Infrastructure 
- Flask Form WebApp as Data Source deployed using PythonAnywhere
- S3 Bucket as Staging Area
- Snowflake Snowpipes for Automatic Ingestion (Bucket Notifications)
- Snowflake as Data Warehouse
    - Schemachange Python Tool to create Tables and Pipes.

<br><br>

**Pipeline Diagram**

[<img src="images/SnowIngest Project.jpg">](Diagram)

## *Explaining how Auto Ingestion with Snowpipe Works*

Snowpipe relies on a External Stage Storage (e.g: S3) and Queue Services (e.g: SQS) to perform auto ingestion.
In order to do that it is necessary to set a *trust relationship* between Cloud Provider and Snowflake Accounts.
Since the demo is using AWS, the explanation is focused on it. The following steps should be done to get the Snowpipe Auto Ingestion working:
    1. IAM Policy with Access Rules to S3 Bucket.
    2. Cross Account Trust Relationship IAM Role
    3. Snowflake Storage Integration
    Here you should indicate the created role ARN from step 2.
    4. Get Storage Integration Snwoflake User ARN + External ID
    5. Add External ID to  

**References:**

- [Pythonanywhere Website](https://www.pythonanywhere.com/)

- [Snowflake Terraform Provider Documentation](https://registry.terraform.io/providers/chanzuckerberg/snowflake/latest/docs)

- [Schemachange Repo](https://github.com/Snowflake-Labs/schemachange)

- [Automating Snowpipe for Amazon S3](https://docs.snowflake.com/en/user-guide/data-load-snowpipe-auto-s3.html#step-1-configure-access-permissions-for-the-s3-bucket)