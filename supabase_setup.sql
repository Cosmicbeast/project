-- Run this SQL in your Supabase SQL Editor to create the predictions table

CREATE TABLE predictions (
    id BIGSERIAL PRIMARY KEY,
    class_name TEXT NOT NULL,
    confidence NUMERIC NOT NULL,
    timestamp TIMESTAMPTZ DEFAULT NOW()
);

-- Enable Row Level Security (optional)
ALTER TABLE predictions ENABLE ROW LEVEL SECURITY;

-- Create a policy to allow inserts (adjust as needed)
CREATE POLICY "Allow public inserts" ON predictions
    FOR INSERT TO anon
    WITH CHECK (true);

-- Create a policy to allow reads (adjust as needed)
CREATE POLICY "Allow public reads" ON predictions
    FOR SELECT TO anon
    USING (true);
