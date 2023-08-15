-- Create table second_table if it doesn't exist
CREATE TABLE IF NOT EXISTS hbtn_0c_0.second_table (
  id INT,
  name VARCHAR(256),
  score INT
);

-- Insert multiple rows into second_table
INSERT INTO hbtn_0c_0.second_table (id, name, score)
VALUES (1, 'Chioma', 16),
       (2, 'Alex', 12),
       (3, 'John', 7),
       (4, 'Fatima', 20);
