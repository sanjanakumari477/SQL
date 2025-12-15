use sample;

-- 1. Extract domain from email
SELECT SUBSTRING_INDEX(email, '@', -1) AS domain from employees;

-- 2. Mask part of a phone number for privacy
SELECT CONCAT(LEFT('9876543210', 3), '*****', RIGHT('9876543210', 2)) AS masked_phone;

-- 3. Generate a unique reference code
SELECT CONCAT('INV-', LPAD(1, 7, '0')) AS invoice_code;

-- 4. Extract first name from full name
SELECT SUBSTRING_INDEX('John Doe Right', ' ', 2) AS first_name;

-- 5. Extract last name from full name
SELECT SUBSTRING_INDEX('John Doe', ' ', -1) AS last_name;

-- 6. Standardize phone numbers (remove dashes)
SELECT REPLACE('987-654-3210', '-', '_') AS clean_phone;

-- 7. Format price with currency
SELECT CONCAT('$', FORMAT(1234.567, 2)) AS formatted_price;

-- 8. Validate if an email contains '@'
SELECT IF(LOCATE('@', 'user@example.com') > 1, 'Valid', 'Invalid') AS email_validation;

-- 9. Extract year from a date string
SELECT LEFT('2024-04-04', 4) AS year_extracted;

-- 10. Find duplicate values in a column (Example: usernames)
SELECT username, COUNT(*) FROM users GROUP BY username HAVING COUNT(*) > 1;

-- 11. Normalize case-sensitive data (convert to lowercase)
SELECT LOWER('HELLO WORLD') AS normalized_text;

-- 12. Generate username from email
SELECT CONCAT(LEFT('user@example.com', LOCATE('@', 'user@example.com') - 1), '_123') AS generated_username;

-- 13. Extract file extension from filename
SELECT SUBSTRING_INDEX('document.pdf', '.', -1) AS file_extension;

-- 14. Remove extra spaces from a user input
SELECT TRIM('  Hello World   ') AS trimmed_text;

-- 15. Create a user-friendly slug for URLs
SELECT LOWER(REPLACE('Waqf Bill pass very good', ' ', '-')) AS url_slug;

-- 16. Capitalize first letter of each word
SELECT CONCAT(UCASE(LEFT('hello world', 1)), SUBSTRING('hello world', 2)) AS capitalized_text;

-- 17. Count occurrences of a word in a string
SELECT (LENGTH('apple banana apple') - LENGTH(REPLACE('apple banana apple', 'apple', ''))) / LENGTH('apple') AS word_count;

-- 18. Check if a string starts with a specific word
SELECT IF(LEFT('Hello World', 5) = 'Hello', 'Yes', 'No') AS starts_with_hello;

-- 19. Replace NULL values with a default string
SELECT IFNULL(NULL, 'N/A') AS default_value;

-- 20. Format customer IDs to be 6-digits long
SELECT LPAD(25, 6, '0') AS formatted_customer_id;

-- 21. Extract numbers from a mixed string (e.g., invoice ID)
SELECT REGEXP_REPLACE('INV-12345', '[^0-9]', '') AS extracted_number;

-- 22. Find the most common first name in a user table
SELECT SUBSTRING_INDEX(empName, ' ', 1) AS employeeName, COUNT(*) FROM employees GROUP BY empName ORDER BY COUNT(*) DESC LIMIT 1;

-- 23. Generate a simple password hash (for display, not secure)
SELECT MD5('mypassword') AS password_hash;

-- 24. Extract username from an email address
SELECT LEFT('john.doe@gmail.com', LOCATE('@', 'john.doe@gmail.com') - 1) AS username;

-- 25. Remove special characters from a string
SELECT REGEXP_REPLACE('Hello@World!', '[^a-zA-Z0-9 ]', '') AS cleaned_text;

-- 26. Validate if a string is numeric
SELECT IF('12345' REGEXP '^[0-9]+$', 'Yes', 'No') AS is_numeric;

-- 27. Find all users with a Gmail address
SELECT * FROM employees WHERE email LIKE '%@gmail.com';

-- 28. Extract initials from a name
SELECT CONCAT(LEFT('John Doe', 1), LEFT(SUBSTRING_INDEX('John Doe', ' ', -1), 1)) AS initials;

-- 29. Convert text to camel case
SELECT CONCAT(UPPER(LEFT('hello world', 1)), LOWER(SUBSTRING('hello world', 2))) AS camel_case_text;

-- 30. Generate a random alphanumeric code
SELECT CONCAT(CHAR(65 + FLOOR(RAND() * 26)), LPAD(FLOOR(RAND() * 99999), 5, '0')) AS random_code;

-- 31. Remove HTML tags from a string
SELECT REGEXP_REPLACE('<b>Hello</b><p>', '<[^>]*>', '') AS clean_text;

-- 32. Replace multiple spaces with a single space
SELECT REGEXP_REPLACE('Hello   World', ' +', ' ') AS single_spaced_text;

-- 33. Count words in a sentence
SELECT LENGTH(TRIM('Hello world')) - LENGTH(REPLACE(TRIM('Hello world'), ' ', '')) + 1 AS word_count;

-- 34. Validate if a string contains only alphabets
SELECT IF('Hello123' REGEXP '^[A-Za-z]+$', 'Yes', 'No') AS is_alpha;

-- 35. Extract text before a specific word
SELECT SUBSTRING_INDEX('John Doe is a developer', ' is', 1) AS extracted_text;

-- 36. Extract text after a specific word
SELECT SUBSTRING_INDEX('John Doe is a developer', 'is ', -1) AS extracted_text_after;

-- 37. Find duplicate email domains in a user table
SELECT SUBSTRING_INDEX(email, '@', -1) AS domain, COUNT(*) FROM employees GROUP BY domain HAVING COUNT(*) > 1;

-- 38. Generate a unique ID based on timestamp
SELECT UNIX_TIMESTAMP() AS unique_id;

-- 39. Reverse first and last names
SELECT CONCAT(SUBSTRING_INDEX('John Doe', ' ', -1), ' ', SUBSTRING_INDEX('John Doe', ' ', 1)) AS reversed_name;

-- 40. Format full name with proper case
SELECT CONCAT(UCASE(LEFT('john doe', 1)), LCASE(SUBSTRING('john doe', 2))) AS formatted_name;
