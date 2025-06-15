CREATE DATABASE PROJECT;
USE PROJECT;

CREATE TABLE PROJECT_MANAGMENT(project_id INT,project_name VARCHAR(20),description VARCHAR(20));
ALTER TABLE PROJECT_MANAGMENT ADD COLUMN start_date VARCHAR(20);
ALTER TABLE PROJECT_MANAGMENT ADD COLUMN end_date VARCHAR(20);
ALTER TABLE PROJECT_MANAGMENT ADD COLUMN status VARCHAR(20);
ALTER TABLE PROJECT_MANAGMENT ADD COLUMN assigned_to VARCHAR(20);
ALTER TABLE PROJECT_MANAGMENT ADD COLUMN last_updated VARCHAR(20);

ALTER TABLE PROJECT_MANAGMENT RENAME COLUMN start_date TO started_date;
ALTER TABLE PROJECT_MANAGMENT RENAME COLUMN end_date TO ended_date;
ALTER TABLE PROJECT_MANAGMENT RENAME COLUMN last_updated TO updates;

ALTER TABLE PROJECT_MANAGMENT MODIFY project_name VARCHAR(15);
DESC PROJECT_MANAGMENT;
ALTER TABLE PROJECT_MANAGMENT MODIFY started_date DATE;
ALTER TABLE PROJECT_MANAGMENT MODIFY ended_date DATE;

CREATE TABLE PROJECT_DETAILS(project_code INT,category VARCHAR(20),budget VARCHAR(20),project_manager VARCHAR(10),created_at VARCHAR(20));
ALTER TABLE PROJECT_DETAILS ADD COLUMN status VARCHAR(20);
ALTER TABLE PROJECT_DETAILS ADD COLUMN deadline DATE;
ALTER TABLE PROJECT_DETAILS ADD COLUMN priority VARCHAR(20);

ALTER TABLE PROJECT_DETAILS RENAME COLUMN status TO updates;
ALTER TABLE PROJECT_DETAILS RENAME COLUMN deadline TO dead_line;
ALTER TABLE PROJECT_DETAILS RENAME COLUMN priority TO priorities;

ALTER TABLE PROJECT_DETAILS MODIFY budget FLOAT;
DESC PROJECT_DETAILS;
ALTER TABLE PROJECT_DETAILS MODIFY category VARCHAR(30);
ALTER TABLE PROJECT_DETAILS MODIFY created_at DATE;

CREATE TABLE PROJECT_TASKS(project_id INT,project_name VARCHAR(20),description VARCHAR(20));
DROP TABLE PROJECT_TASKS; 

CREATE TABLE PROJECT_TASK(task_id INT,project_id INT,task_name VARCHAR(20),due_date VARCHAR(10),task_status VARCHAR(20));
ALTER TABLE PROJECT_TASK ADD COLUMN assigned VARCHAR(20);
ALTER TABLE PROJECT_TASK ADD COLUMN task_priority VARCHAR(20);
ALTER TABLE PROJECT_TASK ADD COLUMN created__at VARCHAR(20);


ALTER TABLE PROJECT_TASK RENAME COLUMN assigned TO assigned_to;
ALTER TABLE PROJECT_TASK RENAME COLUMN task_priority TO task_priority;
ALTER TABLE PROJECT_TASK RENAME COLUMN created__at TO created_at;

ALTER TABLE PROJECT_TASK MODIFY task_name VARCHAR(25);
DESC PROJECT_TASK;
ALTER TABLE PROJECT_TASK MODIFY due_date DATE;
ALTER TABLE PROJECT_TASK MODIFY task_status VARCHAR(45);

INSERT INTO PROJECT_MANAGMENT VALUES(1, 'App1', 'Simple app', '2025-04-01', '2025-04-30', 'Ali', 'Started', 'ongoing'),
(2, 'App2', 'Basic tool', '2025-04-05', '2025-05-01', 'Sara', 'Design phase', 'ongoing'),
(3, 'App3', 'Tracking app', '2025-04-10', '2025-05-10', 'Omar', 'In progress', 'ongoing'),
(4, 'App4', 'Chat system', '2025-04-15', '2025-05-20', 'Nina', 'Testing started', 'ongoing'),
(5, 'App5', 'Note app', '2025-04-03', '2025-04-28', 'Zaid', 'Initial setup', 'ongoing'),
(6, 'App6', 'Weather app', '2025-04-06', '2025-05-05', 'Lina', 'Planning', 'ongoing'),
(7, 'App7', 'Task manager', '2025-04-08', '2025-05-08', 'Ayan', 'In progress', 'ongoing'),
(8, 'App8', 'Reminder app', '2025-04-12', '2025-05-12', 'Tariq', 'Started', 'ongoing'),
(9, 'App9', 'Budget tracker', '2025-04-14', '2025-05-15', 'Maya', 'Development', 'ongoing'),
(10, 'App10', 'News app', '2025-04-16', '2025-05-18', 'Reem', 'Reviewing', 'ongoing'),
(11, 'App11', 'Study planner', '2025-04-02', '2025-04-25', 'Bilal', 'Initial phase', 'ongoing'),
(12, 'App12', 'Health app', '2025-04-07', '2025-05-03', 'Yara', 'Wireframing', 'ongoing'),
(13, 'App13', 'Fitness app', '2025-04-11', '2025-05-11', 'Adil', 'Building UI', 'ongoing'),
(14, 'App14', 'Quiz app', '2025-04-13', '2025-05-13', 'Sana', 'Coding', 'ongoing'),
(15, 'App15', 'Language app', '2025-04-04', '2025-04-29', 'Nour', 'Backend setup', 'ongoing'),
(16, 'App16', 'E-learning app', '2025-04-09', '2025-05-09', 'Zara', 'Started', 'ongoing'),
(17, 'App17', 'Cooking app', '2025-04-17', '2025-05-17', 'Hamza', 'Frontend in progress', 'ongoing'),
(18, 'App18', 'Music app', '2025-04-18', '2025-05-19', 'Amir', 'Initial design', 'ongoing'),
(19, 'App19', 'Travel app', '2025-04-19', '2025-05-20', 'Layla', 'UI design', 'ongoing'),
(20, 'App20', 'E-commerce app', '2025-04-20', '2025-05-21', 'Farah', 'Database created', 'ongoing');

SELECT * FROM PROJECT_MANAGMENT;

INSERT INTO PROJECT_DETAILS VALUES(1, 'App Development', '5000', 'bahu', '2025-04-01', 'Started', '2025-04-30', 'High');
INSERT INTO PROJECT_DETAILS VALUES(2, 'Website Development', '3000', 'hara', '2025-04-05', 'Planning', '2025-05-01', 'Medium');
INSERT INTO PROJECT_DETAILS VALUES(3, 'Mobile App', '4000', 'katta', '2025-04-10', 'Design phase', '2025-05-10', 'High');
INSERT INTO PROJECT_DETAILS VALUES(4, 'Software Engineering', '7000', 'Nina', '2025-04-15', 'Final testing', '2025-05-20', 'Low');
INSERT INTO PROJECT_DETAILS VALUES(5, 'App Development', '6000', 'malik', '2025-04-03', 'Initial setup', '2025-04-28', 'High');
INSERT INTO PROJECT_DETAILS VALUES(6, 'AI Development', '12000', 'reddy', '2025-04-06', 'Researching', '2025-05-05', 'Medium');
INSERT INTO PROJECT_DETAILS VALUES(7, 'Web App', '3500', 'Ayan', '2025-04-08', 'Backend setup', '2025-05-08', 'High');
INSERT INTO PROJECT_DETAILS VALUES(8, 'CRM System', '8000', 'srii', '2025-04-12', 'Development', '2025-05-12', 'Medium');
INSERT INTO PROJECT_DETAILS VALUES(9, 'E-commerce App', '15000', 'Maya', '2025-04-14', 'Planning', '2025-05-15', 'High');
INSERT INTO PROJECT_DETAILS VALUES(10, 'Analytics Dashboard', '9000', 'reena', '2025-04-16', 'Data integration', '2025-05-18', 'Low');
INSERT INTO PROJECT_DETAILS VALUES(11, 'Financial Tracker', '2000', 'halal', '2025-04-02', 'Final adjustments', '2025-04-25', 'Medium');
INSERT INTO PROJECT_DETAILS VALUES(12, 'Fitness Tracker', '4000', 'yohoo', '2025-04-07', 'Wireframing', '2025-05-03', 'Low');
INSERT INTO PROJECT_DETAILS VALUES(13, 'Health App', '5000', 'Adil', '2025-04-11', 'UI development', '2025-05-11', 'High');
INSERT INTO PROJECT_DETAILS VALUES(14, 'Study Planner', '2500', 'Sana', '2025-04-13', 'Task list creation', '2025-05-13', 'Medium');
INSERT INTO PROJECT_DETAILS VALUES(15, 'Learning Platform', '9000', 'ohm', '2025-04-04', 'Backend setup', '2025-04-29', 'High');
INSERT INTO PROJECT_DETAILS VALUES(16, 'Gaming App', '10000', 'Zara', '2025-04-09', 'Prototyping', '2025-05-09', 'Medium');
INSERT INTO PROJECT_DETAILS VALUES(17, 'Cooking App', '7000', 'karan', '2025-04-17', 'Initial design', '2025-05-17', 'Low');
INSERT INTO PROJECT_DETAILS VALUES(18, 'Music Player', '4500', 'Amir', '2025-04-18', 'User testing', '2025-05-19', 'High');
INSERT INTO PROJECT_DETAILS VALUES(19, 'Travel Planner', '5500', 'abdul', '2025-04-19', 'Design', '2025-05-20', 'Medium');
INSERT INTO PROJECT_DETAILS VALUES(20, 'Social Media App', '9500', 'Farah', '2025-04-20', 'Planning', '2025-05-21', 'High');

SELECT * FROM PROJECT_DETAILS;

INSERT INTO PROJECT_TASK VALUES(1, 101, 'Design Homepage', '2025-05-01', 'In Progress', 'bahu', 'High', '2025-04-20'),
(2, 102, 'Develop Login', '2025-05-03', 'Completed', 'hara', 'Medium', '2025-04-21'),
(3, 103, 'Database Setup', '2025-05-05', 'Pending', 'katta', 'High', '2025-04-22'),
(4, 104, 'API Integration', '2025-05-07', 'In Progress', 'Nina', 'Medium', '2025-04-23'),
(5, 105, 'User Testing', '2025-05-10', 'Pending', 'malik', 'Low', '2025-04-24'),
(6, 106, 'Fix Bugs', '2025-05-04', 'In Progress', 'reddy', 'High', '2025-04-25'),
(7, 107, 'UI Design', '2025-05-02', 'Completed', 'Ayan', 'Medium', '2025-04-26'),
(8, 108, 'Performance Check', '2025-05-08', 'Pending', 'srii', 'Low', '2025-04-27'),
(9, 109, 'Deploy to Server', '2025-05-06', 'In Progress', 'Maya', 'High', '2025-04-28'),
(10, 110, 'Security Review', '2025-05-09', 'Pending', 'reena', 'Medium', '2025-04-29'),
(11, 111, 'Set Up Git', '2025-04-30', 'Completed', 'halal', 'Low', '2025-04-20'),
(12, 112, 'Build Registration', '2025-05-01', 'In Progress', 'yohoo', 'Medium', '2025-04-21'),
(13, 113, 'Analytics Module', '2025-05-11', 'Pending', 'Adil', 'High', '2025-04-22'),
(14, 114, 'Chat Integration', '2025-05-12', 'In Progress', 'Sana', 'Medium', '2025-04-23'),
(15, 115, 'Add Payment API', '2025-05-13', 'Completed', 'ohm', 'High', '2025-04-24'),
(16, 116, 'Theme Styling', '2025-05-14', 'In Progress', 'Zara', 'Low', '2025-04-25'),
(17, 117, 'Push Notifications', '2025-05-15', 'Pending', 'karan', 'Medium', '2025-04-26'),
(18, 118, 'Backup System', '2025-05-16', 'Completed', 'Amir', 'High', '2025-04-27'),
(19, 119, 'Testing Scripts', '2025-05-17', 'In Progress', 'abdul', 'Medium', '2025-04-28'),
(20, 120, 'Create Reports', '2025-05-18', 'Pending', 'Farah', 'Low', '2025-04-29');

SELECT * FROM PROJECT_TASK;

SELECT * FROM PROJECT_MANAGMENT;

UPDATE PROJECT_MANAGMENT SET project_name='new app' where project_id=1;
UPDATE PROJECT_MANAGMENT SET description='advance tool' where project_id=1;
UPDATE PROJECT_MANAGMENT SET started_date='2025-05-02' where project_id=2;
UPDATE PROJECT_MANAGMENT SET ended_date='2025-05-31' where project_id=3;
UPDATE PROJECT_MANAGMENT SET assigned_to='katta' where project_id=4;
UPDATE PROJECT_MANAGMENT SET updates='setup initiated' where project_id=5;
UPDATE PROJECT_MANAGMENT SET status='not completed' where project_id=6;
UPDATE PROJECT_MANAGMENT SET started_date='2025-09-02' where project_id=7;
UPDATE PROJECT_MANAGMENT SET ended_date='2028-05-02' where project_id=8;
UPDATE PROJECT_MANAGMENT SET status='pause' where project_id=9;

DELETE FROM PROJECT_MANAGMENT WHERE project_id=8;
DELETE FROM PROJECT_MANAGMENT WHERE project_id=18 OR project_id=10;
DELETE FROM PROJECT_MANAGMENT WHERE project_name='App7' AND status='ongoing'
DELETE FROM PROJECT_MANAGMENT WHERE project_id IN(1,2);
DELETE FROM PROJECT_MANAGMENT WHERE project_id NOT IN(3,4);
DELETE FROM PROJECT_MANAGMENT WHERE project_id BETWEEN 3 AND 4
DELETE FROM PROJECT_MANAGMENT WHERE project_name 'A' AND 'B'

SELECT * FROM PROJECT_DETAILS WHERE project_code=1;
SELECT * FROM PROJECT_DETAILS WHERE project_code=2 AND BUDGET=3000;
SELECT * FROM PROJECT_DETAILS WHERE BUDGET=3000 OR project_code=4;
SELECT * FROM PROJECT_DETAILS WHERE project_manager IN(sara,Ali);//









