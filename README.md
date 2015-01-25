Analysis_UCI_HAR_Dataset
========================

### Coursera Getting and Cleaning Data Course Project

This script is part of the Coursera Cleaning Data Course Project.
It merges the training and the test sets into one data set. 
It extracts only the measurements on the mean and standard deviation for each measurement. 
It uses descriptive activity names to name the activities in the data set.
It labels the data set with descriptive variable names. 

Output is a independent tidy data set with the average of each variable for each activity and each subject.

### Requirements 

The following packages are needed:
- data.table
- dplyr
The	script will load these libraries but expects the packages to be installed.
 
The following versions were used:
- R version 3.1.1
- data.table 1.9.4
- dplyr 0.4.1

The script assumes that the data has been downloaded and is present in the work directory.

Throughout the script Unix path notation style is used. 

### Raw Data

The raw data can be obtained from: 
https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

A full description of the data is available from: 
http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

### Tidy Data

The output of this script is the file "UCI HAR Dataset Tidy AVG.txt". 

This file is a tidy data set because:
- Each measured variable is stored in one column
- Each different observation is stored in a different row
- The table contains a row at the top with variable names
- Variable names have been made "human readable" 
The codebook contains detailed info on the variables used.

### How to run

- First get the data from: https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip
- Extract the zipfile in any folder, it will create a folder named "UCI HAR Dataset"
- Copy the script "run_analysis.R" to the same folder that contains folder "UCI HAR Dataset"
- Point your working directory to the folder containing "run_analysis.R" and "UCI HAR Dataset"
- load the script using "source("run_analysis.R")"
- run the script using "run_analysis()"
- The outputfile (UCI HAR Dataset Tidy AVG.txt) can be found in the R working directory.
- NB: the script shows no warning messages, these are suppressed.


The script "run_analysis.R"
========================

First the script ensures the libraries data.table and dplyr are loaded.

Then, using "read table" the files are loaded: 
- "UCI HAR Dataset/activity_labels.txt"
- "UCI HAR Dataset/features.txt"
- "UCI HAR Dataset/test/subject_test.txt"
- "UCI HAR Dataset/train/subject_train.txt"
- "UCI HAR Dataset/test/y_test.txt"
- "UCI HAR Dataset/train/y_train.txt"
- "UCI HAR Dataset/test/X_test.txt"
- "UCI HAR Dataset/train/X_train.txt"
It uses data from features$V2 as column names while loading X_test.txt and X_train.txt.

Next, the activity labels are joined with the y_test and y_train data using dplyr::inner_join.        

Test and Train data are then loaded into one datatable.  
A datatable is made containing only the relevant variables using dplyr::select
The relevant columnnames are renamed with "tidy" 
Data is then grouped by Activity and Subject and the AVG of each variable is calculated.
Finally, this second tidy set is written to: "UCI HAR Dataset Tidy AVG.txt"