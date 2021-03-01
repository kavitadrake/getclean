Author: Kavita Drake
Date: March 2021
Class: Getting and cleaning data in R, Coursera\
Class link: https://www.coursera.org/learn/data-cleaning/home/welcome
Github link: https://github.com/kavitadrake/getclean/

This assignment resulted in four files:
--README.md - this document
--CodeBook.md - a document which describes the various fields
--run_analysis.R - the R script which manipulates the original data
--finaldata.csv - the result of run_analysis.R

The source files for this assignment are located here:
https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip  

This zip file contains 'training' and 'testing' data for 30 subjects doing various
activities, such as walking and sitting. The x files contains the raw data from a set
of 10,000+ observations. The y files contains the list of the activities for all the 
observations, and the subject files contains a list of numbers 1:30 representing the
various subjects over all the observations. The activities are encoded with representative
numbers found in the included file features.txt.

The point of this assignment was to combine the training and testing data, the subject
information, and the activity information all in one file. The original data included
561 columns; the final file desired only the columns labeled 'mean' and 'std.' We were
then to calculate the mean/average for each of these columns for each subject and each
activity. 

The resulting file, finaldata.csv, has 88 columns with the subject number, activity
label, and 86 mean and std columns. 

The assignment text reads as follows:
"You will be required to submit: 1) a tidy data set as described below, 2) a link to a Github repository with your script for performing the analysis, and 3) a code book that describes the variables, the data, and any transformations or work that you performed to clean up the data called CodeBook.md. You should also include a README.md in the repo with your scripts. This repo explains how all of the scripts work and how they are connected."
"You should create one R script called run_analysis.R that does the following. 
1: Merges the training and the test sets to create one data set.
2: Extracts only the measurements on the mean and standard deviation for each measurement. 
3: Uses descriptive activity names to name the activities in the data set
4: Appropriately labels the data set with descriptive variable names. 
5: From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject."
