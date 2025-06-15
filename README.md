# data_transformation_dbt_snowflake

Transforming data on Snowflake using dbt:
1. (snowflake) create tables LANDING, PROCESSING & CONSUMPTION
2. (snowflake) load data customer.csv, order.csv & orderitems.csv into table LANDING
3. (local) create virtual environment for dbt project
4. (local) install dbt-core & dbt-snowflake using pip
5. (local) initialization dbt create connection -- dbt init
6. (local) checking dbt connection -- dbt debug  # fix the errors if available
7. (local) write sql code at models folder for data transformation on Snowflake
8. (local) write macro for compensate multi schema on macros folder
9. (local) execute data transformation after dbt debug OK -- dbt run # fix the errors if available
10. (snowflake) checking the result on table PROCESSING, CONSUMPTION with data review or write sql 
