#CODE BOOK
##Coursera Getting and Cleaning Data Course Project   
  

####VARIABLES

######subject  
- a group of 30 volunteers within an age bracket of 19-48 years  
- 70% of the volunteers was selected for generating the training data and 30% the test data

######activity 
-  Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) 

######remaining measures  
-  the sensor signals (accelerometer and gyroscope) captured 3-axial linear acceleration and 3-axial angular velocity  
    * tAcc-XYZ represent accelerometer readings  
    * tGyro-XYZ represent gyroscope readings  
-  prefix 't' represents time domain signals  
-  prefix 'f' represents frequency domain signals  
-  the acceleration signal was separated into body and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ)  
-  the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ)  
-  the magnitude of the three-dimensional signals were calculated using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag)  
-  the set of variables that were estimated from these signals include:  
    * mean(): Mean value  
    * std(): Standard deviation  
-  additional vectors obtained by averaging the signals in a signal window sample include:  
    * gravityMean
    * tBodyAccMean
    * tBodyAccJerkMean
    * tBodyGyroMean
    * tBodyGyroJerkMean


For further details about this dataset read the data set description from the UCI web page:
<http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones>


###OUTPUT FILE FORMAT

subject  
activity  
tBodyAcc.mean...X  
tBodyAcc.mean...Y  
tBodyAcc.mean...Z  
tBodyAcc.std...X  
tBodyAcc.std...Y  
tBodyAcc.std...Z  
tGravityAcc.mean...X  
tGravityAcc.mean...Y  
tGravityAcc.mean...Z  
tGravityAcc.std...X  
tGravityAcc.std...Y  
tGravityAcc.std...Z  
tBodyAccJerk.mean...X  
tBodyAccJerk.mean...Y  
tBodyAccJerk.mean...Z  
tBodyAccJerk.std...X  
tBodyAccJerk.std...Y  
tBodyAccJerk.std...Z  
tBodyGyro.mean...X  
tBodyGyro.mean...Y  
tBodyGyro.mean...Z  
tBodyGyro.std...X  
tBodyGyro.std...Y  
tBodyGyro.std...Z  
tBodyGyroJerk.mean...X  
tBodyGyroJerk.mean...Y  
tBodyGyroJerk.mean...Z  
tBodyGyroJerk.std...X  
tBodyGyroJerk.std...Y  
tBodyGyroJerk.std...Z  
tBodyAccMag.mean..  
tBodyAccMag.std..  
tGravityAccMag.mean..  
tGravityAccMag.std..  
tBodyAccJerkMag.mean..  
tBodyAccJerkMag.std..  
tBodyGyroMag.mean..  
tBodyGyroMag.std..  
tBodyGyroJerkMag.mean..  
tBodyGyroJerkMag.std..  
fBodyAcc.mean...X  
fBodyAcc.mean...Y  
fBodyAcc.mean...Z  
fBodyAcc.std...X  
fBodyAcc.std...Y  
fBodyAcc.std...Z  
fBodyAccJerk.mean...X  
fBodyAccJerk.mean...Y  
fBodyAccJerk.mean...Z  
fBodyAccJerk.std...X  
fBodyAccJerk.std...Y  
fBodyAccJerk.std...Z  
fBodyGyro.mean...X  
fBodyGyro.mean...Y  
fBodyGyro.mean...Z  
fBodyGyro.std...X  
fBodyGyro.std...Y  
fBodyGyro.std...Z  
fBodyAccMag.mean..  
fBodyAccMag.std..  
fBodyBodyAccJerkMag.mean..  
fBodyBodyAccJerkMag.std..  
fBodyBodyGyroMag.mean..  
fBodyBodyGyroMag.std..  
fBodyBodyGyroJerkMag.mean..  
fBodyBodyGyroJerkMag.std..  



