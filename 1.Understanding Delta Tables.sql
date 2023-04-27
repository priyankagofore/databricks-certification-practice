-- Databricks notebook source
create table employees(id Int, name String,salary Double);

-- COMMAND ----------

INSERT into employees 
VALUES 
  (1, "Adam", 3500.0),
  (2, "Sarah", 4020.5),
  (3, "John", 2999.3),
  (4," Thomas",4000.3),
  (5,"Anna",2500.0),
  (6,"Kim", 6200.3)

-- COMMAND ----------

SELECT * FROM employees

-- COMMAND ----------

DESC DETAIL employees

-- COMMAND ----------

-- MAGIC %fs ls 'dbfs:/user/hive/warehouse/employees'

-- COMMAND ----------

Update employees 
SET salary = salary + 100
where name like 'A%'

-- COMMAND ----------

SELECT * FROM employees;

-- COMMAND ----------

-- MAGIC %fs ls 'dbfs:/user/hive/warehouse/employees'

-- COMMAND ----------

DESCRIBE HISTORY employees

-- COMMAND ----------


