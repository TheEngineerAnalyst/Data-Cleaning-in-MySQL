## Data Cleaning

# double click on 'world_layoffs' table so don't have to keep writing it out every timee (should be bolded if selected properly)
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

# NEVER work directly in raw dataset, that's why we make staging table