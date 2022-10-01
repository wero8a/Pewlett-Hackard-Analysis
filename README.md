# Pewlett Hackard Employee Retirement Analysis

## Overview
  In this analysis we were tasked to help "future-proof", Pewlett-Hackard, a huge company who has been around for years and has thousands of employees. A large amount of employees are close to retirement and we must help Pewlett-Hackard find who will be retiring and which position will be left vacant.

## Resources
* pgadmin4 v6.12
* PostgresSQL
* [Quick DBD](https://www.quickdatabasediagrams.com/)
* [departments.csv](https://github.com/wero8a/Pewlett-Hackard-Analysis/blob/main/Data/departments.csv)
* [dept_empt.csv](https://github.com/wero8a/Pewlett-Hackard-Analysis/blob/main/Data/dept_emp.csv)
* [dept_managers.csv](https://github.com/wero8a/Pewlett-Hackard-Analysis/blob/main/Data/dept_manager.csv)
* [employees.csv](https://github.com/wero8a/Pewlett-Hackard-Analysis/blob/main/Data/employees.csv)
* [salaries.csv](https://github.com/wero8a/Pewlett-Hackard-Analysis/blob/main/Data/salaries.csv)
* [titles.csv](https://github.com/wero8a/Pewlett-Hackard-Analysis/blob/main/Data/titles.csv)


## Results
* First, we created an Entity Relationship Diagram to guide us on how we will connect the data from our files.

![image](https://user-images.githubusercontent.com/110706169/193395203-f127f38a-47f1-4faf-ad43-e4ddd0ec1828.png)


* Then, we created a table(retirement_titles.csv) by joining the employees and titles table and filtered it by birth date between 1952 and     1955. 

![image](https://user-images.githubusercontent.com/110706169/193384436-f9ca21bb-a55f-477b-8bf2-cd0634f772dd.png)

  From the table above we can see that some employees are duplicated with different titles and some have already left   the company(to_date:'9999-01-01' is used to indicate a current employee).

* To remove the duplicate rows we used the **DISTINCT** keyword on employee ID's from the table we previously created. We filtered by the date '9999-01-01' to show us current employees and order by employee ID and date in desceding order to show us the employee's latest position. We saved this table as unique_titles.csv.



<kbd>![image](https://user-images.githubusercontent.com/110706169/193385611-64e58b93-a643-40f7-9673-f7042721ba9b.png)</kbd>

![image](https://user-images.githubusercontent.com/110706169/193385765-b5ad6354-20a0-4afe-b910-e019efb3a983.png)

* Once we removed the duplicates from the unique_titles.csv dataset we counted the number of employees close to retirement using the **COUNT** keyword on the employee ID and grouped by title.
![image](https://user-images.githubusercontent.com/110706169/193386511-7bf5047e-6ad7-41fa-bff2-3c7b73fda1b4.png)

As we can see from the table shown above(retiring_titles.csv), there is an outstanding amount of employees close to retirement.

* After we compiled our data we were tasked to create a mentorship eligibilty table filtered by birth dates in 1965.

![image](https://user-images.githubusercontent.com/110706169/193392337-e1cf7e81-9c71-48db-9db4-1f1913e771dd.png)

The employees on this table can step down into a part-time position as mentors for new hires instead of retiring completely.

## Summary
* **How many roles will need to be filled as the "silver tsunami" begins to make an impact?** There are 72,458 employees close to retirement across all the departments in P-H.

* **Are there enough qualified, retirement-ready employees in the departments to mentor the next generation of Pewlett Hackard employees?** Considering there are 72,458 positions that will be vacant and only 1549 eligible employees for the mentorship program, there are not enough qualified individuals.

We created a new query using the **AGE** keyword to find the years of experenience of each employee currently working in Pewlett-Hackard.

<kbd>![image](https://user-images.githubusercontent.com/110706169/193394667-77b2a131-7e2f-47da-8cbb-06b6fa65167f.png)</kbd>

After running the query you can see that we added a new column with the years of experience of every current employee in the company.
![image](https://user-images.githubusercontent.com/110706169/193394593-39f7fb8e-6cb2-4b09-8400-6f377058de41.png)

This data can help us find more mentors who are not as close to retirement to assist in the mentoring program.
