CREATE VIEW Top_Selling_Consoles AS
SELECT Platform AS Console, ROUND(SUM(Global_Sales), 4) AS Total_Sales
FROM video_game_sales
GROUP BY Console
ORDER BY Total_Sales DESC
LIMIT 7;

CREATE VIEW Yearly_Sales_by_Genre AS
SELECT Genre, Year_of_Release AS Year, SUM(Global_Sales) AS Total_Sales
FROM video_game_sales
WHERE Year_of_Release <= 2016
GROUP BY Year, Genre
ORDER BY Year;

CREATE VIEW Top_Selling_Games AS
SELECT Name AS Game, Global_Sales AS Total_Sales
FROM video_game_sales
ORDER BY Total_Sales DESC
LIMIT 10;

CREATE VIEW sales_trend_over_time AS
SELECT Year_of_Release AS Year, SUM(Global_Sales) AS Total_Sales
FROM video_game_sales
WHERE Year_of_Release <= 2016
GROUP BY Year
ORDER BY Year;

CREATE VIEW Avg_Rating_by_Genre AS
SELECT Genre, AVG(Critic_Score)
FROM video_game_sales
GROUP BY Genre 
ORDER BY Genre;

CREATE VIEW Japan_Sales_by_Console AS
SELECT Platform AS Console, ROUND(SUM(JP_Sales), 4) AS Total_Sales
FROM video_game_sales
GROUP BY Console
ORDER BY Total_Sales DESC;

CREATE VIEW Japan_Sales_by_Game AS
SELECT Platform AS Console, Genre, Name AS Game, JP_Sales AS Total_Sales
FROM video_game_sales
ORDER BY Total_Sales DESC

CREATE VIEW NA_Sales_by_Game AS
SELECT Platform AS Console, Genre, Name AS Game, NA_Sales AS Total_Sales
FROM video_game_sales
ORDER BY Total_Sales DESC

CREATE VIEW Europe_Sales_by_Game AS
SELECT Platform AS Console, Genre, Name AS Game, EU_Sales AS Total_Sales
FROM video_game_sales
ORDER BY Total_Sales DESC

CREATE VIEW Detailed_Sales_by_Region AS
SELECT Platform AS Console, Genre, Name AS Game, NA_Sales, EU_Sales, JP_Sales, Global_Sales, Other_Sales
FROM video_game_sales
ORDER BY Global_Sales DESC;


CREATE VIEW Percent_of_Genre_Sales_by_Territory AS
SELECT Genre,
    ROUND(SUM(NA_Sales) / SUM(Global_Sales), 3) AS North_America_Percent_Sales,
    ROUND(SUM(EU_Sales) / SUM(Global_Sales), 3) AS Europe_Percent_Sales,
    ROUND(SUM(JP_Sales) / SUM(Global_Sales), 3) AS Japan_Percent_Sales,
    ROUND(SUM(Global_Sales), 3) AS Total_Sales
FROM video_game_sales
GROUP BY Genre
ORDER BY Total_Sales DESC;

CREATE VIEW Sales_by_Critic_Score AS
SELECT Critic_Score AS Score,
    AVG(Global_Sales) AS Average_Sales
FROM video_game_sales
GROUP BY Critic_Score
ORDER BY Critic_Score DESC;

CREATE VIEW Sales_by_Game_Genre AS
SELECT Genre,
    SUM(Global_Sales) AS Total_Sales
FROM video_game_sales
GROUP BY Genre;

CREATE VIEW Sales_by_Rating AS
SELECT Rating AS Game_Maturity_Rating,
    SUM(Global_Sales) AS Total_Sales
FROM video_game_sales
GROUP BY Rating
ORDER BY Total_Sales DESC;

CREATE VIEW Sales_by_Region AS
SELECT SUM(NA_Sales) AS North_America,
    SUM(EU_Sales) AS Europe,
    SUM(JP_Sales) AS Japan,
    SUM(Other_Sales) AS Other
FROM video_game_sales;

CREATE VIEW Sales_Trend_Over_Time AS
SELECT Year_of_Release AS Year,
    SUM(Global_Sales) AS Total_Sales
FROM video_game_sales
WHERE Year_of_Release <= 2016
GROUP BY Year
ORDER BY Year;

CREATE VIEW Top_10_Selling_Developers AS
SELECT Developer,
    AVG(Global_Sales) AS Average_Sales
FROM video_game_sales
GROUP BY Developer
ORDER BY Average_Sales DESC
LIMIT 10;

CREATE VIEW Top_Selling_Consoles AS
SELECT Platform AS Console,
    ROUND(SUM(Global_Sales), 4) AS Total_Sales
FROM video_game_sales
GROUP BY Console
ORDER BY Total_Sales DESC
LIMIT 7;

CREATE VIEW Top_Selling_Games AS
SELECT Name AS Game,
Global_Sales AS Total_Sales
FROM video_game_sales
ORDER BY Total_Sales DESC
LIMIT 10;

CREATE VIEW Yearly_Sales_by_Genre AS
SELECT Genre,
    Year_of_Release AS Year,
    SUM(Global_Sales) AS Total_Sales
FROM video_game_sales
WHERE Year_of_Release <= 2016
GROUP BY Year, Genre
ORDER BY Year;


