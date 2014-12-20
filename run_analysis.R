#
#
library(plyr)
library(data.table)
require(reshape2)
#
#
# Read Features file
features <- read.table("features.txt",sep = "",header=FALSE)

#Read Activities Labels
ActLabels <- read.table("activity_labels.txt",sep = "",header=FALSE)
colnames(ActLabels) <- c("ActId", "ActLabel")

# Train Data Set
# Read train variables file
train_x <- read.table("X_train.txt",sep = "",header=FALSE)

# Test Data Set
# Read Test variables file
test_x <- read.table("X_test.txt",sep = "",header=FALSE)

#
# 1.Merges the training and the test sets to create one data set.
#   
#   Merge the train and test data sets into The One Data Set

TheOneDataSet <- rbind(train_x,test_x)

#
# 2.Extracts only the measurements on the mean and 
#   standard deviation for each measurement
#
#   Using the column names determine which columns to select

# 4.Appropriately labels the data set with descriptive 
#   variable names. 
#
colnames(TheOneDataSet) <-  features$V2
newcols <- grep("mean?\\(\\)|std?\\(\\)",colnames(TheOneDataSet))
#

#
# 3.Uses descriptive activity names to name the activities 
#   in the data set
#   Steps:

# Read Training Activities
train_y <- read.table("y_train.txt",sep = "",header=FALSE)

# Read Test Activities
test_y <- read.table("y_test.txt",sep = "",header=FALSE)

# Determine the number of rows for the sequence
ds.len <- nrow(train_y) + nrow(test_y)

# the merge will change the initial order of ds.activities
# the sequence will help to sort back the ds.activities
ds.activities <- rbind(train_y,test_y)
ds.activities <- cbind(ds.activities,seq(len=ds.len))
colnames(ds.activities) <- c("ActId","order")

# Merge Activities ID with the Activities Label
# and keep the original order to be cbind with the one deta set
#
LabeledActivities <- merge(ds.activities,ActLabels,by="ActId")

# Return the activities to the original order
LabeledActivities <- LabeledActivities[with(LabeledActivities,order(order)),]


# Read Training Subjects
subject_train <- read.table("subject_train.txt",sep = "",header=FALSE)
colnames(subject_train) <- "subject"

# Read Test Subjects
subject_test <- read.table("subject_test.txt",sep = "",header=FALSE)
colnames(subject_test) <- "subject"

subject <- rbind(subject_train,subject_test)

# Result:
# 3.Uses descriptive activity names to name the activities in the data set
# 4.Appropriately labels the data set with descriptive variable names. 

TheOneDataSet <- mutate(TheOneDataSet,subject=subject$subject,ActLabeled=LabeledActivities$ActLabel)

# 5.From the data set in step 4, creates a second, independent tidy data set with the 
#   average of each variable for each activity and each subject

# Extracts only the measurements on the mean and standard deviation for each measurement
TidyDataSet <- TheOneDataSet[,newcols]

# Add Subject and Activity Labels again

TidyDataSet <- mutate(TidyDataSet,subject=subject$subject,ActLabeled=LabeledActivities$ActLabel)

mtds <- melt(TidyDataSet, id=c("subject","ActLabeled"))                      

dcast_tds <- dcast(mtds, subject + ActLabeled ~ variable, mean)


# Write the tydi data set
#
write.table(dcast_tds,"tidydataset.txt",row.name=FALSE )
#
#

