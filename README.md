# data_transformation_dbt_snowflake
Transforming data on Snowflake using dbt
(snowflake) create tables LANDING, PROCESSING & CONSUMPTION
(snowflake) load data customer.csv, order.csv & orderitems.csv into table LANDING
(local) create virtual environment for dbt project
(local) install dbt-core & dbt-snowflake using pip
(local) initialization dbt create connection -- dbt init
(local) checking dbt connection -- dbt debug  # fix the errors if available
(local) write sql code at models folder for data transformation on Snowflake
(local) execute data transformation after dbt debug OK -- dbt run # fix the errors if available
(snowflake) checking the result on table PROCESSING, CONSUMPTION with data review or write sql 
