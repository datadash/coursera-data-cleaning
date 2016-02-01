# Getting and Cleaning Data Course Project

The run_analysis.R script prepares a tidy data set with the following steps:

* combine feature measurements from the train and test data set
* combine subjects from the train and test data set
* select mean and std measurements
* set the column names of the selected features
* include subjects as the first column 
* include activity label as the last column
* calculate mean of each feature column group by subject and activity
* output result to avg_by_subject_activity.txt
