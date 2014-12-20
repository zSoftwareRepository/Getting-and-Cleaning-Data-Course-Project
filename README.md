##Coursera
##Getting and Cleaning Data - Project

###Jorge Palma

The tidy data set was created from the train and the test data sets in the "Human Activity 
Recognition Using Smartphones Dataset Version 1.0".

The Train data and the Test data were appended in a single data set in R. Then using the feature 
file the variable names were assigned as column names to the data set. The activity file from the 
test and train data sets were appended also to create a column data set to be cbinded to the 
data set with all the variables. The activity data set was merged with the activities to obtain 
the activity label in addition to this a sequence was also added to preserve the original order 
in the activity data set. 

The subject files from the train and test set were appended to create a data set to be cbinded to 
the all variables data set. A data set was created to contain all variables in the test and train
data sets plus the subject and the activity label.

From the last data set a subset of the variables with the words "mean" and "std" were selected 
to create a tidy data set. The mean of each variable was calculated grouped by subject and 
activity label.

The tidy data set was written in the same folder where the R script is stored. The input files must 
be in the same folder as the R script run_analysis.R in order for this to run.

For each record it is provided:
======================================

- Triaxial acceleration from the accelerometer (total acceleration) and the estimated body acceleration.
- Triaxial Angular velocity from the gyroscope. 
- A 66-feature vector with the mean of time and frequency domain variables. 
- Its activity label. 
- An identifier of the subject who carried out the experiment.

The dataset includes the following files:
=========================================

- README.md
- run_analysis.R
- CodeBook.md

Notes: 
======
- Features are normalized and bounded within [-1,1].
- Each feature vector is a row on the text file.

