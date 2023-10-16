# Project-4-Global-Happiness-Insights-Prediction-with-Economic-indicators
![Global Happiness Insights](https://github.com/Yasir-09/Project-4-Global-Happiness-Insights-Prediction-with-Economic-indicators/assets/131497346/6fd445ac-9fe0-416f-9c4c-62ef06060fa8)


This project leverages advanced data analytics, machine learning, and visualization techniques to provide actionable insights for a happier world.
The purpose of this project is to increase understanding of global happiness and well-being by leveraging advanced data analytics, machine learning, and visualization techniques, ultimately providing actionable insights for a happier world. 
By analyzing large datasets and applying machine learning algorithms, we can uncover patterns and factors that contribute to happiness scores. These predictive models can help identify key drivers of happiness and inform policy decisions aimed at improving well-being worldwide. 

The interactive Tableau Visualization Dashboard will allow users to explore happiness trends across different countries and time periods, enabling a deeper understanding of the factors that influence happiness levels. 

**Problem Statement**
Understanding factors contributing to human happiness is crucial for policymakers, researchers, and society. The World Happiness Report dataset provides valuable insights into global happiness trends, but it also presents challenges that need to be addressed. Addressing these challenges is essential for a more comprehensive understanding of happiness. Moreover, how economic factors effect the happiness score.

## OUR TEAM:
**MEMBERS AND ROLES ASSIGNED:**
1.	Yasir Ali Soomro (Data Engineer + Project Manager)
2.	Parshant Mahajan (Data Scientist + Project Manager)
3.	Penyaree Wening (Data Analyst + Project Manager)
4.	Ninad Pandya (Data Analyst + Project Manager)

## DATA CLEANING:

Data Cleaning: The World Happiness Report dataset is vast and contained missing values, outliers, or inconsistencies. Cleaning and preprocessing this data was a critical first step to ensuring its quality and reliability for analysis. Data cleaning was performed on Python using Pandas and Numpy dictionaries. Dataset of Unemployment and Inflation (CPI) rate were cleanned, filtered for desired years to match the happiness dataset. New columns of development status and Regions were added by categorizing the countries and dataset were merged and null values were removed.

## SQL ANALYSIS:
SQL analysis discovered my facts from the cleaned and curated dataset for this project: Our main findings were to answers the following questions:

* Which region has the happier countries and least happy countries?>
* Which are ten happier and ten least happier countries in year 2022?>
* What is the average inflation rate as per regions and development status from the 12 year dataset?
* What is the average unemployment rate as per regions and development status from the 12 year dataset?

## MACHINE LEARNING:
**MACHINE LEARNING MODELS:** 
1. *Model Analysis Based on Happiness Data. Comprehensive Data Set (All Countries) - Linear Regression:*

R2 Score: 76%
Challenges:

Inclusion of All Countries: The dataset included a wide range of countries, from developed to underdeveloped, introducing significant variability in the data.
Missing Data: Many countries had null or limited data, which made it challenging for the linear regression model to establish meaningful relationships.
Possible Reasons for Lower R2:

High Variability: The mix of countries with diverse development levels resulted in high data variability, making it difficult for a linear model to fit a single line to all the data points.
Data Quality: The presence of missing or limited data reduced the model's ability to make accurate predictions.


2. *Developed Countries Only - Linear Regression:*

R2 Score: 85%

Benefits:
Data Quality: Focusing solely on developed countries improved data quality by reducing the impact of missing or limited data.
Reduced Variability: Excluding underdeveloped and least developed countries reduced data variability, making it easier for a linear regression model to establish meaningful correlations.
Possible Reasons for Improved R2:

Homogeneity: Developed countries tend to share more similarities in terms of social and economic factors, making it easier for a linear regression model to capture underlying trends.


3. *Random Forest Model (Developed Countries):*

R2 Score: 90%

**Benefits:**
Non-Linear Relationships: Random Forest is an ensemble model capable of capturing non-linear relationships and interactions between variables.
Robustness: Random Forest is less sensitive to outliers and data noise, which is beneficial in dealing with the high variability in the comprehensive dataset.

**Possible Reasons for Highest R2:**

Capturing Complexity: Random Forest's ability to consider complex interactions between features and its resilience to data noise allowed it to model the happiness data more accurately.
Flexibility: The random forest model can handle both linear and non-linear relationships, which is especially useful when dealing with data from various countries with differing characteristics.

**Key Takeaways:**

Dataset choice, data quality, and variability significantly impact model performance.
Linear regression is a useful starting point, but real-world data often contains non-linear complexities that require more advanced models.
Random Forest, being a flexible and robust ensemble method, is particularly effective in capturing complex patterns and improving predictive accuracy.
In practice, consider data preprocessing, feature engineering, and hyperparameter tuning to further enhance model performance. Additionally, use cross-validation and other evaluation metrics for a comprehensive model assessment.

## TABLEAU VISUALIZATIONS AND DASHBOARD:


## REFERENCES:

**Sources of data:** 
Happiness Dataset: https://worldhappiness.report/data/

Unemployment Dataset: https://data.worldbank.org/indicator/SL.UEM.TOTL.NE.ZS

CPI dataset: https://tinyurl.com/248hffft


