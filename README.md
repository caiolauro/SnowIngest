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


**References:**

- [Pythonanywhere Website](https://www.pythonanywhere.com/)

- [Snowflake Terraform Provider Documentation](https://registry.terraform.io/providers/chanzuckerberg/snowflake/latest/docs)

- [Schemachange Repo](https://github.com/Snowflake-Labs/schemachange)