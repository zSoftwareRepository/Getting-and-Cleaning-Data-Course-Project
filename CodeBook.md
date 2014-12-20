##Data Dictionary

###Coursera:
###Getting and Cleaning Data Course Project
###Jorge Palma

##Feature Selection 

The following paragraphs were taken from the original data set dictionary:
 
The features selected for this database come from the accelerometer and gyroscope 3-axial 
raw signals tAcc-XYZ and tGyro-XYZ. These time domain signals (prefix 't' to denote time) 
were captured at a constant rate of 50 Hz. Then they were filtered using a median filter 
and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. 
Similarly, the acceleration signal was then separated into body and gravity acceleration 
signals (tBodyAcc-XYZ and tGravityAcc-XYZ) using another low pass Butterworth filter with 
a corner frequency of 0.3 Hz. 

Subsequently, the body linear acceleration and angular velocity were derived in time to 
obtain Jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). Also the magnitude of these 
three-dimensional signals were calculated using the Euclidean norm (tBodyAccMag, 
tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag). 

Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing 
fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, 
fBodyGyroJerkMag. (Note the 'f' to indicate frequency domain signals). 

These signals were used to estimate variables of the feature vector for each pattern:  
'-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.

In addition features coming from the original data set the tidy data set has two variables 
that group the data set.  

Each of the variables was grouped by the subject ("subject") and the activity label ("ActLabeled")
and the mean was calculated by group of variables.

* "subject"
	integer number between 1 and 30
	
* "ActLabeled"
	Text describing the activity:
	
	WALKING
	WALKING_UPSTAIRS
	WALKING_DOWNSTAIRS
	SITTING
	STANDING
	LAYING

* "tBodyAcc-mean()-X"
	mean of the original variable, normalized real number. Range: between -1 and 1
	
* "tBodyAcc-mean()-Y"
	mean of the original variable, normalized real number. Range: between -1 and 1

* "tBodyAcc-mean()-Z"
	mean of the original variable, normalized real number. Range: between -1 and 1
	
* "tBodyAcc-std()-X"
	mean of the original variable, normalized real number. Range: between -1 and 1
	
* "tBodyAcc-std()-Y"
	mean of the original variable, normalized real number. Range: between -1 and 1
	
* "tBodyAcc-std()-Z"
	mean of the original variable, normalized real number. Range: between -1 and 1
	
* "tGravityAcc-mean()-X"
	mean of the original variable, normalized real number. Range: between -1 and 1
	
* "tGravityAcc-mean()-Y"
	mean of the original variable, normalized real number. Range: between -1 and 1
	
* "tGravityAcc-mean()-Z"
	mean of the original variable, normalized real number. Range: between -1 and 1
	
* "tGravityAcc-std()-X"
	mean of the original variable, normalized real number. Range: between -1 and 1
	
* "tGravityAcc-std()-Y"
	mean of the original variable, normalized real number. Range: between -1 and 1
	
* "tGravityAcc-std()-Z"
	mean of the original variable, normalized real number. Range: between -1 and 1
	
* "tBodyAccJerk-mean()-X"
	mean of the original variable, normalized real number. Range: between -1 and 1
	
* "tBodyAccJerk-mean()-Y"
	mean of the original variable, normalized real number. Range: between -1 and 1
	
* "tBodyAccJerk-mean()-Z"
	mean of the original variable, normalized real number. Range: between -1 and 1
	
* "tBodyAccJerk-std()-X"
	mean of the original variable, normalized real number. Range: between -1 and 1
	
* "tBodyAccJerk-std()-Y"
	mean of the original variable, normalized real number. Range: between -1 and 1
	
* "tBodyAccJerk-std()-Z"
	mean of the original variable, normalized real number. Range: between -1 and 1
	
* "tBodyGyro-mean()-X"
	mean of the original variable, normalized real number. Range: between -1 and 1
	
* "tBodyGyro-mean()-Y"
	mean of the original variable, normalized real number. Range: between -1 and 1
	
* "tBodyGyro-mean()-Z"
	mean of the original variable, normalized real number. Range: between -1 and 1
	
* "tBodyGyro-std()-X"
	mean of the original variable, normalized real number. Range: between -1 and 1
	
* "tBodyGyro-std()-Y"
	mean of the original variable, normalized real number. Range: between -1 and 1
	
* "tBodyGyro-std()-Z"
	mean of the original variable, normalized real number. Range: between -1 and 1
	
* "tBodyGyroJerk-mean()-X"
	mean of the original variable, normalized real number. Range: between -1 and 1
	
* "tBodyGyroJerk-mean()-Y"
	mean of the original variable, normalized real number. Range: between -1 and 1
	
* "tBodyGyroJerk-mean()-Z"
	mean of the original variable, normalized real number. Range: between -1 and 1
	
* "tBodyGyroJerk-std()-X"
	mean of the original variable, normalized real number. Range: between -1 and 1
	
* "tBodyGyroJerk-std()-Y"
	mean of the original variable, normalized real number. Range: between -1 and 1
	
* "tBodyGyroJerk-std()-Z"
	mean of the original variable, normalized real number. Range: between -1 and 1
	
* "tBodyAccMag-mean()"
	mean of the original variable, normalized real number. Range: between -1 and 1
	
* "tBodyAccMag-std()"
	mean of the original variable, normalized real number. Range: between -1 and 1
	
* "tGravityAccMag-mean()"
	mean of the original variable, normalized real number. Range: between -1 and 1
	
* "tGravityAccMag-std()"
	mean of the original variable, normalized real number. Range: between -1 and 1
	
* "tBodyAccJerkMag-mean()"
	mean of the original variable, normalized real number. Range: between -1 and 1
	
* "tBodyAccJerkMag-std()"
	mean of the original variable, normalized real number. Range: between -1 and 1
	
* "tBodyGyroMag-mean()"
	mean of the original variable, normalized real number. Range: between -1 and 1
	
* "tBodyGyroMag-std()"
	mean of the original variable, normalized real number. Range: between -1 and 1
	
* "tBodyGyroJerkMag-mean()"
	mean of the original variable, normalized real number. Range: between -1 and 1
	
* "tBodyGyroJerkMag-std()"
	mean of the original variable, normalized real number. Range: between -1 and 1
	
* "fBodyAcc-mean()-X"
	mean of the original variable, normalized real number. Range: between -1 and 1
	
* "fBodyAcc-mean()-Y"
	mean of the original variable, normalized real number. Range: between -1 and 1
	
* "fBodyAcc-mean()-Z"
	mean of the original variable, normalized real number. Range: between -1 and 1
	
* "fBodyAcc-std()-X"
	mean of the original variable, normalized real number. Range: between -1 and 1
	
* "fBodyAcc-std()-Y"
	mean of the original variable, normalized real number. Range: between -1 and 1
	
* "fBodyAcc-std()-Z"
	mean of the original variable, normalized real number. Range: between -1 and 1
	
* "fBodyAccJerk-mean()-X"
	mean of the original variable, normalized real number. Range: between -1 and 1
	
* "fBodyAccJerk-mean()-Y"
	mean of the original variable, normalized real number. Range: between -1 and 1
	
* "fBodyAccJerk-mean()-Z"
	mean of the original variable, normalized real number. Range: between -1 and 1
	
* "fBodyAccJerk-std()-X"
	mean of the original variable, normalized real number. Range: between -1 and 1
	
* "fBodyAccJerk-std()-Y"
	mean of the original variable, normalized real number. Range: between -1 and 1
	
* "fBodyAccJerk-std()-Z"
	mean of the original variable, normalized real number. Range: between -1 and 1
	
* "fBodyGyro-mean()-X"
	mean of the original variable, normalized real number. Range: between -1 and 1
	
* "fBodyGyro-mean()-Y"
	mean of the original variable, normalized real number. Range: between -1 and 1
	
* "fBodyGyro-mean()-Z"
	mean of the original variable, normalized real number. Range: between -1 and 1
	
* "fBodyGyro-std()-X"
	mean of the original variable, normalized real number. Range: between -1 and 1
	
* "fBodyGyro-std()-Y"
	mean of the original variable, normalized real number. Range: between -1 and 1
	
* "fBodyGyro-std()-Z"
	mean of the original variable, normalized real number. Range: between -1 and 1
	
* "fBodyAccMag-mean()"
	mean of the original variable, normalized real number. Range: between -1 and 1
	
* "fBodyAccMag-std()"
	mean of the original variable, normalized real number. Range: between -1 and 1
	
* "fBodyBodyAccJerkMag-mean()"
	mean of the original variable, normalized real number. Range: between -1 and 1
	
* "fBodyBodyAccJerkMag-std()"
	mean of the original variable, normalized real number. Range: between -1 and 1
	
* "fBodyBodyGyroMag-mean()"
	mean of the original variable, normalized real number. Range: between -1 and 1
	
* "fBodyBodyGyroMag-std()"
	mean of the original variable, normalized real number. Range: between -1 and 1
	
* "fBodyBodyGyroJerkMag-mean()"
	mean of the original variable, normalized real number. Range: between -1 and 1
	
* "fBodyBodyGyroJerkMag-std()"
	mean of the original variable, normalized real number. Range: between -1 and 1
