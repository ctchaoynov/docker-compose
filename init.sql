CREATE DATABASE ctchaoynov;

\c ctchaoynov;

CREATE TABLE admin_users (
    user_id SERIAL PRIMARY KEY,
    username VARCHAR(50) UNIQUE NOT NULL,
    password_hash VARCHAR(100) NOT NULL,
    email VARCHAR(100) UNIQUE NOT NULL,
    full_name VARCHAR(100) NOT NULL,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

INSERT INTO admin_users (username, password_hash, email, full_name)
VALUES
    ('Stéphane', '$2a$12$bL0QlWE6eJSvygolH/GAruXs9iz8tGjjzlhUP4zHFVYO6ryo0iylu', 'legueux@gmail.com', 'Stéphane Gueux');