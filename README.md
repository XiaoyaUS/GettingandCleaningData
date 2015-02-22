# Getting and Cleaning Data

## Course Project

R script run_analysis.R does the following.

1. Download file from web and unzip it and read data from files
2. Merges the training and the test sets to create one data set.
3. Extracts only the measurements on the mean and standard deviation for each measurement.
4. Uses descriptive activity names to name the activities in the data set
5. Appropriately labels the data set with descriptive activity names.
6. Creates a second, independent tidy data set with the average of each variable for each activity and each subject.

## How to run this script

1. Install package ```reshape2``` and ```data.table```.
2. Run ```source("run_analysis.R")```, it will generate a new file ```tiny_data.txt``` in your working directory.



