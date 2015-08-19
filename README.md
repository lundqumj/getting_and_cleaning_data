## Coursera Getting and Cleaning Data Course Project

This project is designed to use the R programing language to transform a number of datasets into a single "tidy data" data frame.


####DATA SOURCE  

The data files for this project are located University of California Irvine Machine Learning Repository.

The raw data files can be downloaded using this URL:  
<https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip>

The data dest description can be found here: 
<http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones>  
  


####INPUT FILES  

When the compressed .zip file is unzipped it will create a subdirectory, "UCI HAR Dataset" in your present working directory.  

Under the "UCI HAR Dataset" directory there are two more subdirectories: "train" and "test".  

The "train" and "test" directories each contain three DATA files (ex. X_train.txt, y_train.txt, and subject_train.txt).  

Additionally, there are two LABEL files in the "UCI HAR Dataset" directory that contain the text descriptions for the "activities" and "features" (a.k.a. measures).  

Altogether, you will use the read.table() function to read 8 files into 8 data frames.  
  


####MERGING FILES  
In order to generate the tidydata.txt output file you must first merge the input files into a single data frame.  

Your first task is to merge the three DATA files into a single file.  The "subject" file becomes the first column.  The "y" file becomes the second colum. The remaining 561 columns come from the "X" file.  The easiest way to complete this step is to use the cbind() function.  

The second task is to merge the two data frames from the previous step into a single data frame.  The simplest way to complete this step is to use the rbind() function to append the "test" records to the "train" record set.  

Once you have a single data frame you can apply the column names.  The first two column names are "subject" and "activity".  The remaining 561 columns are taken from the features.txt file.

The "activities" column in your data frame is an integer field that contains the "activity-key".  You use the activity_labels.txt file to apply the activity description/label to the "activities" column in your data frame.  This is best done by converting the "activities" column from an integer to a factor.  
 

####SUB-SET THE DATA  
Of the 561 measures (features) you only need the 66 measures that contain "mean" or "std".  

Use the grep() function to get a list of "feature" lables that contain the strings "mean" or "std".  

Create a sub-set of your merged data frame that only includes the columns for "subject", "activity", and the 66 measures/features.  
  

####AGGREGATE THE DATA  
The last step before writing the output file is to aggregate the data.  

The objective is to provide the mean value for each of the measures (features) for each subject-activity combination.  Since there were 30 subjects participating in this study and each subject went through 6 activities, you will wind up with 180 subject-activity combinations.  

Your final output should consist of a single data frame composed of 180 records with 68 columns (variables).  
  

####PROCESSING THE DATA

In this Github Repository you will find a R script named run_analysis.R.  This script performs a series of steps that loads and transforms the raw data into a "tidy data" set.
Once data processing is complete the script writes the results to a file named "tidydata.txt".

The processing steps include the following.  
1)  Download the compressed .zip file from the UCI repository.  

2)  Unzip the compressed .zip file.  
- This creates a new directory named "UCI HAR Dataset" in the present working directory.  

3)  Load the raw data into memory.  
- There are two datasets:  "train" data and "test" data.  These datasets exist in separate subdirectories under the "UCI HAR Dataset" directory.  
- For each dataset there are three files: "X", "y", and "subject".  
- additionally there are two files containing the label names.  One file for activities (Walking, Standing, etc.) and one file with the names of the measures that were recorded in this study.  

4)  Once the data files are read into memeory the script merges the "test" files into one file and the "train" files into another.  It then merges these two files into a single dataset.  The label files are then applied to provide the merged dataset with column names.  

5)  The merged dataset is then reduced to only include measures (features) required in the final output file.  

6)  The subsetted dataset is then aggregated by subject-activity.  The mean value for each measure is calculated for each subject-activity combination.  
- there were 30 subjects participating in this study.  
- each subject went through 6 activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING).  
- the "tidy data" dataset, therefore, consists of 180 records (30 subjects X 6 activities) and the mean of the measures required for this project.  

7)  Finally, the R script writes the "tidy data" dataset to a text file in the present working directory.  
  





		

