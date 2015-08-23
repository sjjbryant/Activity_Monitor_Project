# Activity_Monitor_Project
Project for Coursera Getting and Cleaning Data course manipulating smartphone positional and movement data.
## README


#Background: 

The project is to create a tidy data set from raw data from: 

https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

A full description is available at the site where the data was obtained:

http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

run_analysis.R performs transformations to the raw data :

1) Merges the training and the test sets to create one data set.
2) Extracts only the measurements on the mean and standard deviation for each measurement. 
3) Uses descriptive activity names to name the activities in the data set
4) Appropriately labels the data set with descriptive variable names. 
5) From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each        activity and each subject.


# Description of files:

1) mean_activity_data.txt    - average of means and standard deviations for each activity and subject 
2) codeBook.md - the codebook describes variables contained in the mean_activity_data.txt
3) run_analysis.R - script used to transform the data
4) readme.txt - description of steps performed to transform the data

# How was the data transformed

## Introduction: 

The goal was to produce a tidy data set of the average of both the mean and standard deviation features of the data. Since there were no features in the Inertial Signals sets that meet this criteria, they were excluded. The data was in two sets, test and train, that had to be combined in order to get all the data in one place for the analysis.

## Examine the data files

features.txt contains the feature variable names for each of 561 measurements
activity_labels contains descriptive names for each activity in the "y" files
The "test" and "train" folders each contain 3 files: subject, "x", and "y"
        "subject" files contain the Subject (1-30) data
        "x" files contains Measurement data for each feature
        "y" files contain Activity (1-6) data
 

## Create vectors to add to data

Features file read in and converted to vector

For each folder (test and train):
        subject and activity were read in and converted into vectors
        activities from activity_label were substituted into activity vector
        read data form "x" file using col.names and features vector
        add columns for subject and activity using vectors
        

## Combine the test and train data

merge data with all=TRUE since both are identical in structure


## Subset only features with mean or standard deviation information

create 3 dataframes using Select contains=mean or std and one of just subject and activity columns
combine back to single data frame with subject, activity, means, and standard deviations

## Modify feature names to make mean and standard deviation more clear 

melt by activity and subject
use gsub to alter feature labels

## recast into tidy data

use subject and activity by variable and mean

## create file

use write.table to output txt file

 
