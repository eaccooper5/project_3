# project_3

# Project Name:
Economic Trends in Emerging Market and Developing Economies

## Table of Contents
  - [Project Name](#Economic Trends in Emerging Market and Developing Economies)
  - [Table of Contents](#table-of-contents)
  - [Introduction](#abstract)
  - [Prerequisites](#prerequisites)
  - [Getting Started](#getting-started)
  - [Usage](#usage)
  - [Contributing](#contributing)
    
## Abstract
A comparative analysis of macroeconomic indicators including population, gross domestic product per capita, inflation, and total investment from 2019 through 2022. Using data sourced from the 2023 October World Economic Outlook (WEO) by the International Monetary Fund (IMF), this project seeks to identify the way various macroeconomic indicators affect the gross domestic product of countries in emerging and developing economies from different geographical regions.

Through this exploratory analysis, we seek to determine what macroeconomic factors influence the greatest change in gross domestic product in each region. We aim to explore what regions express similar macroeconomic trends and whether those trends show similar outcomes in neighboring country subgroups. This analysis is limited by each country’s self-reported data and while we chose indicators whose data were consistently submitted, not all countries opted to report their data for some indicators. We also acknowledge that additional external factors not reflected in our dataset may also influence a region’s economic outlook.


## Setup and Configuration
The script uses the json, pandas, dash, geopandas, plotly, folium, and shapely.geometry libraries. The following dictionaries and lists are defined for configuration:

## Prerequisites
​
- **SQL:** You will need to import and clean your data in PostgreSQL to convert your data to csv. 
- **pyMongo:** You will need pyMongo for the ETL to clean and process your data.
- **Python:** Your project requires Python 3.7 or later. You can download it from [python.org](https://www.python.org/downloads/).
- **Javascript:** Your project requires Javascript and Javascript libraries such as Plotly and Leaflet to produce your visualizations once your data has been converted to DataFrame in Pandas and exported as .csv or geoJSON.
- **Jupyter Notebook:** For running and interacting with Jupyter Notebooks. You can install Jupyter using:
  #### ```bash
    pip install notebook
    pip install pandas
    pip install dash
    pip install folium
​
## Getting Started
git clone https://github.com/eaccooper5/project_3.git 
cd yourproject 


## Usage
### 1. Process and organize your data imports from Excel using SQL to convert to .csv
  
​
### 2. Once your data has been converted to .csv create a collection in pyMongo and use pyMongo and Pandas to process and clean your data.
Once you have generated a cleaned file, create a series of dataframes for each country subgrouping, then filter each subgrouping by desired indicator. From there, create geoJSONs for use in your visualizations.
​
### 3. Explore Data and Visualizations
The project includes data analysis of the WEO data by country subgroups and some interactive visualizations using Leaflet and Plotly to allow users to explore data on the map with interactive popups for our chosen indicators. All of the data for these visualizations was filtered using pyMongo and Pandas to create dataframes and geoJSONs.
​
​
### Examples
Here are a few examples of common tasks:
​
### Custom Visualizations:
Experiment with creating custom visualizations using Javascript, Leaflet and Plotly to convey specific insights.
​
### Comparative Analysis:
Conduct a comparative analysis between advanced and emerging economies, focusing on specific economic indicators.
COUNTRY_DATA: A mapping of country codes to country names.
ADV_COUNTRIES: A list of advanced countries.
EMER_COUNTRIES: A list of emerging countries.
INDICATORS: A dictionary mapping economic indicators to their corresponding IMF codes.
TIME_SPAN: A list of years for which data is collected.
BASE_URL: The base URL for the IMF API.

### Data Retrieval and Processing
We downloaded our data from the WEO as an Excel file and combined each subgroup into one dataset. We then converted that dataset to .csv. We had to find a separate resource file for each country's coordinates and used pyMongo and Pandas to merge that dataset with our primary list to compile geoJSONs to use with our visualizations. We prepared dataframes all indicators in each region and then used those dataframes to create our geoJSONs and visualizations.


### Data Analysis
The script creates separate DataFrames for emerging economies broken up in to subgroups: Asia, South America and the Carribean, the Middle East, and Sub-Saharan Africa. Each subgroup was then processed into DataFrames for several economic indicators: population, inflation, gross domestic product, and total investments.

### Data Visualization
Our script includes examples of data visualization using Plotly, dash, and Leaflet libraries in Javascript. 


## Contributing 
Thank you for considering contributing to this project! Contributions are welcomed and encouraged.

## Written Analysis

### Population Dynamics
The population dynamics in emerging regions from 2019 to 2022 have been of particular interest. In Emerging Asia countries, the population has shown a steady growth trajectory, influenced by factors such as high birth rates and improving healthcare systems. In contrast, Emerging Latin America has experienced more nuanced trends, with some countries witnessing population growth while others are grappling with stagnation or slight declines. Emerging Africa continues to have the highest population growth rate, driven by a combination of high fertility rates and improved life expectancy. Meanwhile, Emerging Middle East countries are undergoing rapid demographic shifts, marked by increasing urbanization and changing family structures, impacting their population dynamics. Understanding these trends is crucial for policymakers and researchers to address various social, economic, and environmental challenges these regions face.

### Inflation Rates: Middle East
The inflation rates vary significantly among the Middle East countries, ranging from negative values to triple digit percentages. There is a wide range of inflationary pressures across the region, reflecting diverse economic conditions and policy responses.

### GDP
The GDP data used was normalized to USD in order to analyze each country's output. As might be expected, countries with larger populations tend to have the highest annual GDP’s i.e. Brazil and Mexico. As it relates to investment, the most consistently performing countries in terms of GDP are those in which investment ranges between 15%-20% of national GDP.

### Investment and Inflation: Africa
Inflation and investments followed similar trends: rates for both went up in 2020, dropped again and raised again in 2022. Changes in growth, government policies, and interest in natural resources (such as oil) brought fluctuations in both inflation and investments with government policy and global trade probably having a larger impact on inflation while interest in natural resources probably influenced investments more.


## Presentation
Presentation containing executive summary, overview of data, aproach to goals, conclusions, and next steps

### Notes and Challenges
The NaN values in the output indicate missing data. Some countries did not report data for their indicators which was a challenge. Our group also had challenges incorperating geoJSON into Leaflet, the overall size of the dataset and number of indicators involved which was too large for a focused project. We also faced challenges with file organization and naming conventions while producing and sharing our code. 