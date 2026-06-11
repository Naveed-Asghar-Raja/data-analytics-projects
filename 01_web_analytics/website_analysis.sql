-- =====================================================
-- Project: Website Traffic Analysis
-- Description: Analyze traffic sources, devices,
-- conversions, and bounce rates
-- Author: Naveed Asghar Raja
-- =====================================================


-- =====================================
-- 1. TABLE CREATION
-- =====================================

CREATE TABLE website_traffic (
	date DATE,
	source TEXT,
	medium TEXT,
	device TEXT,
	sessions INT,
	users INT,
	conversions INT,
	bounce_rate FLOAT
); 

-- =====================================
-- 2. DATA PREVIEW
-- =====================================

-- View sample data
SELECT *
FROM website_traffic;

-- =====================================
-- 3. TRAFFIC SOURCE ANALYSIS
-- =====================================

-- Total sessions by source
SELECT 
	source, 
	SUM(sessions) AS total_sessions
FROM website_traffic
GROUP BY source
ORDER BY total_sessions DESC;

-- =====================================
-- 4. DEVICE PERFORMANCE ANALYSIS
-- =====================================

-- Sessions and conversions by device
SELECT 
	device,
	SUM(sessions) AS total_sessions,
	SUM(conversions) AS total_conversions	
FROM website_traffic
GROUP BY device
ORDER BY total_sessions DESC;

-- Conversion rate by device
SELECT 
	device,
	SUM(sessions) AS total_sessions,
	SUM(conversions) AS total_conversions,
	ROUND(SUM(conversions)::NUMERIC / NULLIF(SUM(sessions), 0) * 100, 2) AS conversion_rate_percent
FROM website_traffic
GROUP BY device
ORDER BY conversion_rate_percent DESC;

-- =====================================
-- 5. SOURCE PERFORMANCE ANALYSIS
-- =====================================

-- Conversion rate by traffic source
SELECT 
	source,
	SUM(sessions) AS total_sessions,
	SUM(conversions) AS total_conversions,
	ROUND(SUM(conversions)::NUMERIC / NULLIF(SUM(sessions), 0) * 100, 2) AS conversion_rate_percent
FROM website_traffic
GROUP BY source
ORDER BY conversion_rate_percent DESC;

-- =====================================
-- 6. SOURCE + DEVICE ANALYSIS
-- =====================================

-- Conversion performance by source and device
SELECT
	source,
	device,
	SUM(sessions) AS total_sessions,
	SUM(conversions) AS total_conversions,
	ROUND(SUM(conversions)::NUMERIC / NULLIF(SUM(sessions), 0) * 100, 2) AS conversion_rate_percent
FROM website_traffic
GROUP BY source, device
ORDER BY conversion_rate_percent DESC;

-- =====================================
-- 7. BOUNCE RATE ANALYSIS
-- =====================================

-- Average bounce rate by source
SELECT 
	source,
	ROUND(AVG(bounce_rate)::NUMERIC * 100, 2) AS avg_bounce_rate_percent
FROM website_traffic
GROUP BY source
ORDER BY avg_bounce_rate_percent DESC;

-- Bounce rate by source and device
SELECT 
	source,
	device,
	ROUND(AVG(bounce_rate)::NUMERIC * 100, 2) AS avg_bounce_rate_percent
FROM website_traffic
GROUP BY source, device
ORDER BY avg_bounce_rate_percent DESC;



