## Data Cleaning

select * 
from layoffs;

# 1. Remove Duplicates
# 2. Standardize the Data
# 3. Null Values or Blank Values
# 4. Remove Unnecessary Columns/Rows

create table layoffs_staging  #copy raw data into a new table for staging
like layoffs;

select * #check that table has been created and is populated
from layoffs_staging;

insert layoffs_staging #populate new table using raw data from OG dataset
select *
from layoffs;
