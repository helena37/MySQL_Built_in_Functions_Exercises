#Exercise 1 - Find Names of All Employees by First Name
SELECT first_name, last_name
FROM employees
WHERE SUBSTRING(first_name, 1, 2) = 'Sa'
ORDER BY employee_id ASC;

#Exercise 2 - Find Names of All employees by Last Name
SELECT first_name, last_name
FROM employees
WHERE LOCATE('ei', last_name, 1)
ORDER BY employee_id ASC;

#Exercise 3 - Find First Names of All Employees
SELECT first_name
FROM employees
WHERE (department_id = 3 OR department_id = 10)
  AND (hire_date >= '1995-01-01' AND hire_date <= '2005-12-31')
ORDER BY employee_id ASC;

#Exercise 4 - Find All Employees Except Engineers
SELECT first_name, last_name
FROM employees
WHERE NOT LOCATE('engineer', job_title, 1)
ORDER BY employee_id ASC;

#Exercise 5 - Find Towns with Name Length
SELECT name
FROM towns
WHERE LENGTH(name) = 5
   OR LENGTH(name) = 6
ORDER BY name ASC;

#Exercise 6 - Find Towns Starting With
SELECT town_id, name
FROM towns
WHERE LEFT(name, 1) = 'M'
   OR LEFT(name, 1) = 'K'
   OR LEFT(name, 1) = 'B'
   OR LEFT(name, 1) = 'E'
ORDER BY name ASC;

#Exercise 7 - Find Towns Not Starting With
SELECT town_id, name
FROM towns
WHERE LEFT(name, 1) <> 'R'
  AND LEFT(name, 1) <> 'B'
  AND LEFT(name, 1) <> 'D'
ORDER BY name ASC;

#Exercise 8 - Create View Employees Hired After 2000 Year
CREATE VIEW v_employees_hired_after_2000 AS
SELECT first_name, last_name
FROM employees
WHERE hire_date > '2000-12-31 00:00:00';
SELECT *
FROM v_employees_hired_after_2000;

#Exercise 9 - Length of Last Name
SELECT first_name, last_name
FROM employees
WHERE LENGTH(last_name) = 5;

#Exercise 10 - Countries Holding ‘A’ 3 or More Times
SELECT country_name, iso_code
FROM countries
WHERE LENGTH(country_name) - LENGTH(REPLACE(LOWER(country_name), 'a', '')) >= 3
ORDER BY iso_code;

#Exercise 11 - Mix of Peak and River Names
SELECT peak_name,
       river_name,
       LOWER(CONCAT(peak_name, REPLACE(river_name, LEFT(river_name, 1), '')))
           AS mix
FROM peaks,
     rivers
WHERE RIGHT(peak_name, 1) = LEFT(river_name, 1)
ORDER BY mix ASC;

#Exercise 12 - Games from 2011 and 2012 year
SELECT name, LEFT(start, 10)
FROM games
WHERE start BETWEEN '2011-01-01' AND '2012-12-31'
ORDER BY start ASC,
         name ASC
LIMIT 50;

#Exercise 13 - User Email Providers
SELECT user_name,
       SUBSTRING_INDEX(email, '@', -1)
           AS 'email_provider'
FROM users
ORDER BY email_provider ASC,
         user_name ASC;

#Exercise 14 - Get Users with IP Address Like Pattern
SELECT user_name, ip_address
FROM users
WHERE ip_address LIKE ('___.1%.%.___')
ORDER BY user_name ASC;

#Exercise 15 - Show All Games with Duration and Part of the Day
SELECT name    AS 'game',
       CASE
           WHEN HOUR(start) >= 0 AND HOUR(start) < 12 THEN 'Morning'
           WHEN HOUR(start) >= 12 AND HOUR(start) < 18 THEN 'Afternoon'
           ELSE 'Evening'
           END AS 'Part of the day',
       CASE
           WHEN duration <= 3 THEN 'Extra Short'
           WHEN duration > 3 AND duration <= 6 THEN 'Short'
           WHEN duration > 6 AND duration <= 10 THEN 'Long'
           ELSE 'Extra Long'
           END AS 'duration'
FROM games;

#Exercise 16 - Orders Table
SELECT product_name,
       order_date,
       DATE_ADD(DATE (order_date), INTERVAL 3 DAY)   AS 'pay_due',
       DATE_ADD(DATE (order_date), INTERVAL 1 MONTH) AS 'delivery_due'
FROM orders;
