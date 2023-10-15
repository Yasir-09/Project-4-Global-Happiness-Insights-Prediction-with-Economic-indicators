CREATE Table Happiness_development_status (
	Country VARCHAR ,
	Year INT ,
	Happiness_Score Float ,
	Log_GDP_per_capita Float ,
	Social_support Float ,
	Healthy_life_expectancy_at_birth Float,
	Freedom_to_make_life_choices Float ,
	Generosity Float ,
	Perceptions_of_corruption Float ,
	CPI_percentage Float ,
	Unemployment_Rate Float ,
	region VARCHAR ,
	Development_Status VARCHAR
	);
	
SELECT*
FROM Happiness_development_status


-- Top 10 happiest countries in 2022

SELECT DISTINCT year, country,Happiness_Score
FROM Happiness_development_status
WHERE year = 2022
ORDER BY Happiness_Score DESC 
LIMIT 10;	
-- 10 least happy countries in 2022
SELECT DISTINCT year, country,Happiness_Score
FROM Happiness_development_status
WHERE year = 2022
ORDER BY Happiness_Score ASC
LIMIT 10;

-- Average happiness score in each regions
SELECT region, ROUND(AVG(Happiness_Score)::numeric, 3) as Avg_Happiness_Score
FROM Happiness_development_status
GROUP BY region
ORDER BY Avg_Happiness_Score DESC;

-- The happiest country in ech years(2010-2022)
SELECT year, country, Happiness_Score
FROM (
    SELECT wh.year, wh.country, wh.Happiness_Score,
           ROW_NUMBER() OVER (PARTITION BY wh.year ORDER BY wh.Happiness_Score DESC) as row_num
    FROM Happiness_development_status wh
    JOIN (
        SELECT year, MAX(Happiness_Score) as max_score
        FROM Happiness_development_status
        WHERE year IN (2022, 2021, 2020, 2019, 2018, 2017,2016,2015,2014,2013,2012,2011,2010)
        GROUP BY year
    ) max_scores
    ON wh.year = max_scores.year AND wh.Happiness_Score = max_scores.max_score
) ranked_data
WHERE row_num = 1
ORDER BY year;

-- The least happy country in each years (2010-2022)
SELECT year, country, Happiness_Score
FROM (
    SELECT wh.year, wh.country, wh.Happiness_Score,
           ROW_NUMBER() OVER (PARTITION BY wh.year ORDER BY wh.Happiness_Score DESC) as row_num
    FROM Happiness_development_status wh
    JOIN (
        SELECT year, MIN(Happiness_Score) as min_score
        FROM Happiness_development_status
        WHERE year IN (2022, 2021, 2020, 2019, 2018, 2017,2016,2015,2014,2013,2012,2011,2010)
        GROUP BY year
    ) min_scores
    ON wh.year = min_scores.year AND wh.Happiness_Score = min_scores.min_score
) ranked_data
WHERE row_num = 1
ORDER BY year;

-- Relationship between Happiness score Vs. Inflation rate
SELECT region, ROUND(AVG(Happiness_Score)::numeric, 3) as Avg_Happiness_Score,
		ROUND(AVG(CPI_percentage)::numeric, 3)as Avg_CPI_percentage
FROM Happiness_development_status
GROUP BY region
ORDER BY Avg_Happiness_Score DESC;

-- Relationship between Happiness score Vs. Unemplyment rate
SELECT region, ROUND(AVG(Happiness_Score)::numeric, 3) as Avg_Happiness_Score,
		ROUND(AVG(Unemployment_Rate)::numeric, 3)as Avg_Unemployment_Rate
FROM Happiness_development_status
GROUP BY region
ORDER BY Avg_Happiness_Score DESC;

-- Relationship between Happiness score Vs. Social support
SELECT region, ROUND(AVG(Happiness_Score)::numeric, 3) as Avg_Happiness_Score,
		ROUND(AVG(Social_support)::numeric, 3)as Avg_Social_support
FROM Happiness_development_status
GROUP BY region
ORDER BY Avg_Happiness_Score DESC;

-- Relationship between Happiness score Vs.Healthy_life_expectancy_at_birth
SELECT region, ROUND(AVG(Happiness_Score)::numeric, 3) as Avg_Happiness_Score,
		ROUND(AVG(Healthy_life_expectancy_at_birth)::numeric, 3)as Avg_Healthy_life_expectancy_at_birth
FROM Happiness_development_status
GROUP BY region
ORDER BY Avg_Happiness_Score DESC;

-- Relationship between Happiness score Vs. GDP
SELECT region, ROUND(AVG(Happiness_Score)::numeric, 3) as Avg_Happiness_Score,
		ROUND(AVG(Log_GDP_per_capita)::numeric, 3)as Avg_Log_GDP_per_capita
FROM Happiness_development_status
GROUP BY region
ORDER BY Avg_Happiness_Score DESC;

-- Relationship between Happiness score Vs. Generosity
SELECT region, ROUND(AVG(Happiness_Score)::numeric, 3) as Avg_Happiness_Score,
		ROUND(AVG(Generosity)::numeric, 3)as Avg_Generosity
FROM Happiness_development_status
GROUP BY region
ORDER BY Avg_Happiness_Score DESC;

-- Relationship between Happiness score Vs. Perceptions_of_corruption
SELECT region, ROUND(AVG(Happiness_Score)::numeric, 3) as Avg_Happiness_Score,
		ROUND(AVG(Perceptions_of_corruption)::numeric, 3)as Avg_Perceptions_of_corruption
FROM Happiness_development_status
GROUP BY region
ORDER BY Avg_Happiness_Score DESC;

-- Relationship between Happiness score Vs. Freedom_to_make_life_choices
SELECT region, ROUND(AVG(Happiness_Score)::numeric, 3) as Avg_Happiness_Score,
		ROUND(AVG(Freedom_to_make_life_choices)::numeric, 3)as Avg_Freedom_to_make_life_choices
FROM Happiness_development_status
GROUP BY region
ORDER BY Avg_Happiness_Score DESC;


-- Canada
SELECT *
FROM Happiness_development_status
WHERE country = 'Canada'
ORDER BY year;


