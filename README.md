## 🌎  SQL Project — **World Wide Energy Comsumption**

### 💡 `Introduction`
- This project explores global energy trends using SQL — covering energy production, consumption, emissions, GDP, and population across multiple countries and years.
It aims to connect the dots between economic growth, energy use, and environmental impact, giving a clear picture of how different nations contribute to global sustainability.

- This project helped me strengthen my understanding of database design, relationships, and analytical querying using MySQL.

### 🎯 `Project Aim`
To analyze how energy and economy are related, studying how countries produce, consume, and emit energy, and how this affects GDP and population growth over time.

### 🗄️ `Database Overview`
Database Name: ENERGYDB2
The database contains six interrelated tables built using foreign key constraints to maintain relational integrity.

### `Table	Description`
**country_3** :	Stores unique country details
**emission_3** :	Records energy emissions by type and year
**population_3** :	Contains yearly population statistics
**production_3** :	Holds data about energy production sources
**gdp_3** :	Stores yearly GDP values of each country
**consum_3**	Tracks energy consumption by country and year
📌 Each of the above tables (except country) is linked to it using a foreign key relationship.

### 🧩 `ER Diagram`
The ER diagram https://github.com/mrugakshiharkare/World-Wide-Energy-Consumption/blob/main/World_Wide_Energy_Consumption_ER_Diagram.png represents the overall database design — showing how each table connects through the country attribute.

### ⚙️ `Steps to Run the Project`
1. Create the database
CREATE DATABASE ENERGYDB2;
2. Run the SQL script from https://github.com/mrugakshiharkare/World-Wide-Energy-Consumption/blob/main/World_Wide_Energy_Consumption_Table_Creation.sql to create all tables and relationships.
2. Import the datasets (CSV files) from the Dataset_Raw_Files.zip folder using MySQL Workbench → Table Data Import Wizard.
3. Execute the query file https://github.com/mrugakshiharkare/World-Wide-Energy-Consumption/blob/main/World_Wide_Energy_Consumption_Query_Solution.sql to perform analytical queries and generate insights.
4. Refer to the presentation inside Presentation/ to understand final results and visualization.

### 🧮 `Concepts & Techniques Used`

- SQL Basics: DDL, DML, and DQL commands
- Data Relationships: Primary & Foreign Keys
- Joins: Inner Join, Left Join
- Aggregate Functions: SUM, AVG, COUNT, ROUND
- Subqueries & Grouping for complex data filtering
- Trend Analysis: YEARLY comparisons
- Ratio & Per Capita Calculations for deeper insights

### 📊 `Key Insights`

🔹 Energy Trends: Fossil fuels contribute the most to global emissions, while renewable adoption is still in progress.  
🔹 Economic Insights: Top GDP countries like the USA, China, Japan, and India show higher consumption rates.  
🔹 Environmental View: Some nations produce more energy than they consume, while others depend heavily on imports.  
🔹 Population Impact: Rapidly growing populations tend to show increased per capita energy demand.  
🔹 Global Change: A noticeable dip in 2020 emissions reflects the pandemic’s temporary impact on energy use.  

### 📘 `Learnings`
- Built a complete relational database system from scratch.
- Improved understanding of joins, relationships, and query optimization.
- Learned how to analyze multi-table data to extract useful insights.
- Enhanced SQL skills for real-world analytical scenarios.
- Gained clarity on energy–economy interdependence through data analysis.

### 📂 `Folder Structure`
- Data_file.zip : Contains all the CSV dataset files used in the project
- World_Wide_Energy_Consumption_Table_Creation.sql : SQL script for creating all tables and relationships
- World_Wide_Energy_Consumption_Query_Solution.sql : SQL script containing all analytical queries
- World_Wide_Energy_Consumption_ER_Diagram.png : ER diagram of the database
- World_Wide_Energy_consumption.pptx : Presentation file with visuals and insights


### 🧰 `Tools & Technologies`
1.Database: MySQL
Language: SQL, Python
Libraries: Pandas, Matplotlib, Seaborn
Tool: MySQL Workbench
Visualization: PowerPoint

### 🚀 `Future Enhancements`

1. Integrate SQL + Python Dashboards:
Build interactive dashboards using Streamlit/Plotly to make insights more dynamic and accessible.

2. Advanced Statistical Analysis:
Apply correlation studies, time-series forecasting, and regression models to understand long-term energy trends.

3. Visualization in BI Tools:
Create richer visual stories using Tableau or Power BI for better stakeholder understanding.

4. Real-Time Monitoring:
Connect APIs (e.g., global energy datasets) to keep the dashboard updated with live statistics.

5. Add More Data Sources:
Combine multiple datasets — environment, climate, economic indicators — to provide deeper cross-domain insights.

6. Performance Optimization:
Explore indexing, stored procedures, and query optimization for faster analytics on large datasets.
