UCI HAR Tidy Dataset Codebook
=============================

## UCI HAR
The tidy_har.txt is a dataset created specifically to meet the tidy data principles from the UCI HAR Data. The original data set can be downloaded at https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip . For more information about the project, please, read: http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones .

## Variables
The tidy data set has been created from the original dataset by joining the training and test data and transforming it so that it contains

### Subject
The measurements have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each subject has been assigned a unique ID.

### Activity
Each observation corresponds to one subject performing one of the following activities:
- WALKING
- WALKING_UPSTAIRS
- WALKING_DOWNSTAIRS
- SITTING
- STANDING
- LAYING

### Measurements
The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then sampled in fixed-width sliding windows of 2.56 sec and 50% overlap (128 readings/window). The sensor acceleration signal, which has gravitational and body motion components, was separated using a Butterworth low-pass filter into body acceleration and gravity. The gravitational force is assumed to have only low frequency components, therefore a filter with 0.3 Hz cutoff frequency was used. From each window, a vector of features was obtained by calculating variables from the time and frequency domain. See 'features_info.txt' for more details. 

For each record it is provided:
- Triaxial acceleration from the accelerometer (total acceleration) and the estimated body acceleration.
- Triaxial Angular velocity from the gyroscope. 
- A 561-feature vector with time and frequency domain variables. 
- Its activity label. 
- An identifier of the subject who carried out the experiment.

#### Units
All measured features are normalized and bounded within [-1,1]

#### Features
For each activity and subject a mean of all observations has been calculated for following measurement features:
- meanOfAccelerationSignalTimeInXDirection
- meanOfAccelerationSignalTimeInYDirection
- meanOfAccelerationSignalTimeInZDirection
- meanOfGravityAccelerationSignalTimeInXDirection
- meanOfGravityAccelerationSignalTimeInYDirection
- meanOfGravityAccelerationSignalTimeInZDirection
- meanOfAccelerationJerkSignalTimeInXDirection
- meanOfAccelerationJerkSignalTimeInYDirection
- meanOfAccelerationJerkSignalTimeInZDirection
- meanOfGyroscopicSignalTimeInXDirection
- meanOfGyroscopicSignalTimeInYDirection
- meanOfGyroscopicSignalTimeInZDirection
- meanOfGyroscopicJerkSignalTimeInXDirection
- meanOfGyroscopicJerkSignalTimeInYDirection
- meanOfGyroscopicJerkSignalTimeInZDirection
- meanOfMagnitudeOfAccelerationSignalTime
- meanOfMagnitudeOfGravityAccelerationSignalTime
- meanOfMagnitudeOfAccelerationJerkSignalTime
- meanOfMagnitudeOfGyroscopicSignalTime
- meanOfMagnitudeOfGyroscopicJerkSignalTime
- meanOfAccelerationSignalFrequencyInXDirection
- meanOfAccelerationSignalFrequencyInYDirection
- meanOfAccelerationSignalFrequencyInZDirection
- meanFrequencyOfAccelerationSignalFrequencyInXDirection
- meanFrequencyOfAccelerationSignalFrequencyInYDirection
- meanFrequencyOfAccelerationSignalFrequencyInZDirection
- meanOfAccelerationJerkSignalFrequencyInXDirection
- meanOfAccelerationJerkSignalFrequencyInYDirection
- meanOfAccelerationJerkSignalFrequencyInZDirection
- meanFrequencyOfAccelerationJerkSignalFrequencyInXDirection
- meanFrequencyOfAccelerationJerkSignalFrequencyInYDirection
- meanFrequencyOfAccelerationJerkSignalFrequencyInZDirection
- meanOfGyroscopicSignalFrequencyInXDirection
- meanOfGyroscopicSignalFrequencyInYDirection
- meanOfGyroscopicSignalFrequencyInZDirection
- meanFrequencyOfGyroscopicSignalFrequencyInXDirection
- meanFrequencyOfGyroscopicSignalFrequencyInYDirection
- meanFrequencyOfGyroscopicSignalFrequencyInZDirection
- meanOfMagnitudeOfAccelerationSignalFrequency
- meanFrequencyOfMagnitudeOfAccelerationSignalFrequency
- meanOfMagnitudeOfBodyAccelerationJerkSignalFrequency
- meanFrequencyOfMagnitudeOfBodyAccelerationJerkSignalFrequency
- meanOfMagnitudeOfBodyGyroscopicSignalFrequency
- meanFrequencyOfMagnitudeOfBodyGyroscopicSignalFrequency
- meanOfMagnitudeOfBodyGyroscopicJerkSignalFrequency
- meanFrequencyOfMagnitudeOfBodyGyroscopicJerkSignalFrequency
- standardDeviationOfAccelerationSignalTimeInXDirection
- standardDeviationOfAccelerationSignalTimeInYDirection
- standardDeviationOfAccelerationSignalTimeInZDirection
- standardDeviationOfGravityAccelerationSignalTimeInXDirection
- standardDeviationOfGravityAccelerationSignalTimeInYDirection
- standardDeviationOfGravityAccelerationSignalTimeInZDirection
- standardDeviationOfAccelerationJerkSignalTimeInXDirection
- standardDeviationOfAccelerationJerkSignalTimeInYDirection
- standardDeviationOfAccelerationJerkSignalTimeInZDirection
- standardDeviationOfGyroscopicSignalTimeInXDirection
- standardDeviationOfGyroscopicSignalTimeInYDirection
- standardDeviationOfGyroscopicSignalTimeInZDirection
- standardDeviationOfGyroscopicJerkSignalTimeInXDirection
- standardDeviationOfGyroscopicJerkSignalTimeInYDirection
- standardDeviationOfGyroscopicJerkSignalTimeInZDirection
- standardDeviationOfMagnitudeOfAccelerationSignalTime
- standardDeviationOfMagnitudeOfGravityAccelerationSignalTime
- standardDeviationOfMagnitudeOfAccelerationJerkSignalTime
- standardDeviationOfMagnitudeOfGyroscopicSignalTime
- standardDeviationOfMagnitudeOfGyroscopicJerkSignalTime
- standardDeviationOfAccelerationSignalFrequencyInXDirection
- standardDeviationOfAccelerationSignalFrequencyInYDirection
- standardDeviationOfAccelerationSignalFrequencyInZDirection
- standardDeviationOfAccelerationJerkSignalFrequencyInXDirection
- standardDeviationOfAccelerationJerkSignalFrequencyInYDirection
- standardDeviationOfAccelerationJerkSignalFrequencyInZDirection
- standardDeviationOfGyroscopicSignalFrequencyInXDirection
- standardDeviationOfGyroscopicSignalFrequencyInYDirection
- standardDeviationOfGyroscopicSignalFrequencyInZDirection
- standardDeviationOfMagnitudeOfAccelerationSignalFrequency
- standardDeviationOfMagnitudeOfBodyAccelerationJerkSignalFrequency
- standardDeviationOfMagnitudeOfBodyGyroscopicSignalFrequency
- standardDeviationOfMagnitudeOfBodyGyroscopicJerkSignalFrequency