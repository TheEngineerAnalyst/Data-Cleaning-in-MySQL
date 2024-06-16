# STEP 2: standardizing data

select company, trim(company) # removes irregular spaces in company names
from layoffs_staging2;

update layoffs_staging2
set company = trim(company);

select distinct industry # identify irregularities under industry (crypto, cryptocurrency, crypto currency)
from layoffs_staging2
order by 1;

select distinct *
from layoffs_staging2
where industry like 'Crypto%';

update layoffs_staging2
set industry = 'Crypto'
where industry like 'Crypto%';

select distinct location  # check location column --> looks good
from layoffs_staging2
order by 1;

select distinct country  # check country column --> United States and United States.
from layoffs_staging2
order by 1;

select distinct country, trim(trailing '.' from country)  # trims the period from the end of the word, specifying trim something other thna white space
from layoffs_staging2;

update layoffs_staging2
set country = trim(trailing '.' from country)
where country like 'United States%';

select `date`
from layoffs_staging2;

update layoffs_staging2
set `date` = str_to_date(`date`, '%m/%d/%Y');  # want to change tetx formate to date format

alter table layoffs_staging2
modify column `date` date;

select *
from layoffs_staging2;