## COURSERA Class:  Getting and Cleaning Data
## Course Project


##########################################
## GET THE DATA

# download data file
if (!file.exists("getdata_project.zip")){
f <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip";
download.file(f,"getdata_project.zip",method="libcurl")}

# unzip data file
if (!file.exists("UCI HAR Dataset")){
unzip("getdata_project.zip")}



##########################################
## READ THE DATA

X_train <- read.table("./UCI HAR Dataset/train/X_train.txt")
y_train <- read.table("./UCI HAR Dataset/train/y_train.txt")
subject_train <- read.table("./UCI HAR Dataset/train/subject_train.txt")

X_test <- read.table("./UCI HAR Dataset/test/X_test.txt")
y_test <- read.table("./UCI HAR Dataset/test/y_test.txt")
subject_test <- read.table("./UCI HAR Dataset/test/subject_test.txt")

feature_labels <- read.table("./UCI HAR Dataset/features.txt",stringsAsFactors=FALSE)
activity_labels <- read.table("./UCI HAR Dataset/activity_labels.txt",stringsAsFactors=FALSE)


##########################################
## MERGE THE DATASETS

# combine the train tables by columns
dataTrain <- cbind(subject_train, y_train, X_train)

# combine the test tables by columns
dataTest <- cbind(subject_test, y_test, X_test)

# append test rows to train rows
dataMerged <- rbind(dataTrain, dataTest)

# apply labels to the columns
colnames(dataMerged) <- c("subject", "activity", feature_labels[,2])


##########################################
## EXTRACT MEAN AND STD COLUMNS

my_features <- feature_labels[grep("mean\\(\\)|std\\(\\)", feature_labels$V2),2]
dataMerged <- subset(dataMerged, select = c("subject", "activity", my_features))

##########################################
## APPLY DESCRIPTIVE NAMES TO ACTIVITIES

dataMerged$activity <- factor(dataMerged$activity, levels = activity_labels[,1], labels = activity_labels[,2]) 


##########################################
## CREATE DATA SET WITH AVERAGE OF EACH VARIABLE FOR EACH SUBJECT-ACTIVITY

library(reshape2)
dataMelt <- melt(dataMerged, id = c("subject", "activity"))
tidyData <- dcast(dataMelt, subject + activity ~ variable, mean)


##########################################
## CREATE OUTPUT FILE

write.table(tidyData, "tidydata.txt", quote=FALSE, row.name=FALSE)






