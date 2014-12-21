 Getting and Cleaning Data Course Project
=========================================

The run_analysis.R sequentially performs following operations:

* filehandles are defined for the training and test subsets of the Human Activity Recognition data as well as files containing the variable descriptions and activity labels
* data is loaded using these filehandles 
* for both subsets (test and training), subject id, measurement and activity data is merged into one data frame
* test and training data is consolidated into one data frame
* variable names are assigned to columns using the features.txt file
* from all available variables only those containing information on means and standard deviations are filtered
* the activity variable is recoded so that it includes descriptive activity labels instead of codes
* descriptive variable names are assigned to the variables which remained
* all observations are grouped by subject id and activity, all measurements are aggregated using the mean function
* the resulting wide tidy dataset is saved as tidy_har.txt
