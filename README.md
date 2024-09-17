# Bootcamp Project 2 - ETL Pipeline using Python and Pandas

[Project 2 Specification](https://bootcampspot.instructure.com/courses/5582/assignments/83528?module_item_id=1290112)

## Notes

### Regarding datetime values

While the project requested importing datetime data and converting to datetime
datatypes, the examples provided in class converted the string to a datetime
only as a transitory value, which was then formatted back into a string to
insure it was formated as a date as YYYY-MM-DD format (e.g. 2021-01-13).  While
converting to a datetime, date, or timestamp was viable, I opted to follow the
convention set forth in class.

### Regarding extra code at the end of the Jupyter Notebook

I added some code at the end of the jupyter notebook to examine the data values
in the data for minimum/maximum lengths/values, as well as checking for unique
counts or missing values before creating the db schema for the PostgreSQL db, so
that I was able to pick reasonable values for data type size constraints for
text and numerical data.  The schema has comments on decisions made regarding
those data type size specs.

## Files

### Primary

* `Crowdfunding_ETL/ETL_Mini_Project_COrtiz.ipynb`: Jupyter notebook for the
  extract and transform steps of the ETL pipeline.
* `Crowdfunding_ETL/crowdfunding_db_schema.sql`: PostgreSQL script to create the
  DB schema for the Crowdfunding DB.
* `Crowdfunding_ETL/Resources/crowdfunding_db_erd.txt`: Text source for ERD
  using [QuickDBD](https://app.quickdatabasediagrams.com).

### Output

* `Crowdfunding_ETL/Resources/crowdfunding_db_erd.png`: Raster PNG image of DB
  entity relationship diagram (ERD).
* `Crowdfunding_ETL/Resources/check-*-before-*.png`: Screenshots verifying DB
  tables in PostgreSQL before importing data.
* `Crowdfunding_ETL/Resources/check-*-after-*.png`: Screenshots verifying DB
  tables in PostgreSQL after importing data.
* `Crowdfunding_ETL/Resources/*.csv`: Exported CSV files after the extract and
  transform steps of the ETL pipeline.
* `Crowdfunding_ETL/Resources/regex-contacts.csv`: Exporteed CSV file of the
  contacts dataframe generated using regexes instead of JSON parsing.
* `Crowdfunding_ETL/Resources/crowdfunding_db_dump.sql`: PostgreSQL DB dump
  after creating the schema and importing the data from CSV.

### Provided

* `Crowdfunding_ETL/Resources/*.xlsx`: Source data files provided as part of the
  project spec.
