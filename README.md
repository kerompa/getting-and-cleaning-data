# Getting-and-cleaning-data
This repository is about the final course project on Coursera.  
This repo has readme.md, codebook.md, run_analysis.R, tidydata.txt.  
The codebook describes the variables and the data in tidydata.txt.  
Therefore, if you are not clear about the tidydata.txt, please refer the codebook.  
  
# run_analysis.R
This R file is for creating new tidy data set from the original one that you can get from  
https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip  
The original data set is an experimental data about physical activities. There are mainly two data sets: training and test data sets. If you want to know more about the original data, you can download the zip file from the url above and their README.txt explains more concretely.  
*The purpose of run_analysis.R is to create new data which is focusing on the values on the mean and standard deviation.*  
The file has 5 steps described below.  
1. Merges the training and the test sets to create one data set.  
2. Extracts only the measurements on the mean and standard deviation for each measurement.  
3. Uses descriptive activity names to name the activities in the data set.  
4. Appropriately labels the data set with descriptive variable names.  
5. From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.  
Note:  
*Before executing this file, you need to download the zip file and unzip it. Once you unzip the folder, then you need to set this folder as a working directory.*  
  
# tidydata.txt
This file is the final product of run_analysis.R  
The description about the variables is showed in codebook.md.
