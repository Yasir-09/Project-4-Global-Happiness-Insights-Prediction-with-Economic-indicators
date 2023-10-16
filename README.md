# Project-4-Global-Happiness-Insights-Prediction-with-Economic-indicators
![OC_GlobalHappiness_Main-1](https://github.com/Yasir-09/Project-4-Global-Happiness-Insights-Prediction-with-Economic-indicators/assets/131497346/b128adb9-16d8-46ae-b55f-f94a6a47728b)


This project leverages advanced data analytics, machine learning, and visualization techniques to provide actionable insights for a happier world.
The purpose of this project is to increase understanding of global happiness and well-being by leveraging advanced data analytics, machine learning, and visualization techniques, ultimately providing actionable insights for a happier world. 
By analyzing large datasets and applying machine learning algorithms, we can uncover patterns and factors that contribute to happiness scores. These predictive models can help identify key drivers of happiness and inform policy decisions aimed at improving well-being worldwide. 

The interactive Tableau Visualization Dashboard will allow users to explore happiness trends across different countries and time periods, enabling a deeper understanding of the factors that influence happiness levels. 
![image](https://github.com/Yasir-09/Project-4-Global-Happiness-Insights-Prediction-with-Economic-indicators/assets/131497346/315a2600-d0a5-4fc7-9523-bb5c5ff773f9)

**MEMBERS AND ROLES ASSIGNED:**
1.	Yasir Ali Soomro (Data Engineer + Project Manager)
2.	Parshant Mahajan (Data Scientist + Project Manager)
3.	Penyaree Wening (Data Analyst + Project Manager)
4.	Ninad Pandya (Data Analyst + Project Manager)

**Machine Learning Models:** 
1. Model Analysis Based on Happiness Data

A. Comprehensive Data Set (All Countries) - Linear Regression:

R2 Score: 76%
Challenges:

Inclusion of All Countries: The dataset included a wide range of countries, from developed to underdeveloped, introducing significant variability in the data.
Missing Data: Many countries had null or limited data, which made it challenging for the linear regression model to establish meaningful relationships.
Possible Reasons for Lower R2:

High Variability: The mix of countries with diverse development levels resulted in high data variability, making it difficult for a linear model to fit a single line to all the data points.
Data Quality: The presence of missing or limited data reduced the model's ability to make accurate predictions.


2. Developed Countries Only - Linear Regression:

R2 Score: 85%
Benefits:

Data Quality: Focusing solely on developed countries improved data quality by reducing the impact of missing or limited data.
Reduced Variability: Excluding underdeveloped and least developed countries reduced data variability, making it easier for a linear regression model to establish meaningful correlations.
Possible Reasons for Improved R2:

Homogeneity: Developed countries tend to share more similarities in terms of social and economic factors, making it easier for a linear regression model to capture underlying trends.


3. Random Forest Model (Developed Countries):

R2 Score: 90%
Benefits:

Non-Linear Relationships: Random Forest is an ensemble model capable of capturing non-linear relationships and interactions between variables.
Robustness: Random Forest is less sensitive to outliers and data noise, which is beneficial in dealing with the high variability in the comprehensive dataset.
Possible Reasons for Highest R2:

Capturing Complexity: Random Forest's ability to consider complex interactions between features and its resilience to data noise allowed it to model the happiness data more accurately.
Flexibility: The random forest model can handle both linear and non-linear relationships, which is especially useful when dealing with data from various countries with differing characteristics.
Key Takeaways:

Dataset choice, data quality, and variability significantly impact model performance.
Linear regression is a useful starting point, but real-world data often contains non-linear complexities that require more advanced models.
Random Forest, being a flexible and robust ensemble method, is particularly effective in capturing complex patterns and improving predictive accuracy.
In practice, consider data preprocessing, feature engineering, and hyperparameter tuning to further enhance model performance. Additionally, use cross-validation and other evaluation metrics for a comprehensive model assessment.


References and Attributes:

World Happiness Picture atttibutes : wwww.VisualCapital.com 
https://www.visualcapitalist.com/mapped-global-happiness-levels-in-2022/

