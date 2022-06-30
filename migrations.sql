-- Change column name of first and last to first_name and last_name
ALTER TABLE customers
RENAME COLUMN first TO first_name,
RENAME COLUMN last TO last_name;

-- Change data type of first_name and last_name columns in customers table
ALTER TABLE customers
ALTER COLUMN first_name TYPE VARCHAR(255),
ALTER COLUMN last_name TYPE VARCHAR(255);

-- Change data type of social column to allow only 9 characters and account_number to 14 characters
ALTER TABLE customers
ALTER COLUMN social TYPE CHAR(9),
ALTER COLUMN account_number TYPE CHAR(14);

-- Add new column: line_2 to customers table
ALTER TABLE customers
ADD COLUMN line_2 VARCHAR(255);

-- Change data type of zip to allow for 0's to start the string
ALTER TABLE customers
ALTER COLUMN zip TYPE CHAR(6);

-- Drop column current_balance_cents
ALTER TABLE customers
DROP COLUMN current_balance_cents;

-- Change customer_id column in statements table to not allow NULL
ALTER TABLE statements
ALTER COLUMN customer_id
SET NOT NULL;

-- Update gallons_used to allow for two decimal places.
ALTER TABLE statements
ALTER COLUMN gallons_used
TYPE DECIMAL(10, 2);

-- Add a default value "payment_due" to status.
ALTER TABLE statements
ALTER COLUMN status
SET DEFAULT 20;