CREATE DATABASE marketing_analytics;

CREATE SCHEMA marketing_performance;

CREATE TABLE marketing_performance.campaign_metrics (
    date DATE,
    source VARCHAR(50),
    campaign VARCHAR(100),
    device VARCHAR(50),
    sessions INTEGER,
    users INTEGER,
    conversions INTEGER,
    bounce_rate DECIMAL(5,2),
    cost DECIMAL(10,2),
    revenue DECIMAL(10,2)
);

SELECT *
FROM information_schema.tables
WHERE table_schema = 'marketing_performance';