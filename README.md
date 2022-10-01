# Pewlett Hackard Employee Retirement Analysis

## Overview
  In this analysis we were tasked to help "future-proof", Pewlett-Hackard, a huge company who has been around for years and has thousands of employees. A large amount of employees are close to retirement and we must help Pewlett-Hackard find who will be retiring and which position will be left vacant.

## Resources
pgadmin4 v6.12

## Results
* First, we created a table(retirement_titles.csv) by joining the employees and titles table and filtered it by birth date between 1952 and     1955. 

![image](https://user-images.githubusercontent.com/110706169/193384436-f9ca21bb-a55f-477b-8bf2-cd0634f772dd.png)

From the table above we can see that some employees are duplicated with different titles and some have already left the company(to_date:'9999-01-01' is used to indicate a current employee).

* To remove the duplicate rows we used the DISTINCT keyword on employee ID's from the table we previously created. We filtered by the date '9999-01-01' to show us current employees and order by employee ID and date in desceding order to show us the employee's latest position.
* 
![image](https://user-images.githubusercontent.com/110706169/193385611-64e58b93-a643-40f7-9673-f7042721ba9b.png){: .shadow} ![image](https://user-images.githubusercontent.com/110706169/193385765-b5ad6354-20a0-4afe-b910-e019efb3a983.png)


## Summary
