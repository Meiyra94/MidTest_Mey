SQL 1 : Consecutive Numbers
Task
Write a SQL query to find all numbers that appear at least 3 times in a row.
The input will be a table named input_table and has 2 columns:
'id' column, a unique ID of each row, showing the order
'num' column, a number for each ID
Your output will be a table with only 1 column and display the number that appear at least 3 times (or more) in a row. Don't output a duplicate number.
Your output should be in ascending order.
The id column in input_table will always be in the form of an INTEGER, and the next row is always +1 from the previous row.

Jawab:
select * from no1;
+----+------+
| id | num  |
+----+------+
|  1 |    1 |
|  2 |    1 |
|  3 |    1 |
|  4 |    2 |
|  5 |    1 |
|  6 |    2 |
|  7 |    2 |
|  8 |    1 |
|  9 |    3 |
| 10 |    4 |
+----+------+
10 rows in set (0.016 sec)

SELECT DISTINCT num
    -> FROM (
    ->     SELECT
    ->         num,
    ->         LAG(num) OVER (ORDER BY id) AS prev_num,
    ->         LEAD(num) OVER (ORDER BY id) AS next_num
    ->     FROM no1
    -> ) AS subquery
    -> WHERE num = prev_num AND num = next_num
    -> ORDER BY num;
+------+
| num  |
+------+
|    1 |
+------+
1 row in set (0.052 sec)