-- Inspect table structure
DESCRIBE my_contacts;
SHOW CREATE TABLE my_contacts;

-- Add AUTO_INCREMENT primary key
ALTER TABLE my_contacts
    ADD COLUMN contact_id INT NOT NULL AUTO_INCREMENT PRIMARY KEY FIRST;

ALTER TABLE my_contacts
    ADD PRIMARY KEY (contact_id);

-- Verify the changes
DESCRIBE my_contacts;