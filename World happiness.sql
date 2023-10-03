CREATE Table World_happiness (
	Country VARCHAR ,
	Year INT ,
	Happiness_Score Float not Null,
	Log_GDP_per_capita Float not Null ,
	Social_support Float not Null ,
	Healthy_life_expectancy_at_birth Float not Null ,
	Freedom_to_make_life_choices Float not Null,
	Generosity Float not Null ,
	Perceptions_of_corruption Float not Null ,
	CPI_percentage Float not Null ,
	Unemployment_Rate Float not Null
	);
SELECT*
FROM World_happiness

-- Year 2022: Top 10 country high happiness score = Finland,Isael,Denmark,Iceland, Swenden, Netherlands,Norway,Luxembourg,Costa Rica,Lithuania
-- Year 2022: Top 10 country low happiness score = Afghanistan,lebanon,Sierra Leone,Congo(Kinshasa),Zimbabwe,Malawi,Bangladesh,Botswana,Comoros,Tanzania

SELECT year,country,Happiness_Score
FROM World_happiness
WHERE year = 2022
ORDER BY Happiness_Score ASC;

SELECT year,country,Happiness_Score
FROM World_happiness
WHERE year = 2022
ORDER BY Happiness_Score DESC;

-- The most Happiness country in the world
SELECT*
FROM World_happiness
WHERE country IN  ('Finland','Isael','Denmark','Iceland', 'Swenden', 'Netherlands','Norway','Luxembourg','Costa Rica','Lithuania');

-- The less Happiness country in the world
SELECT*
FROM World_happiness
WHERE country IN ('Afghanistan','lebanon','Sierra Leone','Congo(Kinshasa)','Zimbabwe','Malawi','Bangladesh','Botswana','Comoros','Tanzania');

-- Compare the most happiness and the least happiness countries
SELECT country,year, Happiness_Score 
FROM World_happiness
WHERE country IN ('Finland','Isael','Denmark','Iceland', 'Swenden', 'Netherlands','Norway','Luxembourg','Costa Rica','Lithuania','Afghanistan',
				  'lebanon','Sierra Leone','Congo(Kinshasa)','Zimbabwe','Malawi','Bangladesh','Botswana','Comoros','Tanzania');

SELECT year, country,Happiness_Score, Freedom_to_make_life_choices
FROM World_happiness

SELECT year, country,Happiness_Score,Log_GDP_per_capita
FROM World_happiness

SELECT year, country,Happiness_Score,Social_support
FROM World_happiness

SELECT year, country,Happiness_Score,Healthy_life_expectancy_at_birth
FROM World_happiness

SELECT year, country,Happiness_Score,Generosity
FROM World_happiness

SELECT year, country,Happiness_Score,Perceptions_of_corruption
FROM World_happiness

SELECT year, country,Happiness_Score,CPI_percentage
FROM World_happiness

SELECT year, country, Happiness_Score, Unemployment_Rate
FROM World_happiness
-- WHERE country IN  ('Finland','Isael','Denmark','Iceland', 'Swenden', 'Netherlands','Norway','Luxembourg','Costa Rica','Lithuania');


SELECT year, country, AVG(Happiness_Score) AS AVG_Happiness_Score,
	AVG(Freedom_to_make_life_choices) AS AVG_Freedom_to_make_life_choices, 
	AVG(Log_GDP_per_capita) AS AVG_Log_GDP_per_capita,
	AVG(Social_support) AS AVG_Social_support,
	AVG(Healthy_life_expectancy_at_birth) AS AVG_Healthy_life_expectancy_at_birth,
	AVG(Generosity) AS AVG_Generosity,
	AVG(Perceptions_of_corruption) AS AVG_Perceptions_of_corruption,
	AVG(CPI_percentage) AS AVG_CPI_percentage,
	AVG(Unemployment_Rate) AS AVG_Unemployment_Rate
FROM World_happiness
GROUP BY year, country
ORDER BY year;
	





