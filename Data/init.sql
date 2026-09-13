-- Initialize the AIDC database schema

-- Enable extensions if needed
CREATE EXTENSION IF NOT EXISTS "uuid-ossp";

-- Create a simple health-check table
CREATE TABLE IF NOT EXISTS _healthcheck (
    id SERIAL PRIMARY KEY,
    checked_at TIMESTAMP WITH TIME ZONE DEFAULT NOW()
);

INSERT INTO _healthcheck (checked_at) VALUES (NOW());