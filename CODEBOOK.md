# CODEBOOK

This is a code book that describes the variables, the data, and any transformations or work that you performed to clean up the data.

## The data source

* Original data: https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip 
* Original description of the dataset: http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones 

## Data Set Information

The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data. 

The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then sampled in fixed-width sliding windows of 2.56 sec and 50% overlap (128 readings/window). The sensor acceleration signal, which has gravitational and body motion components, was separated using a Butterworth low-pass filter into body acceleration and gravity. The gravitational force is assumed to have only low frequency components, therefore a filter with 0.3 Hz cutoff frequency was used. From each window, a vector of features was obtained by calculating variables from the time and frequency domain. See 'features_info.txt' for more details. 

For each record it is provided:
======================================

- Triaxial acceleration from the accelerometer (total acceleration) and the estimated body acceleration.
- Triaxial Angular velocity from the gyroscope. 
- A 561-feature vector with time and frequency domain variables. 
- Its activity label. 
- An identifier of the subject who carried out the experiment.

The dataset includes the following files:
=========================================

- 'README.txt'

- 'features_info.txt': Shows information about the variables used on the feature vector.

- 'features.txt': List of all features.

- 'activity_labels.txt': Links the class labels with their activity name.

- 'train/X_train.txt': Training set.

- 'train/y_train.txt': Training labels.

- 'test/X_test.txt': Test set.

- 'test/y_test.txt': Test labels.

The following files are available for the train and test data. Their descriptions are equivalent. 

- 'train/subject_train.txt': Each row identifies the subject who performed the activity for each window sample. Its range is from 1 to 30. 

- 'train/Inertial Signals/total_acc_x_train.txt': The acceleration signal from the smartphone accelerometer X axis in standard gravity units 'g'. Every row shows a 128 element vector. The same description applies for the 'total_acc_x_train.txt' and 'total_acc_z_train.txt' files for the Y and Z axis. 

- 'train/Inertial Signals/body_acc_x_train.txt': The body acceleration signal obtained by subtracting the gravity from the total acceleration. 

- 'train/Inertial Signals/body_gyro_x_train.txt': The angular velocity vector measured by the gyroscope for each window sample. The units are radians/second. 

Notes: 
======
- Features are normalized and bounded within [-1,1].
- Each feature vector is a row on the text file.
- The units used for the accelerations (total and body) are 'g's (gravity of earth -> 9.80665 m/seg2).
- The gyroscope units are rad/seg.
- A video of the experiment including an example of the 6 recorded activities with one of the participants can be seen in the following link: http://www.youtube.com/watch?v=XOEN9W05_4A


## Transformation details

There are 5 steps:

1. Merges the training and the test sets to create one data set.
2. Extracts only the measurements on the mean and standard deviation for each measurement.
3. Uses descriptive activity names to name the activities in the data set
4. Appropriately labels the data set with descriptive activity names.
5. Creates a second, independent tidy data set with the average of each variable for each activity and each subject.

## ```run_analysis.R``` implementation Detailes

1 Download file from web and unzip it and read data from files
2 Subset only mean and std data
3 Load activity labels
4.Bind data
5 Merge test and train data
6 Calculate mean for each subject and activity.
7 write tidy_data to text file tidy_data.txt.

## tidy data set description 

subject:  There are 30 volunteers. Values are:
        1  2  3  4  5  6  7  8  9 10 11 12 13 14 15 16 17 18 19 20 21 22 23 24 25 26 27 28 29 30

Activity_Label: There are six activities. Values are:
        WALKING WALKING_UPSTAIRS WALKING_DOWNSTAIRS SITTING STANDING LAYING

We Calculated mean for each subject and activity. 

Column Name                     Description
subject                         	subject                         
Activity_Label                 	Activity_Label                 
tBodyAcc-mean()-X               Mean of tBodyAcc-mean()-X               
tBodyAcc-mean()-Y              	Mean of tBodyAcc-mean()-Y              
tBodyAcc-mean()-Z               Mean of tBodyAcc-mean()-Z               
tBodyAcc-std()-X               	Mean of tBodyAcc-std()-X               
tBodyAcc-std()-Y                Mean of tBodyAcc-std()-Y                
tBodyAcc-std()-Z               	Mean of tBodyAcc-std()-Z               
tGravityAcc-mean()-X            Mean of tGravityAcc-mean()-X            
tGravityAcc-mean()-Y           	Mean of tGravityAcc-mean()-Y           
tGravityAcc-mean()-Z            Mean of tGravityAcc-mean()-Z            
tGravityAcc-std()-X            	Mean of tGravityAcc-std()-X            
tGravityAcc-std()-Y             Mean of tGravityAcc-std()-Y             
tGravityAcc-std()-Z            	Mean of tGravityAcc-std()-Z            
tBodyAccJerk-mean()-X           Mean of tBodyAccJerk-mean()-X           
tBodyAccJerk-mean()-Y          	Mean of tBodyAccJerk-mean()-Y          
tBodyAccJerk-mean()-Z           Mean of tBodyAccJerk-mean()-Z           
tBodyAccJerk-std()-X           	Mean of tBodyAccJerk-std()-X           
tBodyAccJerk-std()-Y            Mean of tBodyAccJerk-std()-Y            
tBodyAccJerk-std()-Z           	Mean of tBodyAccJerk-std()-Z           
tBodyGyro-mean()-X              Mean of tBodyGyro-mean()-X              
tBodyGyro-mean()-Y             	Mean of tBodyGyro-mean()-Y             
tBodyGyro-mean()-Z              Mean of tBodyGyro-mean()-Z              
tBodyGyro-std()-X              	Mean of tBodyGyro-std()-X              
tBodyGyro-std()-Y               Mean of tBodyGyro-std()-Y               
tBodyGyro-std()-Z              	Mean of tBodyGyro-std()-Z              
tBodyGyroJerk-mean()-X          Mean of tBodyGyroJerk-mean()-X          
tBodyGyroJerk-mean()-Y         	Mean of tBodyGyroJerk-mean()-Y         
tBodyGyroJerk-mean()-Z          Mean of tBodyGyroJerk-mean()-Z          
tBodyGyroJerk-std()-X          	Mean of tBodyGyroJerk-std()-X          
tBodyGyroJerk-std()-Y           Mean of tBodyGyroJerk-std()-Y           
tBodyGyroJerk-std()-Z          	Mean of tBodyGyroJerk-std()-Z          
tBodyAccMag-mean()              Mean of tBodyAccMag-mean()              
tBodyAccMag-std()              	Mean of tBodyAccMag-std()              
tGravityAccMag-mean()           Mean of tGravityAccMag-mean()           
tGravityAccMag-std()           	Mean of tGravityAccMag-std()           
tBodyAccJerkMag-mean()          Mean of tBodyAccJerkMag-mean()          
tBodyAccJerkMag-std()          	Mean of tBodyAccJerkMag-std()          
tBodyGyroMag-mean()             Mean of tBodyGyroMag-mean()             
tBodyGyroMag-std()             	Mean of tBodyGyroMag-std()             
tBodyGyroJerkMag-mean()         Mean of tBodyGyroJerkMag-mean()         
tBodyGyroJerkMag-std()         	Mean of tBodyGyroJerkMag-std()         
fBodyAcc-mean()-X               Mean of fBodyAcc-mean()-X               
fBodyAcc-mean()-Y              	Mean of fBodyAcc-mean()-Y              
fBodyAcc-mean()-Z               Mean of fBodyAcc-mean()-Z               
fBodyAcc-std()-X               	Mean of fBodyAcc-std()-X               
fBodyAcc-std()-Y                Mean of fBodyAcc-std()-Y                
fBodyAcc-std()-Z               	Mean of fBodyAcc-std()-Z               
fBodyAcc-meanFreq()-X           Mean of fBodyAcc-meanFreq()-X           
fBodyAcc-meanFreq()-Y          	Mean of fBodyAcc-meanFreq()-Y          
fBodyAcc-meanFreq()-Z           Mean of fBodyAcc-meanFreq()-Z           
fBodyAccJerk-mean()-X          	Mean of fBodyAccJerk-mean()-X          
fBodyAccJerk-mean()-Y           Mean of fBodyAccJerk-mean()-Y           
fBodyAccJerk-mean()-Z          	Mean of fBodyAccJerk-mean()-Z          
fBodyAccJerk-std()-X            Mean of fBodyAccJerk-std()-X            
fBodyAccJerk-std()-Y           	Mean of fBodyAccJerk-std()-Y           
fBodyAccJerk-std()-Z            Mean of fBodyAccJerk-std()-Z            
fBodyAccJerk-meanFreq()-X      	Mean of fBodyAccJerk-meanFreq()-X      
fBodyAccJerk-meanFreq()-Y       Mean of fBodyAccJerk-meanFreq()-Y       
fBodyAccJerk-meanFreq()-Z      	Mean of fBodyAccJerk-meanFreq()-Z      
fBodyGyro-mean()-X              Mean of fBodyGyro-mean()-X              
fBodyGyro-mean()-Y             	Mean of fBodyGyro-mean()-Y             
fBodyGyro-mean()-Z              Mean of fBodyGyro-mean()-Z              
fBodyGyro-std()-X              	Mean of fBodyGyro-std()-X              
fBodyGyro-std()-Y               Mean of fBodyGyro-std()-Y               
fBodyGyro-std()-Z              	Mean of fBodyGyro-std()-Z              
fBodyGyro-meanFreq()-X          Mean of fBodyGyro-meanFreq()-X          
fBodyGyro-meanFreq()-Y         	Mean of fBodyGyro-meanFreq()-Y         
fBodyGyro-meanFreq()-Z          Mean of fBodyGyro-meanFreq()-Z          
fBodyAccMag-mean()             	Mean of fBodyAccMag-mean()             
fBodyAccMag-std()               Mean of fBodyAccMag-std()               
fBodyAccMag-meanFreq()         	Mean of fBodyAccMag-meanFreq()         
fBodyBodyAccJerkMag-mean()      Mean of fBodyBodyAccJerkMag-mean()      
fBodyBodyAccJerkMag-std()      	Mean of fBodyBodyAccJerkMag-std()      
fBodyBodyAccJerkMag-meanFreq()  Mean of fBodyBodyAccJerkMag-meanFreq()  
fBodyBodyGyroMag-mean()        	Mean of fBodyBodyGyroMag-mean()        
fBodyBodyGyroMag-std()          Mean of fBodyBodyGyroMag-std()          
fBodyBodyGyroMag-meanFreq()    	Mean of fBodyBodyGyroMag-meanFreq()    
fBodyBodyGyroJerkMag-mean()     Mean of fBodyBodyGyroJerkMag-mean()     
fBodyBodyGyroJerkMag-std()     	Mean of fBodyBodyGyroJerkMag-std()     
fBodyBodyGyroJerkMag-meanFreq()	Mean of fBodyBodyGyroJerkMag-meanFreq()
