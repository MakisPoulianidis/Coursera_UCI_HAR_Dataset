CodeBook Analysis_UCI_HAR_Dataset
=================================

## Data

The raw data can be obtained from: 
https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

A full description of the data is available from: 
http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

The following files were used from this dataset:
- "UCI HAR Dataset/activity_labels.txt"
- "UCI HAR Dataset/features.txt"
- "UCI HAR Dataset/test/subject_test.txt"
- "UCI HAR Dataset/train/subject_train.txt"
- "UCI HAR Dataset/test/y_test.txt"
- "UCI HAR Dataset/train/y_train.txt"
- "UCI HAR Dataset/test/X_test.txt"
- "UCI HAR Dataset/train/X_train.txt"
It uses data from features$V2 as column names while loading X_test.txt and X_train.txt

### Transformations
No transformations were executed on measurements.
Variable names however were renamed to conform to tidy data standards.
The following renaming rules were used: 
- id --> Identifier
- t --> Time
- f --> Frequency
- Acc --> Accelerometer
- Gyro --> Gyroscope
- Mag --> Magnitude
- mean --> Mean
- jerk --> Jerk
- std -->Std (for standard deviation)
- ()- --> removed
- X --> XAxis
- Y --> XAxis
- Z --> XAxis
All names are stored in CamelCase


### Variables
Variables in output file "UCI HAR Dataset Tidy AVG.txt"

Subject
- An identifier of the subject who carried out the experiment.
- Integer

ActivityIdentifier                              
- An identifier of the activity
- Integer
  
Activity
- Its activity label: WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING
- Factor with 6 levels
 
TimeBodyAccelerometerMeanXAxis
- numeric
- this variable hase been renamed from: tBodyAcc-mean()-X	
	
TimeBodyAccelerometerMeanYAxis
- numeric
- this variable hase been renamed from: tBodyAcc-mean()-Y	
	
TimeBodyAccelerometerMeanZAxis
- numeric
- this variable hase been renamed from: tBodyAcc-mean()-Z	
	
TimeBodyAccelerometerStdXAxis
- numeric
- this variable hase been renamed from: tBodyAcc-std()-X	
	
TimeBodyAccelerometerStdYAxis
- numeric
- this variable hase been renamed from: tBodyAcc-std()-Y	
	
TimeBodyAccelerometerStdZAxis
- numeric
- this variable hase been renamed from: tBodyAcc-std()-Z	
	
TimeGravityAccelerometerMeanXAxis
- numeric
- this variable hase been renamed from: tGravityAcc-mean()-X	
		
TimeGravityAccelerometerMeanYAxis
- numeric
- this variable hase been renamed from: tGravityAcc-mean()-Y	
	
TimeGravityAccelerometerMeanZAxis
- numeric
- this variable hase been renamed from: tGravityAcc-mean()-Z	
	
TimeGravityAccelerometerStdXAxis
- numeric
- this variable hase been renamed from: tGravityAcc-std()-X	
	
TimeGravityAccelerometerStdYAxis
- numeric
- this variable hase been renamed from: tGravityAcc-std()-Y	
	
TimeGravityAccelerometerStdZAxis
- numeric
- this variable hase been renamed from: tGravityAcc-std()-Z	
	
TimeBodyAccelerometerJerkMeanXAxis
- numeric
- this variable hase been renamed from: tBodyAccJerk-mean()-X	
	
TimeBodyAccelerometerJerkMeanYAxis
- numeric
- this variable hase been renamed from: tBodyAccJerk-mean()-Y	
	
TimeBodyAccelerometerJerkMeanZAxis
- numeric
- this variable hase been renamed from: tBodyAccJerk-mean()-Z	
	
TimeBodyAccelerometerJerkStdXAxis
- numeric
- this variable hase been renamed from: tBodyAccJerk-std()-X	
	
TimeBodyAccelerometerJerkStdYAxis
- numeric
- this variable hase been renamed from: tBodyAccJerk-std()-Y	
	
TimeBodyAccelerometerJerkStdZAxis
- numeric
- this variable hase been renamed from: tBodyAccJerk-std()-Z	
	
TimeBodyGyroscopeMeanXAxis
- numeric
- this variable hase been renamed from: tBodyGyro-mean()-X	
	
TimeBodyGyroscopeMeanYAxis
- numeric
- this variable hase been renamed from: tBodyGyro-mean()-Y	
	
TimeBodyGyroscopeMeanZAxis
- numeric
- this variable hase been renamed from: tBodyGyro-mean()-Z	
	
TimeBodyGyroscopeStdXAxis
- numeric
- this variable hase been renamed from: tBodyGyro-std()-X	
	
	
TimeBodyGyroscopeStdYAxis
- numeric
- this variable hase been renamed from: tBodyGyro-std()-Y	
	
TimeBodyGyroscopeStdZAxis
- numeric
- this variable hase been renamed from: tBodyGyro-std()-Z	
	
TimeBodyGyroscopeJerkMeanXAxis
- numeric
- this variable hase been renamed from: tBodyGyroJerk-mean()-X	
	
TimeBodyGyroscopeJerkMeanYAxis
- numeric
- this variable hase been renamed from: tBodyGyroJerk-mean()-Y	
	
TimeBodyGyroscopeJerkMeanZAxis
- numeric
- this variable hase been renamed from: tBodyGyroJerk-mean()-Z	
	
TimeBodyGyroscopeJerkStdXAxis
- numeric
- this variable hase been renamed from: tBodyGyroJerk-std()-X	
	
TimeBodyGyroscopeJerkStdYAxis
- numeric
- this variable hase been renamed from: tBodyGyroJerk-std()-Y	
	
TimeBodyGyroscopeJerkStdZAxis
- numeric
- this variable hase been renamed from: tBodyGyroJerk-std()-Z	
	
TimeBodyAccelerometerMagnitudeMean
- numeric
- this variable hase been renamed from: tBodyAccMag-mean()	
	
TimeBodyAccelerometerMagnitudeStd
- numeric
- this variable hase been renamed from: tBodyAccMag-std()	
	
TimeGravityAccelerometerMagnitudeMean
- numeric
- this variable hase been renamed from: tGravityAccMag-mean()	
	
TimeGravityAccelerometerMagnitudeStd
- numeric
- this variable hase been renamed from: tGravityAccMag-std()	
	
TimeBodyAccelerometerJerkMagnitudeMean
- numeric
- this variable hase been renamed from: tBodyAccJerkMag-mean()	
	
TimeBodyAccelerometerJerkMagnitudeStd
- numeric
- this variable hase been renamed from: tBodyAccJerkMag-std()	
	
TimeBodyGyroscopeMagnitudeMean
- numeric
- this variable hase been renamed from: tBodyGyroMag-mean()	
	
TimeBodyGyroscopeMagnitudeStd
- numeric
- this variable hase been renamed from: tBodyGyroMag-std()	
	
TimeBodyGyroscopeJerkMagnitudeMean
- numeric
- this variable hase been renamed from: tBodyGyroJerkMag-mean()	
	
TimeBodyGyroscopeJerkMagnitudeStd
- numeric
- this variable hase been renamed from: tBodyGyroJerkMag-std()	
	
FrequencyBodyAccelerometerMeanXAxis
- numeric
- this variable hase been renamed from: fBodyAcc-mean()-X	
	
	
FrequencyBodyAccelerometerMeanYAxis
- numeric
- this variable hase been renamed from: fBodyAcc-mean()-Y	
	
FrequencyBodyAccelerometerMeanZAxis
- numeric
- this variable hase been renamed from: fBodyAcc-mean()-Z	
	
FrequencyBodyAccelerometerStdXAxis
- numeric
- this variable hase been renamed from: fBodyAcc-std()-X	
	
FrequencyBodyAccelerometerStdYAxis
- numeric
- this variable hase been renamed from: fBodyAcc-std()-Y	
	
FrequencyBodyAccelerometerStdZAxis
- numeric
- this variable hase been renamed from: fBodyAcc-std()-Z	
	
FrequencyBodyAccelerometerMeanFrequencyXAxis
- numeric
- this variable hase been renamed from: fBodyAcc-meanFreq()-X	
	
FrequencyBodyAccelerometerMeanFrequencyYAxis
- numeric
- this variable hase been renamed from: fBodyAcc-meanFreq()-Y	
	
FrequencyBodyAccelerometerMeanFrequencyZAxis
- numeric
- this variable hase been renamed from: fBodyAcc-meanFreq()-Z	
	
FrequencyBodyAccelerometerJerkMeanXAxis
- numeric
- this variable hase been renamed from: fBodyAccJerk-mean()-X	
	
FrequencyBodyAccelerometerJerkMeanYAxis
- numeric
- this variable hase been renamed from: fBodyAccJerk-mean()-Y	
	
FrequencyBodyAccelerometerJerkMeanZAxis
- numeric
- this variable hase been renamed from: fBodyAccJerk-mean()-Z	
	
FrequencyBodyAccelerometerJerkStdXAxis
- numeric
- this variable hase been renamed from: fBodyAccJerk-std()-X	
	
FrequencyBodyAccelerometerJerkStdYAxis
- numeric
- this variable hase been renamed from: fBodyAccJerk-std()-Y	
	
FrequencyBodyAccelerometerJerkStdZAxis
- numeric
- this variable hase been renamed from: fBodyAccJerk-std()-Z	
	
FrequencyBodyAccelerometerJerkMeanFrequencyXAxis
- numeric
- this variable hase been renamed from: fBodyAccJerk-meanFreq()-X	
	
FrequencyBodyAccelerometerJerkMeanFrequencyYAxis
- numeric
- this variable hase been renamed from: fBodyAccJerk-meanFreq()-Y	
	
FrequencyBodyAccelerometerJerkMeanFrequencyZAxis
- numeric
- this variable hase been renamed from: fBodyAccJerk-meanFreq()-Z	
	
FrequencyBodyGyroscopeMeanXAxis
- numeric
- this variable hase been renamed from: fBodyGyro-mean()-X	
	
FrequencyBodyGyroscopeMeanYAxis
- numeric
- this variable hase been renamed from: fBodyGyro-mean()-Y	
	
FrequencyBodyGyroscopeMeanZAxis
- numeric
- this variable hase been renamed from: fBodyGyro-mean()-Z		
	
FrequencyBodyGyroscopeStdXAxis
- numeric
- this variable hase been renamed from: fBodyGyro-std()-X	
	
FrequencyBodyGyroscopeStdYAxis
- numeric
- this variable hase been renamed from: fBodyGyro-std()-Y	
	
FrequencyBodyGyroscopeStdZAxis
- numeric
- this variable hase been renamed from: fBodyGyro-std()-Z	
	
FrequencyBodyGyroscopeMeanFrequencyXAxis
- numeric
- this variable hase been renamed from: fBodyGyro-meanFreq()-X	
	
FrequencyBodyGyroscopeMeanFrequencyYAxis
- numeric
- this variable hase been renamed from: fBodyGyro-meanFreq()-Y	
	
FrequencyBodyGyroscopeMeanFrequencyZAxis
- numeric
- this variable hase been renamed from: fBodyGyro-meanFreq()-Z	
	
FrequencyBodyAccelerometerMagnitudeMean
- numeric
- this variable hase been renamed from: fBodyAccMag-mean()	
	
FrequencyBodyAccelerometerMagnitudeStd
- numeric
- this variable hase been renamed from: fBodyAccMag-std()	
	
FrequencyBodyAccelerometerMagnitudeMeanFrequency
- numeric
- this variable hase been renamed from: fBodyAccMag-meanFreq()	
	
FrequencyBodyAccelerometerJerkMagnitudeMean
- numeric
- this variable hase been renamed from: fBodyBodyAccJerkMag-mean()	
	
FrequencyBodyAccelerometerJerkMagnitudeStd
- numeric
- this variable hase been renamed from: fBodyBodyAccJerkMag-std()	
	
FrequencyBodyAccelerometerJerkMagnitudeMeanFrequency
- numeric
- this variable hase been renamed from: fBodyBodyAccJerkMag-meanFreq()	
	
FrequencyBodyGyroscopeMagnitudeMean
- numeric
- this variable hase been renamed from: fBodyBodyGyroMag-mean()	
	
FrequencyBodyGyroscopeMagnitudeStd
- numeric
- this variable hase been renamed from: fBodyBodyGyroMag-std()	
	
FrequencyBodyGyroscopeMagnitudeMeanFrequency
- numeric
- this variable hase been renamed from: fBodyBodyGyroMag-meanFreq()	
	
FrequencyBodyGyroscopeJerkMagnitudeMean
- numeric
- this variable hase been renamed from: fBodyBodyGyroJerkMag-mean()	
	
FrequencyBodyGyroscopeJerkMagnitudeStd
- numeric
- this variable hase been renamed from: fBodyBodyGyroJerkMag-std()	
	
FrequencyBodyGyroscopeJerkMagnitudeMeanFrequency
- numeric
- this variable hase been renamed from: fBodyBodyGyroJerkMag-meanFreq()	
	

