# MySQL_Built_in_Functions_Exercises
JAVA DB January 2020, SoftUni Exercises

Part I – Queries for SoftUni Database
1.	Find Names of All Employees by First Name
Write a SQL query to find first and last names of all employees whose first name starts with “Sa” (case insensitively). Order the information by id. Submit your query statements as Prepare DB & run queries.

…	…
2.	Find Names of All employees by Last Name 
Write a SQL query to find first and last names of all employees whose last name contains “ei” (case insensitively). Order the information by id. Submit your query statements as Prepare DB & run queries.

…	…
3.	Find First Names of All Employees
Write a SQL query to find the first names of all employees in the departments with ID 3 or 10 and whose hire year is between 1995 and 2005 inclusively. Order the information by id. Submit your query statements as Prepare DB & run queries.

…
4.	Find All Employees Except Engineers
Write a SQL query to find the first and last names of all employees whose job titles does not contain “engineer”. Order the information by id. Submit your query statements as Prepare DB & run queries.

…	…
5.	Find Towns with Name Length
Write a SQL query to find town names that are 5 or 6 symbols long and order them alphabetically by town name. Submit your query statements as Prepare DB & run queries.

…
6.	 Find Towns Starting With
Write a SQL query to find all towns that start with letters M, K, B or E (case insensitively). Order them alphabetically by town name. Submit your query statements as Prepare DB & run queries.

…	…
7.	 Find Towns Not Starting With
Write a SQL query to find all towns that do not start with letters R, B or D (case insensitively). Order them alphabetically by name. Submit your query statements as Prepare DB & run queries.

…	…
8.	Create View Employees Hired After 2000 Year
Write a SQL query to create view v_employees_hired_after_2000 with the first and the last name of all employees hired after 2000 year. Submit your query statements as Run skeleton, run queries & check DB.

...	...
9.	Length of Last Name
Write a SQL query to find the names of all employees whose last name is exactly 5 characters long.

…	…
Part II – Queries for Geography Database 
10.	Countries Holding ‘A’ 3 or More Times
Find all countries that hold the letter 'A' in their name at least 3 times (case insensitively), sorted by ISO code. Display the country name and the ISO code. Submit your query statements as Prepare DB & run queries.

…	…
11.	 Mix of Peak and River Names
Combine all peak names with all river names, so that the last letter of each peak name is the same as the first letter of its corresponding river name. Display the peak name, the river name, and the obtained mix. Sort the results by the obtained mix alphabetically. Submit your query statements as Prepare DB & run queries.

…	…	…
Part III – Queries for Diablo Database
12.	Games from 2011 and 2012 year
Find the top 50 games ordered by start date, then by name. Display only the games from the years 2011 and 2012. Display the start date in the format “YYYY-MM-DD”. Submit your query statements as Prepare DB & run queries.

…	…
13.	 User Email Providers
Find information about the email providers of all users. Display the user_name and the email provider. Sort the results by email provider alphabetically, then by username. Submit your query statements as Prepare DB & run queries.

…	…
14.	 Get Users with IP Address Like Pattern
Find the user_name and the ip_address for each user, sorted by user_name alphabetically. Display only the rows, where the ip_address matches the pattern: “___.1%.%.___”. Submit your query statements as Prepare DB & run queries.

…	…
15.	 Show All Games with Duration and Part of the Day
Find all games with their corresponding part of the day and duration. Parts of the day should be Morning (start time is >= 0 and < 12), Afternoon (start time is >= 12 and < 18), Evening (start time is >= 18 and < 24). Duration should be Extra Short (smaller or equal to 3), Short (between 3 and 6 including), Long (between 6 and 10 including) and Extra Long in any other cases or without duration. Submit your query statements as Prepare DB & run queries.

…	…	…
Part IV – Date Functions Queries
16.	 Orders Table
You are given a table orders(id, product_name, order_date) filled with data. Consider that the payment for an order must be accomplished within 3 days after the order date. Also the delivery date is up to 1 month. Write a query to show each product’s name, order date, pay and deliver due dates. Submit your query statements as Prepare DB & run queries.
