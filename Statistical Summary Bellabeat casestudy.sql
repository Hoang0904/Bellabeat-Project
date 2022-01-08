--Statistical Summary--
--Finding the daily average steps, walk/run distance, Calories of users--
SELECT AVG(TotalSteps) AS avg_steps
, AVG(TotalDistance) AS avg_distance
, AVG(Calories) AS avg_calories_burnt
FROM Bellabeat_Project.dbo.dailyActivity

--Findng the daily average sedentary time and active time of users--
SELECT AVG(SedentaryMinutes)/60 AS avg_sedentary_time
, AVG(VeryActiveMinutes + FairlyActiveMinutes + LightlyActiveMinutes)/60 AS avg_active_time
FROM Bellabeat_Project.dbo.dailyActivity

--Finding the daily sleep hours, hours in bed and sleep time per day of users--
SELECT AVG(TotalMinutesAsleep)/60 AS avg_sleep_hours
, AVG(TotalSleepRecords) AS avg_sleep_time_per_day
, AVG(TotalTimeInBed)/60 AS avg_hours_in_bed
FROM Bellabeat_Project.dbo.sleepDay