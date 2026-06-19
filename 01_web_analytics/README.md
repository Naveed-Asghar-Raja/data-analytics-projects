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
Bounce rate analysis revealed inconsistent visitor engagement, with paid social campaigns (Instagram and Facebook ads CPC) showing concerning bounce rates above 50% on mobile devices.

### 🛠️ Action
Analyzed bounce rate by traffic source, medium and device combination using SQL to isolate which specific paid campaigns were underperforming.

### ✅ Result
- **Instagram CPC (mobile)** — highest bounce rate at **59%**
- **Facebook CPC (mobile)** — **54%** bounce rate
- **Facebook CPC (desktop)** — **52%** bounce rate
- **Direct traffic** performed best (35-37%), indicating strong intent-driven visits

**Recommendation:** The landing pages used in Instagram and Facebook CPC campaigns may not be mobile-optimized — possible causes include slow load times, poor mobile responsiveness, or mismatch between ad creative and landing page content. Recommend a mobile UX audit specifically for these paid campaign landing pages.

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
