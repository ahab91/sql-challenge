# sql-challenge

### Overview
This repo contains several files analyzing employee and department data from the 1980s and 1990s for a fictional company. I used quickdatabasediagrams.com to develop an Entity Relationship Diagram (ERD) designating primary and foreign keys which is included as a .png file. I also exported the schema to develop the basic table structure in PostgreSQL. From there, I imported the data from the six CSV files attached and began developing an analysis script to accomplish the following tasks:

List the employee number, last name, first name, sex, and salary of each employee.
List the first name, last name, and hire date for the employees who were hired in 1986.
List the manager of each department along with their department number, department name, employee number, last name, and first name.
List the department number for each employee along with that employee’s employee number, last name, first name, and department name.
List first name, last name, and sex of each employee whose first name is Hercules and whose last name begins with the letter B.
List each employee in the Sales department, including their employee number, last name, and first name.
List each employee in the Sales and Development departments, including their employee number, last name, first name, and department name.
List the frequency counts, in descending order, of all the employee last names (that is, how many employees share each last name).
