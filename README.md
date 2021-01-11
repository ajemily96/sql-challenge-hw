# sql-challenge

## Data Architecture 
When designing this database structure I categorized the tables into 3 groups.
1. Look-up tables - generally only have 2 columns, an id and a name. These will be unique
2. Data Tables - contain larger sets of data with more detailed info
3. Mapping Tables - generally won't have primary keys, will only have foreign keys to map values across tables

Each table is named with appropriate prefixes or suffixes with a name which reflects what is in the table. View the EDR [here](https://wustl.bootcampcontent.com/AEmily96/sql-challenge/blob/master/EmployeeSQL/Resources/ERD.PNG).

![ERD](https://wustl.bootcampcontent.com/AEmily96/sql-challenge/raw/master/EmployeeSQL/Resources/ERD.PNG)

I made and populated the tables in the following order:

1. LU_DEPARTMENT
2. LU_TITLE 
3. EMPLOYEES 
4. SALARIES
5. DEPT_MANAGER_MAP
6. DEPT_EMPLOYEE_MAP

Though the first two could go in either order as can the last two. Generally speaking, you'll want to make the look-up tables first, followed by the data tables, and then finally the mapping tables since the look-up tables will have keys that will be referenced in the other tables and the map tables will often times be used to map data from the data tables and the look-up tables. In order for the keys to all line up you have to start with the tables that have the keys that get referenced in the other tables. You cannot have a foreign key that points to a table that doesn't exist yet and you can't have a forgein key that points to data that doesn't exist yet. 

