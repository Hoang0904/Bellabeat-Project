--Create Dataset for visualization--
SELECT *
FROM Bellabeat_Project.dbo.dailyActivity AS daily_activity
LEFT JOIN Bellabeat_Project.dbo.sleepDay AS sleep_day
ON daily_activity.Id = sleep_day.Id
LEFT JOIN Bellabeat_Project.dbo.weightLogInfo AS weight_info
ON sleep_day.Id = weight_info.Id