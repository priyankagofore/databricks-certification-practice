-- Databricks notebook source
SELECT * from employees;

-- COMMAND ----------

DESCRIBE HISTORY employees;

-- COMMAND ----------

SELECT * FROM employees VERSION AS OF 1;

-- COMMAND ----------

DELETE FROM employees;

-- COMMAND ----------

SELECT * FROM employees;*

-- COMMAND ----------

DESCRIBE HISTORY employees;

-- COMMAND ----------

SELECT * FROM employees VERSION AS OF 2;

-- COMMAND ----------

RESTORE TABLE employees version as of 2;

-- COMMAND ----------

SELECT * FROM employees;

-- COMMAND ----------

DESCRIBE DETAIL employees

-- COMMAND ----------

create or replace table temp_data 
  as select ' {
		 "chicago":[
			{"date":"01-01-2021",
			"temp":[25,28,45,56,39,25]
			},
		{"date":"01-02-2021",
		"temp":[25,28,49,54,38,25]
		},
		{"date":"01-03-2021",
		"temp":[25,28,49,58,38,25]
	      }]
              } 
             ' as raw
 


-- COMMAND ----------

select array_max(from_json(raw:chicago[*].temp[3],'array<int>')) from temp_data

-- COMMAND ----------

-- MAGIC %python
-- MAGIC def check_input(x,y):
-- MAGIC     if x < y:
-- MAGIC             x= x+1
-- MAGIC             if x>y:
-- MAGIC                 x= x+1
-- MAGIC                 if x <y:
-- MAGIC                     x = x+1
-- MAGIC     return x
-- MAGIC     

-- COMMAND ----------

-- MAGIC %python
-- MAGIC def check_input(x,y):
-- MAGIC     if x < y:
-- MAGIC             x= x+1
-- MAGIC             if x<y:
-- MAGIC                 x= x+1
-- MAGIC                 if x <y:
-- MAGIC                     x = x+1
-- MAGIC     return x

-- COMMAND ----------

-- MAGIC %python
-- MAGIC check_input(1,3)

-- COMMAND ----------

CREATE TABLE sales (id int, units int)

-- COMMAND ----------


drop table sales;

-- COMMAND ----------

CREATE table sales_1
using org.apache.spark.sql.jdbc
options(
  url ='jdbc:sqlite:/sample_db',
  dbtable ='sales'
)



-- COMMAND ----------


