# Sales_Database_with_Star_Schema

This repository contains SQL scripts for creating a star schema data model and populating tables for sales data analysis. The schema consists of a fact table surrounded by dimension tables, following a star schema design.

## Table Structure

### Fact Table: Sales
- Contains quantitative information about sales transactions.
- Attributes include `sale_id`, `date_id`, `product_id`, `store_id`, `customer_id`, and `amount_sold`.
- Foreign keys connect to dimension tables (`Date`, `Product`, `Store`, `Customer`) to provide context to sales transactions.

### Dimension Tables:
1. **Date**:
   - Contains information about dates, such as `date`, `day_of_week`, `month`, and `year`.
2. **Product**:
   - Describes products, including `product_name`, `category`, `brand`, and `unit_price`.
3. **Store**:
   - Provides details about stores, including `store_name`, `city`, `state`, and `country`.
4. **Customer**:
   - Contains customer information such as `customer_name`, `email`, `phone_number`, and `address`.

## Foreign Keys
- Foreign keys establish relationships between the fact table and dimension tables, allowing for comprehensive sales data analysis.

## Data Modeling
- The schema follows a star schema design, which is widely used for data warehousing and analytical purposes.
- Data modeling involves identifying entities, attributes, and relationships between entities, effectively captured in the schema.
- The design enables efficient querying and analysis of sales data by organizing information into a central fact table surrounded by dimension tables providing additional context.

## Is This Perfect Data Modeling?
- The schema is well-designed for analyzing sales data, providing a clear structure and relationships between entities.
- Continuous refinement and optimization may be necessary based on evolving business needs and feedback from data analysts and users.

