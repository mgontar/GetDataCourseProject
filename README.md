# GetDataCourseProject
Getting and Cleaning Data course project by Maksym Gontar, max.gontar@gmail.com

## Description
This repository contains course project assignment for "Getting and Cleaning Data" course of Johns Hopkins University hosted on Coursera:  https://www.coursera.org/learn/data-cleaning

## Required data
The assignment work requires Human Activity Recognition Using Smartphones Data Set (HARUSDS) hosted on UC Irvine Machine Learning Repository:  http://archive.ics.uci.edu/ml/machine-learning-databases/00240/

## Files 
The repository contains following files:
* `README.md`: This text
* `run_analysis.R`: R code for assignment
* `data_final.txt`: Result tidy dataset with mean and sd measurements, subject and activity from both training and the test sets
* `data_avg.txt`: Result tidy dataset with the average of each variable for each activity and each subject, based on dataset stored in `data_final.txt`
* `CodeBook.md`: A code book that describes the variables, the data, and any transformations or work that was performed to clean up the data

## Code algorithm
Code in `run_analysis.R` file can be grouped in following steps:

1. setup variables, such as file names, column names, column types, column widths
2. reading data from HARUSDS files
3. combining data from different files and sets 
4. extracting data for mean() and std() measurements
5. assigning activity values as descriptive labels
6. formatting column names
7. saving final tidy dataset
8. calculating average for every measurement grouped by activity and subject
9. saving average tidy dataset

Also see code commentaries in `run_analysis.R`

## Required R packages
Code in run_analysis.R file requires following packages to run properly:
* LaF package for fast reading of large files with fixed column width
* Dplyr package for easy grouped average calculations
