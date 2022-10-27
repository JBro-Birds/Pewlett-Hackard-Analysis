# Pewlett-Hackard-Analysis

## Overview of Project
Pewlett Hackard is a large company with several thousand employees.  The company has been around for a long time and with so many baby boomers as employees there is a very high likelihood that retirement will begin to occur at a high rate.  Because of this likelihood the company is planning for the future by offering a retirement package for those who meet certain criteria and strategizing about which positions will need to filled as there will be thousands of job openings due to the retirements.

I have been tasked to work with a HR analyst to perform employee research.  Analysis and answers are needed to provide to management for the following questions:  Who will be retiring in the next few years? And how many positions will Pewlett Hackard need to fill?  The employee data is only available in the form of six CSV files because the company has been mainly using Excel and VBA to work with the data.  But a decision has been made to update methods to use SQL which will create considerable efficiencies and reporting capabilities for the large HR dataset.  The task is to build an employee database with SQL by applying data modeling, engineering, and analysis skills.  After sucessfully building the employee database with SQL he initial information and analysis ask was received postively by management.  Realizing the reporting capabilities using SQL from their initial requests, management is requesting additional information and analysis to assist their decsion making for future HR needs.

### Purpose
The purpose of this project is management has given two more assignments: determine the number of retiring employees per title (employees born between 1/1/1952-12/31/1955), and identify employees who are eligible to participate in a mentorship program (employees born between 1/1/1965-12/31/1965. After retrieving the data using SQL in pgAdmin and creating .csv files for the two assignments a written report is needed that summarizes my analysis and helps prepare managment for the “silver tsunami” as many current employees reach retirement age.

## Results

### Database ERD

* The original six HR .csv files provided the foundation to build SQL tables and merge data together in order to produce the necessary data needed for the project.  Using the Quick DBD website the database ERD was constructed as follows:

![EmployeeDB_Revised](https://raw.githubusercontent.com/JBro-Birds/Pewlett-Hackard-Analysis/master/Data/EmployeeDB_Revised.png)

### Number of retiring employees per title

* After creating a series of new tables from joining data attributes from the original six tables code was used to filter, count and order the data as needed to report the number of retiring employees per title.  

The SQL code to produce the summary of retiring employees per title is as follows:

![Unique_Title_Code](https://raw.githubusercontent.com/JBro-Birds/Pewlett-Hackard-Analysis/master/Queries/Unique_Title_Code.png)

The summary and count of retiring employees per title (72,458 total employees) is as follows:

![Retiring_Titles](https://raw.githubusercontent.com/JBro-Birds/Pewlett-Hackard-Analysis/master/Queries/Retiring_Titles.png)

### Employees eligible to participate in mentorship program

* Writing the code to create a table showing employees eligible to participate in the mentorship program was made simpler by referencing code written for a prior table, then expanding on `Inner Join` and `Where` functions.

The SQL code to produce the employees eligible to participate in the mentorship program is as follows:
![Mentorship_Eligibility_Code](https://raw.githubusercontent.com/JBro-Birds/Pewlett-Hackard-Analysis/master/Queries/Mentorship_Eligibility_Code.png)

The first twelve rows in the summary for the employees eligible to participate in the mentorship program (1,549 total employees) is as follows:

![Mentorship_Eligibility](https://raw.githubusercontent.com/JBro-Birds/Pewlett-Hackard-Analysis/master/Queries/Mentorship_Eligibility.png)


## Summary

### The Addition of Weather Data and Multi-City Itineraries

The count of employees that are mentorship eligible per title is as follows:

![Mentorship_Titles](https://raw.githubusercontent.com/JBro-Birds/Pewlett-Hackard-Analysis/master/Queries/Mentorship_Titles.png)

