Regression <-function(){
## This function generates machine learning regressions of student GPA and student Happiness using neural network technology
## No input is required for the function to run, and it trains on all past semester data available in the database 
library(nnet)
library(RMySQL)
# Creates connection to database and ensures connection ends when session ends
con <- dbConnect(MySQL(),user = "g1117491", password = "Group10", dbname = "g1117491", host = "mydb.ics.purdue.edu")
on.exit(dbDisconnect(con))
# Pulls survey data for regression
surveyquery <- dbSendQuery(con, "SELECT Survey.Happiness, Survey.GPA, Survey.Email, Survey.Semester, sum(Courses.Est_time) + sum(Assignments.Est_comp_time) AS Semester_Difficulty, Priorities_out.Social_time, Priorities_out.Study_time, Priorities_out.Free_time, Priorities_out.Exercise_time, Priorities_out.Other_time
FROM Survey JOIN Class_List ON Survey.Semester = Class_List.Semester AND Survey.Email = Class_List.Email 
JOIN Courses ON Class_List.Course_num = Courses.Course_num AND Class_List.Semester = Courses.Semester 
JOIN Assignments ON Assignments.Course_num = Courses.Course_num 
JOIN Priorities_out ON Priorities_out.Email = Survey.Email AND Priorities_out.Semester = Survey.Semester
GROUP BY Survey.Email, Survey.Semester
ORDER BY Survey.Email, Survey.Semester")
data <- fetch(surveyquery)

# #These 20 lines pull the rest of the relevant data from the database and structure it so it will align with the data from the first query
# socialquery <- dbSendQuery(con, "SELECT Email, Semester, sum(priority_l_out) AS Social_time FROM Priorities WHERE Priority_type = 'social time' GROUP BY Email, Semester ORDER BY Email, Semester")
# socialdata <- fetch(socialquery)
# totsocdata <- merge(data, socialdata)
# 
# studyquery <- dbSendQuery(con, "SELECT Email, Semester, sum(priority_l_out) AS Study_time FROM Priorities WHERE Priority_type = 'study time' GROUP BY Email, Semester ORDER BY Email, Semester")
# studydata <- fetch(studyquery)
# totstudata <- merge(totsocdata, studydata)
# 
# freequery <- dbSendQuery(con, "SELECT Email, Semester, sum(priority_l_out) AS Free_time FROM Priorities WHERE Priority_type = 'free time' GROUP BY Email, Semester ORDER BY Email, Semester")
# freedata <- fetch(freequery)
# totfredata <- merge(totstudata, freedata)
# 
# exercisequery <- dbSendQuery(con, "SELECT Email, Semester, sum(priority_l_out) AS Exercise_time FROM Priorities WHERE Priority_type = 'exercise time' GROUP BY Email, Semester ORDER BY Email, Semester")
# exercisedata <- fetch(exercisequery)
# totexedata <- merge(totfredata, exercisedata)
# 
# otherquery <- dbSendQuery(con, "SELECT Email, Semester, sum(priority_l_out) AS Other_time FROM Priorities WHERE Priority_type = 'other' GROUP BY Email, Semester ORDER BY Email, Semester")
# otherdata <- fetch(otherquery)
# 
# newdata <- merge(totexedata, otherdata)

# At this point, all data has been pulled from the database and combined into one large data frame for processing

#These two lines create the neural networks for regressing GPA and Happiness values and perform those regressions
GPAregress <- nnet(data$GPA ~ *, data=data, size = 2)
HappinessRegress <- nnet(data$Happiness ~ *, data=data, size = 2)

dbDisconnect(con)
}