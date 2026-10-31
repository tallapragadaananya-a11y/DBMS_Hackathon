
CREATE DATABASE IF NOT EXISTS taskpilot;
USE taskpilot;

-- 1. Tasks table
CREATE TABLE IF NOT EXISTS tasks (
    id BIGINT AUTO_INCREMENT PRIMARY KEY,
    title VARCHAR(255) NOT NULL,
    description VARCHAR(1000),
    due_date DATE,
    priority VARCHAR(20) NOT NULL DEFAULT 'MEDIUM',
    status VARCHAR(20) NOT NULL DEFAULT 'PENDING',
    source_text VARCHAR(2000),
    created_at DATETIME NOT NULL,
    updated_at DATETIME NOT NULL
);

-- 2. Task history table
CREATE TABLE IF NOT EXISTS task_history (
    id BIGINT AUTO_INCREMENT PRIMARY KEY,
    task_id BIGINT NOT NULL,
    task_title VARCHAR(255),
    action VARCHAR(30) NOT NULL,
    details VARCHAR(1000),
    changed_at DATETIME NOT NULL
);

-- Sample task
INSERT INTO tasks
(title, description, due_date, priority, status, source_text, created_at, updated_at)
VALUES
('Complete project', 'Finish TaskPilot AI project',
 '2026-11-02', 'HIGH', 'PENDING',
 'Complete project by November 2',
 NOW(), NOW());

-- View all tasks
SELECT * FROM tasks;

-- View task history
SELECT * FROM task_history;
