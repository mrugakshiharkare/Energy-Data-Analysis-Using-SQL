🌎 SQL Project — **World Wide Energy Comsumption**

💡 `Introduction`
This project explores global energy trends using SQL — covering energy production, consumption, emissions, GDP, and population across multiple countries and years.
It aims to connect the dots between economic growth, energy use, and environmental impact, giving a clear picture of how different nations contribute to global sustainability.

This project helped me strengthen my understanding of database design, relationships, and analytical querying using MySQL.

🎯 `Project Aim`
To analyze how energy and economy are related — studying how countries produce, consume, and emit energy, and how this affects GDP and population growth over time.

🗄️ `Database Overview`
Database Name: ENERGYDB2
The database contains six interrelated tables built using foreign key constraints to maintain relational integrity.

`Table	Description`
**country_3** :	Stores unique country details
**emission_3** :	Records energy emissions by type and year
**population_3** :	Contains yearly population statistics
**production_3** :	Holds data about energy production sources
**gdp_3** :	Stores yearly GDP values of each country
**consum_3**	Tracks energy consumption by country and year

📌 Each of the above tables (except country) is linked to it using a foreign key relationship.

🧩 `ER Diagram`
The ER diagram file ER_Diagram.png represents the overall database design — showing how each table connects through the country attribute.

⚙️ `Steps to Run the Project`

1. Create the database
CREATE DATABASE ENERGYDB2;
USE ENERGYDB2;
2. Run the SQL script from SQL_Files/World_Wide_Energy_Consumption_Table_Creation.sql to create all tables and relationships.
2. Import the datasets (CSV files) from the Data_Files folder using MySQL Workbench → Table Data Import Wizard.
3. Execute the query file SQL_Files/World_Wide_Energy_Consumption_Query_Solution.sql to perform analytical queries and generate insights.
4. Refer to the presentation inside Presentation/ to understand final results and visualization.

🧮 `Concepts & Techniques Used`

- SQL Basics: DDL, DML, and DQL commands
- Data Relationships: Primary & Foreign Keys
- Joins: Inner Join, Left Join
- Aggregate Functions: SUM, AVG, COUNT, ROUND
- Subqueries & Grouping for complex data filtering
- Trend Analysis: YEARLY comparisons
- Ratio & Per Capita Calculations for deeper insights

📊 `Key Insights`

🔹 Energy Trends: Fossil fuels contribute the most to global emissions, while renewable adoption is still in progress.
🔹 Economic Insights: Top GDP countries like the USA, China, Japan, and India show higher consumption rates.
🔹 Environmental View: Some nations produce more energy than they consume, while others depend heavily on imports.
🔹 Population Impact: Rapidly growing populations tend to show increased per capita energy demand.
🔹 Global Change: A noticeable dip in 2020 emissions reflects the pandemic’s temporary impact on energy use.

📘 `Learnings`
- Built a complete relational database system from scratch.
- Improved understanding of joins, relationships, and query optimization.
- Learned how to analyze multi-table data to extract useful insights.
- Enhanced SQL skills for real-world analytical scenarios.
- Gained clarity on energy–economy interdependence through data analysis.

📂 `Folder Structure`
Folder	Description
SQL_Files: Scripts for table creation and analytical queries
Data_Files: CSV datasets used in the project
Presentation: PowerPoint with ER diagram, visuals, and key outcomes

🧰 `Tools & Technologies`

1.Database: MySQL
Language: SQL, Python
Libraries: Pandas, Matplotlib, Seaborn
Tool: MySQL Workbench
Visualization: PowerPoint

🚀 `Future Enhancements`
- Combine SQL + Python dashboards for interactive analytics.
- Use Streamlit or Tableau for visual storytelling.
- Add real-time energy data APIs for global monitoring.
