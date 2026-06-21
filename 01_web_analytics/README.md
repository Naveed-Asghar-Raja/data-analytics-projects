# 📊 Web Traffic & Bounce Rate Analysis

![PostgreSQL](https://img.shields.io/badge/PostgreSQL-SQL-blue?logo=postgresql)
![Power BI](https://img.shields.io/badge/Power%20BI-Data%20Visualization-yellow?logo=powerbi)
![Status](https://img.shields.io/badge/Project-Completed-success)
![Type](https://img.shields.io/badge/Data-Analytics-blueviolet)

---

## 🧠 Overview
This project analyzes website traffic behavior to identify high-bounce segments and uncover UX or landing page issues affecting paid marketing performance.

The analysis combines **SQL (PostgreSQL)** for data exploration and **Power BI** for visualization and storytelling.

---

## 🎯 Business Objective
To understand why paid social campaigns (Instagram and Facebook) show higher bounce rates and identify patterns across **traffic source and device type** that impact user engagement.

---

## 📂 Dataset
- Simulated web traffic dataset (15 records)
- Stored in PostgreSQL (Supabase)
- Table: `web_analytics.website_traffic`

---

## 🛠️ Tools Used
- PostgreSQL (SQL analysis)
- Supabase (database hosting)
- Power BI (dashboard & visualization)

---

## 📈 SQL Analysis

### 🔹 Bounce Rate by Source & Device
```sql
SELECT 
    source,
    device,
    COUNT(*) AS sessions,
    ROUND(AVG(bounce_rate), 2) AS avg_bounce_rate
FROM web_analytics.website_traffic
GROUP BY source, device
ORDER BY avg_bounce_rate DESC;

🔹 Traffic Performance Overview
SELECT 
    source,
    COUNT(*) AS total_sessions,
    ROUND(AVG(conversion_rate), 2) AS avg_conversion_rate,
    ROUND(AVG(bounce_rate), 2) AS avg_bounce_rate
FROM web_analytics.website_traffic
GROUP BY source;

##📊 Key Findings
. 📱 Instagram Paid Traffic (Mobile) → 59% bounce rate
. 📱 Facebook Paid Traffic (Mobile) → 54% bounce rate
. 💻 Facebook Paid Traffic (Desktop) → 52% bounce rate
. 🎯 Direct Traffic → 35–37% bounce rate (lowest, highest intent)

##🔍 Insights
. Paid social traffic performs significantly worse on mobile devices
. Device type strongly influences bounce behavior
. Direct traffic indicates stronger user intent and higher engagement
. Potential mismatch between ad targeting and landing page experience

##🧪 Hypothesized Causes
. ⏳ Slow page load times on mobile devices
. 📱 Poor mobile responsiveness of landing pages
. 🔄 Misalignment between ad messaging and landing page content
. 🎯 Landing pages not aligned with user intent

##💡 Recommendation

Perform a mobile UX + landing page audit for Instagram and Facebook paid campaigns to improve engagement and reduce bounce rates.

##📊 Power BI Storytelling

The dashboard was designed to answer:

Which traffic sources have the highest bounce rates?
How does device type impact user engagement?
Which channels drive the most high-intent users?
##📌 Dashboard Highlights
-Bounce rate breakdown by source
-Device-level performance comparison
-Conversion vs bounce behavior analysis
-Paid vs organic traffic comparison

📸 Dashboard Preview


# Web Analytics Project

Analysis of website traffic data using PostgreSQL and Power BI.

## Dataset
- 15 rows of web traffic data
- Source: Simulated data
 ## 📂 Data Source
Simulated dataset with 15 rows of web traffic data.
Data stored in PostgreSQL (Supabase) — `web_analytics.website_traffic` table.

## 📖 Project Story

### 🔴 Problem
Analysis of website bounce rates identified inconsistent visitor engagement across acquisition channels. Paid social traffic, particularly from Instagram and Facebook, exhibited elevated bounce rates on mobile devices, indicating potential issues with user experience or campaign-to-landing-page alignment.

### 🛠️ Action
Used SQL to analyze bounce rates by traffic source, medium, and device type to identify underperforming traffic segments and uncover patterns in visitor behavior.

### ✅ Result
📱 Instagram Paid Traffic (Mobile) — highest bounce rate at 59%
📱 Facebook Paid Traffic (Mobile) — 54% bounce rate.
💻 Facebook Paid Traffic (Desktop) — 52% bounce rate.
🎯 Direct Traffic showed the lowest bounce rates (35–37%), indicating stronger user intent and higher engagement.

**🔍 Potential Causes:**
The elevated bounce rates observed in Instagram and Facebook paid traffic may indicate issues with the associated landing pages. Potential contributing factors include:

⏳ Slow page load times on mobile devices
📱 Poor mobile responsiveness of landing pages
🔄 Mismatch between ad messaging and landing page content
🎯 Landing pages are not aligned with user intent

**Recommended Next Step:** Conduct a mobile UX and landing-page performance audit for paid social traffic to identify and address friction points affecting visitor engagement.

## Analysis
- Total Sessions, Users and Conversions
- Bounce Rate analysis
- Conversion Rate by source and device

## Tools
- PostgreSQL (Supabase)
- Power BI
- 
## 📊 Dashboard Preview
![Web Analytics Dashboard](web_analytics_dashboard.png)

## 📁 Files
- `web_traffic_analysis.sql` — SQL queries for data analysis
- `web_analytics_powerbi.pbix` — Power BI dashboard file
