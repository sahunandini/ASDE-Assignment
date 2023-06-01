SELECT 
    d.NAME AS `DEPT_NAME`, -- Selecting the department name and assigning it an alias 'DEPT_NAME'
    AVG(s.`AMT (USD)`) AS `AVG_MONTHLY_SALARY (USD)` -- Calculating the average of 'AMT (USD)' column and assigning it an alias 'AVG_MONTHLY_SALARY (USD)'
FROM 
    employees AS e -- Alias 'e' for the 'employees' table
JOIN 
    departments AS d ON e.`DEPT_ID` = d.id -- Joining 'employees' table with 'departments' table based on matching 'DEPT ID' and 'id'
JOIN 
    salaries AS s ON s.EMP_ID = e.id -- Joining 'salaries' table with the result of the previous join based on matching 'EMP_ID' and 'id'
GROUP BY 
    d.NAME -- Grouping the result by department name
ORDER BY 
    AVG(s.`AMT (USD)`) DESC -- Sorting the result by the average salary in descending order
LIMIT 3; -- Limiting the result to the top 3 rows


