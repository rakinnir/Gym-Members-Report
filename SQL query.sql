-- Create a View for Age Group Classification
CREATE VIEW fitness_data_with_age_group AS
SELECT 
    *,
    CASE 
        WHEN age <= 30 THEN 'Young'
        WHEN age BETWEEN 31 AND 45 THEN 'Mid-age'
        ELSE 'Old' 
    END AS age_group
FROM fitness_data;

-- Analysis Queries

-- Average Age by Gender
SELECT
    gender AS "Gender",
    ROUND(AVG(age), 2) AS "Avg. Age"
FROM fitness_data
GROUP BY gender;

-- Age Group Distribution
SELECT
    age_group AS "Age Group",
    COUNT(age) AS "Total"
FROM fitness_data_with_age_group
GROUP BY age_group;

-- Male and Female Ratio
SELECT
    gender AS "Gender",
    COUNT(gender) AS "Total"
FROM fitness_data
GROUP BY gender;

-- Average Weight and Height by Gender
SELECT
    gender AS "Gender",
    ROUND(AVG(weight_kg), 2) AS "Avg. Weight",
    ROUND(AVG(height_m), 2) AS "Avg. Height"
FROM fitness_data
GROUP BY gender;

-- Average BPM by Gender
SELECT
    gender AS "Gender",
    ROUND(AVG(avg_bpm), 2) AS "Avg. Avg. BPM"
FROM fitness_data
GROUP BY gender;

-- Average Session Duration by Gender
SELECT
    Gender AS "Gender",
    ROUND(AVG(session_duration_hours), 2) AS "Avg. Session Hour"
FROM fitness_data
GROUP BY gender;

-- Average Session Duration by experience
SELECT
	experience_Level AS "Experience Level",
    ROUND(AVG(session_duration_hours), 2) AS "Avg. Session Hour"
FROM fitness_data
GROUP BY experience_level;


-- Average Calories Burned per Hour

-- Overall
SELECT
    ROUND(AVG(calories_burned / session_duration_hours), 2) AS "Avg Calories Burned(1Hour)"
FROM fitness_data;

-- By Gender
SELECT
    gender AS "Gender",
    ROUND(AVG(calories_burned / session_duration_hours), 2) AS "Avg Calories Burned(1Hour)"
FROM fitness_data
GROUP BY gender;

-- By Age Group
SELECT
    age_group AS "Age Group",
    ROUND(AVG(calories_burned / session_duration_hours), 2) AS "Avg Calories Burned(1Hour)"
FROM fitness_data_with_age_group
GROUP BY age_group;

-- By Experience Level
SELECT
    experience_level AS "Experience Level",
    ROUND(AVG(calories_burned / session_duration_hours), 2) AS "Avg Calories Burned(1Hour)"
FROM fitness_data
GROUP BY experience_level;

-- By Workout Type
SELECT
    workout_type AS "Workout Type",
    ROUND(AVG(calories_burned / session_duration_hours), 2) AS "Avg Calories Burned(1Hour)"
FROM fitness_data
GROUP BY workout_type;

-- Experience Level Distribution
SELECT 
    experience_level AS "Experience Level",
    COUNT(experience_level) AS "Total"
FROM fitness_data
GROUP BY experience_level;

-- Workout Type Distribution
SELECT
    workout_type AS "Workout Type",
    COUNT(workout_type) AS "Total"
FROM fitness_data
GROUP BY workout_type;

-- Average Fat Percentage

-- Overall
SELECT
    ROUND(AVG(fat_percentage), 2) AS "Avg. Fat Percentage"
FROM fitness_data;

-- By Age Group
SELECT
    age_group AS "Age Group",
    ROUND(AVG(fat_percentage), 2) AS "Avg. Fat Percentage"
FROM fitness_data_with_age_group
GROUP BY age_group;

-- By Gender
SELECT
    gender AS "Gender",
    ROUND(AVG(fat_percentage), 2) AS "Avg. Fat Percentage"
FROM fitness_data
GROUP BY gender;

-- By Experience Level
SELECT
    experience_level AS "Experience Level",
    ROUND(AVG(fat_percentage), 2) AS "Avg. Fat Percentage"
FROM fitness_data
GROUP BY experience_level;

-- Average Water Intake (Liters)

-- Overall
SELECT
    ROUND(AVG(water_intake_liters), 2) AS "Water Intake"
FROM fitness_data;

-- By Gender
SELECT
    gender AS "Gender",
    ROUND(AVG(water_intake_liters), 2) AS "Water Intake"
FROM fitness_data
GROUP BY gender;

-- By Experience Level
SELECT
    experience_level AS "Experience Level",
    ROUND(AVG(water_intake_liters), 2) AS "Water Intake"
FROM fitness_data
GROUP BY experience_level;

-- By Age Group
SELECT
    age_group AS "Age Group",
    ROUND(AVG(water_intake_liters), 2) AS "Water Intake"
FROM fitness_data_with_age_group
GROUP BY age_group;

-- Average BMI

-- Overall
SELECT
    ROUND(AVG(bmi), 2) AS "BMI"
FROM fitness_data;

-- By Gender
SELECT
    gender AS "Gender",
    ROUND(AVG(bmi), 2) AS "BMI"
FROM fitness_data
GROUP BY gender;

-- By Experience Level
SELECT
    experience_level AS "Experience Level",
    ROUND(AVG(bmi), 2) AS "BMI"
FROM fitness_data
GROUP BY experience_level;

-- By Age Group
SELECT
    age_group AS "Age Group",
    ROUND(AVG(bmi), 2) AS "BMI"
FROM fitness_data_with_age_group
GROUP BY age_group;
