##	run_analysis.R does the following. 
##    	Merges the training and the test sets to create one data set.
##    	Extracts only the measurements on the mean and standard deviation for each measurement. 
##    	Uses descriptive activity names to name the activities in the data set
##    	Appropriately labels the data set with descriptive variable names. 
##    	From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.
## load library
library(data.table)
library(reshape2)


## download data file
fileURL <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
zipfile="UCI_HAR_data.zip"
download.file(fileURL, destfile=zipfile, method="curl")
unzip(zipfile, exdir="./")

## read data file
activity_labels <- read.table("./UCI HAR Dataset/activity_labels.txt")[,2]
features <- read.table("./UCI HAR Dataset/features.txt")[,2]
features_subset <- grepl("mean|std", features)

X_test <- read.table("./UCI HAR Dataset/test/X_test.txt")
y_test <- read.table("./UCI HAR Dataset/test/y_test.txt")
subject_test <- read.table("./UCI HAR Dataset/test/subject_test.txt")

X_train <- read.table("./UCI HAR Dataset/train/X_train.txt")
y_train <- read.table("./UCI HAR Dataset/train/y_train.txt")
subject_train <- read.table("./UCI HAR Dataset/train/subject_train.txt")


## subset only mean and std data
names(X_test) <-  features
X_test_subset <- X_test[, features_subset]
names(X_train) <-  features
X_train_subset <- X_train[, features_subset]


## Load activity labels
y_test[,2] <-  activity_labels[y_test[,1]]
names(y_test) <- c("Activity_ID", "Activity_Label")
names(subject_test) <- "subject"

y_train[,2] <-  activity_labels[y_train[,1]]
names(y_train) <- c("Activity_ID", "Activity_Label")
names(subject_train) <- "subject"

## Bind data
test_data <- cbind(as.data.table(subject_test), y_test, X_test_subset)
train_data <- cbind(as.data.table(subject_train), y_train, X_train_subset)

## Merge test and train data
data = rbind(test_data, train_data)

## calculate mean for each subject and activity.
id_labels = c("subject", "Activity_ID", "Activity_Label")
data_labels = setdiff(colnames(data), id_labels)
melt_data = melt(data, id = id_labels, measure.vars = data_labels)
tidy_data = dcast(melt_data, subject + Activity_Label ~ variable, mean)
write.table(tidy_data, file = "./tidy_data.txt",  row.name=FALSE) 


