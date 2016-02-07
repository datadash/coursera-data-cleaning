# Getting and Cleaning Data Project Codebook

### Dataset
The data used in this project are collected from the accelerometers and gyroscopes of the Samsung Galaxy S smartphones carried by 30 participants while performing different acitivities.

A full description is available at the site where the data was obtained: 
http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

### Variables

####"subject"
integer between 1-30 referring to the participants

####"activity" 
is one of the following:    
- LAYING    
- SITTING   
- STANDING
- WALKING  
- WALKING_DOWNSTAIRS    
- WALKING_UPSTAIRS

####Measurement variables:

- Each value is the average for each activity and each subject
- Prefixed with 't' or 'f'
	- 't' denotes time domain signals that were captured at a constant rate of 50 Hz
	- 'f' denotes frequency domain signals that have been applied Fast Fourier Transform (FFT) 
- "BodyAcc", "GravityAcc" denotes acceleration signals separated into body and gravity components 

- "BodyGyro", "GravityGyro" denotes gyroscope signals separated into body and gravity components 

- "Jerk" denotes body linear acceleration or angular velocity derived in time 

- "Mag" denotes the magnitude of three-dimensional signals calculated using the Euclidean norm

- "X" "Y" "Z" denote 3-axial signals in the X, Y and Z directions

- "mean" denotes the mean estimated from the original raw signals 

- "std" denotes the standard deviation estimated from the original raw signals 


Complete list of 68 variables:
- subject 
- tBodyAcc-mean-X 
- tBodyAcc-mean-Y 
- tBodyAcc-mean-Z 
- tBodyAcc-std-X 
- tBodyAcc-std-Y 
- tBodyAcc-std-Z 
- tGravityAcc-mean-X 
- tGravityAcc-mean-Y 
- tGravityAcc-mean-Z 
- tGravityAcc-std-X 
- tGravityAcc-std-Y 
- tGravityAcc-std-Z 
- tBodyAccJerk-mean-X 
- tBodyAccJerk-mean-Y 
- tBodyAccJerk-mean-Z 
- tBodyAccJerk-std-X 
- tBodyAccJerk-std-Y 
- tBodyAccJerk-std-Z 
- tBodyGyro-mean-X 
- tBodyGyro-mean-Y 
- tBodyGyro-mean-Z 
- tBodyGyro-std-X 
- tBodyGyro-std-Y 
- tBodyGyro-std-Z 
- tBodyGyroJerk-mean-X 
- tBodyGyroJerk-mean-Y 
- tBodyGyroJerk-mean-Z 
- tBodyGyroJerk-std-X 
- tBodyGyroJerk-std-Y 
- tBodyGyroJerk-std-Z 
- tBodyAccMag-mean 
- tBodyAccMag-std 
- tGravityAccMag-mean 
- tGravityAccMag-std 
- tBodyAccJerkMag-mean 
- tBodyAccJerkMag-std 
- tBodyGyroMag-mean 
- tBodyGyroMag-std 
- tBodyGyroJerkMag-mean 
- tBodyGyroJerkMag-std 
- fBodyAcc-mean-X 
- fBodyAcc-mean-Y 
- fBodyAcc-mean-Z 
- fBodyAcc-std-X 
- fBodyAcc-std-Y 
- fBodyAcc-std-Z 
- fBodyAccJerk-mean-X 
- fBodyAccJerk-mean-Y 
- fBodyAccJerk-mean-Z 
- fBodyAccJerk-std-X 
- fBodyAccJerk-std-Y 
- fBodyAccJerk-std-Z 
- fBodyGyro-mean-X 
- fBodyGyro-mean-Y 
- fBodyGyro-mean-Z 
- fBodyGyro-std-X 
- fBodyGyro-std-Y 
- fBodyGyro-std-Z 
- fBodyAccMag-mean 
- fBodyAccMag-std 
- fBodyBodyAccJerkMag-mean 
- fBodyBodyAccJerkMag-std 
- fBodyBodyGyroMag-mean 
- fBodyBodyGyroMag-std 
- fBodyBodyGyroJerkMag-mean 
- fBodyBodyGyroJerkMag-std 
- activity

### Units

- t/f-BodyAcc-XYZ: standard gravity units (g) 
- t/f-GravityAcc-XYZ: standard gravity units (g) 
- t/f-BodyAccJerk-XYZ: standard gravity units (g) per second
- t/f-BodyGyro-XYZ: radians per second
- t/f-BodyGyroJerk-XYZ: radians per second 
- t/f-BodyAccMag: standard gravity units (g), absolute value
- t/f-GravityAccMag: standard gravity units (g), absolute value
- t/f-BodyAccJerkMag: standard gravity units (g) per second, absolute value
- t/f-BodyGyroMag: radians per second, absolute value 
- t/f-BodyGyroJerkMag:radians per second, absolute value


