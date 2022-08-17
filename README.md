# Pewlett_Hackard-Analysis

## Overview of Project

We have received two SQL based projects:
1.	Determine the number of retiring employees per title 
2.	Identify employees who are eligible to participate in a mentorship program

After completion of the two SQL projects, we are to provide a report that summarizes the analysis and 

## Results

[SQL]( https://github.com/nkinsler/Pewlett_Hackard-Analysis/blob/main/Queries/Employee_Database_challenge.sql)

### Number of Retiring Employees

-Query created to develop a Retirement Titles table for employees born between January 1, 1952 and December 31, 1955.  CSV file created.
![Retirement_Titles.png](https://github.com/nkinsler/Pewlett_Hackard-Analysis/blob/main/PNG/Retirement%20Titles%20SQL.png)!

[Retirement_Titles.csv](https://github.com/nkinsler/Pewlett_Hackard-Analysis/blob/main/Data/retirement_titles.csv)

-Query created to develop a Unique Titles table that contains employee number, first and last name, and title.  CSV file created.
![Unique_Titles.png](https://github.com/nkinsler/Pewlett_Hackard-Analysis/blob/main/PNG/Unique%20titles%20SQL.png)!

[Unique_Titles.csv](https://github.com/nkinsler/Pewlett_Hackard-Analysis/blob/main/Data/unique_titles.csv)

-Query created to develop a Retiring Titles table the contains the number of titles filled by employees who are retiring.  CSV created.
![Retiring_Titles.png](https://github.com/nkinsler/Pewlett_Hackard-Analysis/blob/main/PNG/Retiring%20Titles%20SQL.png)!

[Retiring_Titles.csv](https://github.com/nkinsler/Pewlett_Hackard-Analysis/blob/main/Data/retiring_titles.csv)

#### Major Points
1.	Senior staff and senior engineer positions are the two positions will be the two positions that potentially have the highest retirement impact to the firm.
2.	The firm has a total of 72,458 employees in retirement age out of a total of 300,025 which represents 24.15% of the workforce.

### Employees Eligible for Mentorship Program

-Query created to develop a Mentorship Eligibility table for current employees who were born between January 1, 1965 and December 31, 1965.  CSV created.
![Mentoring_Eligibility.png](https://github.com/nkinsler/Pewlett_Hackard-Analysis/blob/main/PNG/Mentorship%20Eligibility%20SQL.png)!

[Mentoring_Eligibility.csv](https://github.com/nkinsler/Pewlett_Hackard-Analysis/blob/main/Data/membership_eligibility.csv)

#### Major Points
3.	The firm has a total of 1,549 employees that met the eligibility requirements for the mentorship program.
4.	Of the 1,549 eligible employees, 1,098 represent senior staff which represents 70.88% of the mentorship eligible workforce. 
![Mentoring_Titles.png](https://github.com/nkinsler/Pewlett_Hackard-Analysis/blob/main/PNG/Mentorship%20Titles.png)!

## Summary

### Questions Regarding the “Silver Tsunami”

1.	How many roles will need to be filled as the “silver tsunami” begins to make an impact. 72,458 roles will need to be filled.
2.	Are their enough qualified, retirement-ready employees in the departments to mentor the next generation of Pewlett Hackard employees.  We have 1,549 employees available to mentor or 2% of the retirement population.

We refactored the code used to run the original analysis for departments instead of titles.  Based on the results we determined the number of anticipated retirements by department and the mentors available by department.

The results are as follows:

![Mentoring_Dept.png](https://github.com/nkinsler/Pewlett_Hackard-Analysis/blob/main/PNG/Mentoring%20Dept.png)!

![Department_Eligibility.png](https://github.com/nkinsler/Pewlett_Hackard-Analysis/blob/main/PNG/Department%20Eligibility.png)!

The results indicate that the focus of the mentorship should be around the development and production departments.  Both departments have the greatest number of available mentors while also representing the departments that will be most impacted by the “silver tsunami.” 
