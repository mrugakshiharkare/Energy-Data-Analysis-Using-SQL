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
The following insights were derived from the analytical SQL queries and exploratory data analysis performed in this project. These insights reflect the patterns observed in the provided dataset, but additional or deeper insights may emerge through further analysis, depending on the questions explored.

- Energy & Emission Patterns: Fossil fuels remain the dominant contributor to global emissions, while renewable energy adoption is gradually increasing in several countries.

- Economic Relationships: Countries with higher GDP typically show higher energy consumption, but the efficiency of energy use varies widely across nations.

- Production vs Consumption: Some countries generate more energy than they consume (net exporters), while others depend heavily on imports, revealing economic and geopolitical dependencies.

- Population Impact: Growing populations tend to have increasing per-capita energy demand, influencing both consumption patterns and long-term sustainability challenges.

- Yearly Trends: Noticeable shifts, especially the dip in emissions around 2020, highlight how global events (such as the pandemic) can affect energy usage.

- **Further Insights Possible:**
Anyone exploring the dataset can extract additional insights — such as renewable growth rates, country-wise efficiency scores, per-capita emission comparisons, or multi-year trend forecasts — depending on specific analytical objectives.

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
