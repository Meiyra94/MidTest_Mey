SQL 2 : Email Duplicates
Write a SQL query to find all duplicate emails that is given in the input.
The input will be a table named `email_list` consisting of two columns:
- The first column is the ID
- The second column is the email address
Your output should consist of one column, and inside that column is the email address(es) that is/are duplicated.

Jawab:
select*from no2;
+----+-----------------+
| id | email           |
+----+-----------------+
|  1 | mey@gmail.com   |
|  2 | vanny@gmail.com |
|  3 | arul@gmail.com  |
|  4 | arul@gmail.com  |
|  5 | mey@gmail.com   |
+----+-----------------+
5 rows in set (0.001 sec)

SELECT email
    -> FROM no2
    -> GROUP BY email
    -> HAVING COUNT(email) > 1;
+----------------+
| email          |
+----------------+
| arul@gmail.com |
| mey@gmail.com  |
+----------------+
2 rows in set (0.021 sec)