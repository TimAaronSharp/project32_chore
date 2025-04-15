CREATE TABLE IF NOT EXISTS accounts(
  id VARCHAR(255) NOT NULL PRIMARY KEY COMMENT 'primary key',
  created_at DATETIME DEFAULT CURRENT_TIMESTAMP COMMENT 'Time Created',
  updated_at DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'Last Update',
  name VARCHAR(255) COMMENT 'User Name',
  email VARCHAR(255) UNIQUE COMMENT 'User Email',
  picture VARCHAR(255) COMMENT 'User Picture'
) default charset utf8mb4 COMMENT '';


CREATE TABLE chores(
  id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
  name VARCHAR(255) NOT NULL,
  description VARCHAR(255),
  is_complete BOOLEAN DEFAULT false,
  created_at DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,
  deadline DATETIME,
  has_started BOOLEAN NOT NULL DEFAULT false,
  assigned_to VARCHAR(255),
  priority ENUM ('Low', 'Medium', 'High')
)

INSERT INTO chores(name, description, deadline, assigned_to, priority) VALUES('Sweep dirt road', 'The dirt road keeps getting dirty. Sweep it up.', '2025-04-20 12:00:00', 'Jessica', 'Low')

INSERT INTO chores(name, description, deadline, assigned_to, priority) VALUES('Solve world hunger', 'Tell no-one.', '2025-05-15 13:51:00', 'The Grinch', 'High')

INSERT INTO chores(name, description, deadline, assigned_to, priority) VALUES('Run in the Swim Race', "They said I couldn't participate because I can't swim, but there's more than one way to skin a balloon.", '2025-06-01 08:25:00', 'Moron', 'Medium')

INSERT INTO chores(name, description, deadline, assigned_to, priority) VALUES('Keep Being Awesome', 'Somebody needs to be.', null, 'Me', 'High')

SELECT * FROM chores;

SELECT * FROM chores WHERE priority = 'High'