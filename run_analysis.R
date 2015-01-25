run_analysis <- function () {
        options(warn=-1)
        
        ## First make sure the libraries data.table and dplyr are loaded       
        library(data.table)     
        library(dplyr)
        
        ## Load the file activity_labels.txt using read table
        activity_labels <- read.table("UCI HAR Dataset/activity_labels.txt", sep="", col.names=c("activity_id", "activity"))
        
        ## Load the file features.txt using read table
        features <- read.table("UCI HAR Dataset/features.txt", sep="")
        
        ## Load the file subject_test.txt using read table
        subject_test <- read.table("UCI HAR Dataset/test/subject_test.txt", sep="", col.names = c("subject"))
        
        ## Load the file X_test.txt using read table     
        ## Use data from features$V2 as column names
        x_test <- read.table("UCI HAR Dataset/test/X_test.txt", sep="", col.names = features$V2)
        
        ## Load the file Y_test.txt using read table     
        y_test <- read.table("UCI HAR Dataset/test/y_test.txt", sep="", col.names = c("activity_id"))
        
        ## Load the file subject_train.txt using read table
        subject_train <- read.table("UCI HAR Dataset/train/subject_train.txt", sep="", col.names = c("subject"))
        
        ## Load the file X_train.txt using read table 
        ## Use data from features$V2 as column names   
        x_train <- read.table("UCI HAR Dataset/train/X_train.txt", sep="", col.names = features$V2)
        
        ## Load the file Y_train.txt using read table     
        y_train <- read.table("UCI HAR Dataset/train/y_train.txt", sep="", col.names = c("activity_id"))
                       
        ## join the activity labels with the y_test data using dplyr::inner_join
        ## do NOT use merge as it SORTs the data!
        join_test<-inner_join(y_test,activity_labels, by = "activity_id")
        
        
        ## join the activity labels with the y_train data using dplyr::inner_join
        ## do NOT use merge as it SORTs the data!
        join_train<-inner_join(y_train,activity_labels, by = "activity_id")
        
        ## create two datatables from available dataframes        
        dt_test<-data.table(subject_test, join_test, x_test)
        dt_train<-data.table(subject_train, join_train, x_train)
        
        ## create the-mother-of-all-datatables using rbind
        dt_moadt <- rbind(dt_test, dt_train)
        
        ## create a list of the relevant variables for the subset.
        col_subset <- c("subject","activity_id","activity","tBodyAcc.mean...X","tBodyAcc.mean...Y","tBodyAcc.mean...Z","tBodyAcc.std...X","tBodyAcc.std...Y","tBodyAcc.std...Z","tGravityAcc.mean...X","tGravityAcc.mean...Y","tGravityAcc.mean...Z","tGravityAcc.std...X","tGravityAcc.std...Y","tGravityAcc.std...Z","tBodyAccJerk.mean...X","tBodyAccJerk.mean...Y","tBodyAccJerk.mean...Z","tBodyAccJerk.std...X","tBodyAccJerk.std...Y","tBodyAccJerk.std...Z","tBodyGyro.mean...X","tBodyGyro.mean...Y","tBodyGyro.mean...Z","tBodyGyro.std...X","tBodyGyro.std...Y","tBodyGyro.std...Z","tBodyGyroJerk.mean...X","tBodyGyroJerk.mean...Y","tBodyGyroJerk.mean...Z","tBodyGyroJerk.std...X","tBodyGyroJerk.std...Y","tBodyGyroJerk.std...Z","tBodyAccMag.mean..","tBodyAccMag.std..","tGravityAccMag.mean..","tGravityAccMag.std..","tBodyAccJerkMag.mean..","tBodyAccJerkMag.std..","tBodyGyroMag.mean..","tBodyGyroMag.std..","tBodyGyroJerkMag.mean..","tBodyGyroJerkMag.std..","fBodyAcc.mean...X","fBodyAcc.mean...Y","fBodyAcc.mean...Z","fBodyAcc.std...X","fBodyAcc.std...Y","fBodyAcc.std...Z","fBodyAcc.meanFreq...X","fBodyAcc.meanFreq...Y","fBodyAcc.meanFreq...Z","fBodyAccJerk.mean...X","fBodyAccJerk.mean...Y","fBodyAccJerk.mean...Z","fBodyAccJerk.std...X","fBodyAccJerk.std...Y","fBodyAccJerk.std...Z","fBodyAccJerk.meanFreq...X","fBodyAccJerk.meanFreq...Y","fBodyAccJerk.meanFreq...Z","fBodyGyro.mean...X","fBodyGyro.mean...Y","fBodyGyro.mean...Z","fBodyGyro.std...X","fBodyGyro.std...Y","fBodyGyro.std...Z","fBodyGyro.meanFreq...X","fBodyGyro.meanFreq...Y","fBodyGyro.meanFreq...Z","fBodyAccMag.mean..","fBodyAccMag.std..","fBodyAccMag.meanFreq..","fBodyBodyAccJerkMag.mean..","fBodyBodyAccJerkMag.std..","fBodyBodyAccJerkMag.meanFreq..","fBodyBodyGyroMag.mean..","fBodyBodyGyroMag.std..","fBodyBodyGyroMag.meanFreq..","fBodyBodyGyroJerkMag.mean..","fBodyBodyGyroJerkMag.std..","fBodyBodyGyroJerkMag.meanFreq..")
        
        ## create a datatable containing only the relevant variables using dplyr::select
        ##dt_subset <- dt_moadt[,col_subset] 
        dt_subset <- select(dt_moadt, one_of(col_subset))
        

        ## create a list of "tidy" columnnames (see readme.md)
        ##col_tidy <- c("Subject","ActivityIdentifier","Activity","TimeBodyAccelerometerMeanXAxis","TimeBodyAccelerometerMeanYAxis","TimeBodyAccelerometerMeanZAxis","TimeBodyAccelerometerStdXAxis","TimeBodyAccelerometerStdYAxis","TimeBodyAccelerometerStdZAxis","TimeGravityAccelerometerMeanXAxis","TimeGravityAccelerometerMeanYAxis","TimeGravityAccelerometerMeanZAxis","TimeGravityAccelerometerStdXAxis","TimeGravityAccelerometerStdYAxis","TimeGravityAccelerometerStdZAxis","TimeBodyAccelerometerMeanXAxis","TimeBodyAccelerometerMeanYAxis","TimeBodyAccelerometerMeanZAxis","TimeBodyAccelerometerStdXAxis","TimeBodyAccelerometerStdYAxis","TimeBodyAccelerometerStdZAxis","TimeBodyGyroscopeMeanXAxis","TimeBodyGyroscopeMeanYAxis","TimeBodyGyroscopeMeanZAxis","TimeBodyGyroscopeStdXAxis","TimeBodyGyroscopeStdYAxis","TimeBodyGyroscopeStdZAxis","TimeBodyGyroscopeMeanXAxis","TimeBodyGyroscopeMeanYAxis","TimeBodyGyroscopeMeanZAxis","TimeBodyGyroscopeStdXAxis","TimeBodyGyroscopeStdYAxis","TimeBodyGyroscopeStdZAxis","TimeBodyAccelerometerMagnitudeMean","TimeBodyAccelerometerMagnitudeStd","TimeGravityAccelerometerMagnitudeMean","TimeGravityAccelerometerMagnitudeStd","TimeBodyAccelerometerMagnitudeMean","TimeBodyAccelerometerMagnitudeStd","TimeBodyGyroscopeMagnitudeMean","TimeBodyGyroscopeMagnitudeStd","TimeBodyGyroscopeMagnitudeMean","TimeBodyGyroscopeMagnitudeStd","FrequencyBodyAccelerometerMeanXAxis","FrequencyBodyAccelerometerMeanYAxis","FrequencyBodyAccelerometerMeanZAxis","FrequencyBodyAccelerometerStdXAxis","FrequencyBodyAccelerometerStdYAxis","FrequencyBodyAccelerometerStdZAxis","FrequencyBodyAccelerometerMeanFrequencyXAxis","FrequencyBodyAccelerometerMeanFrequencyYAxis","FrequencyBodyAccelerometerMeanFrequencyZAxis","FrequencyBodyAccelerometerMeanXAxis","FrequencyBodyAccelerometerMeanYAxis","FrequencyBodyAccelerometerMeanZAxis","FrequencyBodyAccelerometerStdXAxis","FrequencyBodyAccelerometerStdYAxis","FrequencyBodyAccelerometerStdZAxis","FrequencyBodyAccelerometerMeanFrequencyXAxis","FrequencyBodyAccelerometerMeanFrequencyYAxis","FrequencyBodyAccelerometerMeanFrequencyZAxis","FrequencyBodyGyroscopeMeanXAxis","FrequencyBodyGyroscopeMeanYAxis","FrequencyBodyGyroscopeMeanZAxis","FrequencyBodyGyroscopeStdXAxis","FrequencyBodyGyroscopeStdYAxis","FrequencyBodyGyroscopeStdZAxis","FrequencyBodyGyroscopeMeanFrequencyXAxis","FrequencyBodyGyroscopeMeanFrequencyYAxis","FrequencyBodyGyroscopeMeanFrequencyZAxis","FrequencyBodyAccelerometerMagnitudeMean","FrequencyBodyAccelerometerMagnitudeStd","FrequencyBodyAccelerometerMagnitudeMeanFrequency","FrequencyBodyAccelerometerMagnitudeMean","FrequencyBodyAccelerometerMagnitudeStd","FrequencyBodyAccelerometerMagnitudeMeanFrequency","FrequencyBodyGyroscopeMagnitudeMean","FrequencyBodyGyroscopeMagnitudeStd","FrequencyBodyGyroscopeMagnitudeMeanFrequency","FrequencyBodyGyroscopeMagnitudeMean","FrequencyBodyGyroscopeMagnitudeStd","FrequencyBodyGyroscopeMagnitudeMeanFrequency")
        col_tidy <- c("Subject","ActivityIdentifier","Activity","TimeBodyAccelerometerMeanXAxis","TimeBodyAccelerometerMeanYAxis","TimeBodyAccelerometerMeanZAxis","TimeBodyAccelerometerStdXAxis","TimeBodyAccelerometerStdYAxis","TimeBodyAccelerometerStdZAxis","TimeGravityAccelerometerMeanXAxis","TimeGravityAccelerometerMeanYAxis","TimeGravityAccelerometerMeanZAxis","TimeGravityAccelerometerStdXAxis","TimeGravityAccelerometerStdYAxis","TimeGravityAccelerometerStdZAxis","TimeBodyAccelerometerJerkMeanXAxis","TimeBodyAccelerometerJerkMeanYAxis","TimeBodyAccelerometerJerkMeanZAxis","TimeBodyAccelerometerJerkStdXAxis","TimeBodyAccelerometerJerkStdYAxis","TimeBodyAccelerometerJerkStdZAxis","TimeBodyGyroscopeMeanXAxis","TimeBodyGyroscopeMeanYAxis","TimeBodyGyroscopeMeanZAxis","TimeBodyGyroscopeStdXAxis","TimeBodyGyroscopeStdYAxis","TimeBodyGyroscopeStdZAxis","TimeBodyGyroscopeJerkMeanXAxis","TimeBodyGyroscopeJerkMeanYAxis","TimeBodyGyroscopeJerkMeanZAxis","TimeBodyGyroscopeJerkStdXAxis","TimeBodyGyroscopeJerkStdYAxis","TimeBodyGyroscopeJerkStdZAxis","TimeBodyAccelerometerMagnitudeMean","TimeBodyAccelerometerMagnitudeStd","TimeGravityAccelerometerMagnitudeMean","TimeGravityAccelerometerMagnitudeStd","TimeBodyAccelerometerJerkMagnitudeMean","TimeBodyAccelerometerJerkMagnitudeStd","TimeBodyGyroscopeMagnitudeMean","TimeBodyGyroscopeMagnitudeStd","TimeBodyGyroscopeJerkMagnitudeMean","TimeBodyGyroscopeJerkMagnitudeStd","FrequencyBodyAccelerometerMeanXAxis","FrequencyBodyAccelerometerMeanYAxis","FrequencyBodyAccelerometerMeanZAxis","FrequencyBodyAccelerometerStdXAxis","FrequencyBodyAccelerometerStdYAxis","FrequencyBodyAccelerometerStdZAxis","FrequencyBodyAccelerometerMeanFrequencyXAxis","FrequencyBodyAccelerometerMeanFrequencyYAxis","FrequencyBodyAccelerometerMeanFrequencyZAxis","FrequencyBodyAccelerometerJerkMeanXAxis","FrequencyBodyAccelerometerJerkMeanYAxis","FrequencyBodyAccelerometerJerkMeanZAxis","FrequencyBodyAccelerometerJerkStdXAxis","FrequencyBodyAccelerometerJerkStdYAxis","FrequencyBodyAccelerometerJerkStdZAxis","FrequencyBodyAccelerometerJerkMeanFrequencyXAxis","FrequencyBodyAccelerometerJerkMeanFrequencyYAxis","FrequencyBodyAccelerometerJerkMeanFrequencyZAxis","FrequencyBodyGyroscopeMeanXAxis","FrequencyBodyGyroscopeMeanYAxis","FrequencyBodyGyroscopeMeanZAxis","FrequencyBodyGyroscopeStdXAxis","FrequencyBodyGyroscopeStdYAxis","FrequencyBodyGyroscopeStdZAxis","FrequencyBodyGyroscopeMeanFrequencyXAxis","FrequencyBodyGyroscopeMeanFrequencyYAxis","FrequencyBodyGyroscopeMeanFrequencyZAxis","FrequencyBodyAccelerometerMagnitudeMean","FrequencyBodyAccelerometerMagnitudeStd","FrequencyBodyAccelerometerMagnitudeMeanFrequency","FrequencyBodyAccelerometerJerkMagnitudeMean","FrequencyBodyAccelerometerJerkMagnitudeStd","FrequencyBodyAccelerometerJerkMagnitudeMeanFrequency","FrequencyBodyGyroscopeMagnitudeMean","FrequencyBodyGyroscopeMagnitudeStd","FrequencyBodyGyroscopeMagnitudeMeanFrequency","FrequencyBodyGyroscopeJerkMagnitudeMean","FrequencyBodyGyroscopeJerkMagnitudeStd","FrequencyBodyGyroscopeJerkMagnitudeMeanFrequency")
        ## rename all column names based on the list col_tidy
        colnames (dt_subset) <- col_tidy
        
        ## Group data by Activity and Subject and calculate the AVG of each variable
        dt_subset_grp_avg<-group_by(dt_subset,Activity, Subject)%>%summarise_each(funs(mean))
        
        ## Write the data to a csv
        write.csv (dt_subset_grp_avg, file="UCI HAR Dataset Tidy AVG.txt", row.names=FALSE)

}