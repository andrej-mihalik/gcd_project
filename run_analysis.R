# load libraries
library(LaF)
library(ffbase)
library(reshape2)

# define filehandles for test and train data
har.test.x.file <- 'UCI HAR Dataset/test/X_test.txt'
har.train.x.file <- 'UCI HAR Dataset/train/X_train.txt'
har.test.y.file <- 'UCI HAR Dataset/test/y_test.txt'
har.train.y.file <- 'UCI HAR Dataset/train/y_train.txt'
har.test.subjects.file <- 'UCI HAR Dataset/test/subject_test.txt'
har.train.subjects.file <- 'UCI HAR Dataset/train/subject_train.txt'
har.activity.labels.file <- 'UCI HAR Dataset/activity_labels.txt'
har.variable.labels.file <- 'UCI HAR Dataset/features.txt'

# load data
har.test.x.laf <- laf_open_fwf(har.test.x.file,column_widths=rep(16,561),column_types=rep('numeric',561))
har.test.x.ffdf <- laf_to_ffdf(har.test.x.laf)
har.test.x <- as.data.frame(har.test.x.ffdf)
har.test.y <- read.csv(har.test.y.file,header=FALSE)
har.test.subjects <- read.csv(har.test.subjects.file,header=FALSE)

har.train.x.laf <- laf_open_fwf(har.train.x.file,column_widths=rep(16,561),column_types=rep('numeric',561))
har.train.x.ffdf <- laf_to_ffdf(har.train.x.laf)
har.train.x <- as.data.frame(har.train.x.ffdf)
har.train.y <- read.csv(har.train.y.file,header=FALSE)
har.train.subjects <- read.csv(har.train.subjects.file,header=FALSE)

har.activity.labels <- read.csv(har.activity.labels.file,header=FALSE,sep=' ',col.names=c('code','label'))
har.variable.labels <- read.csv(har.variable.labels.file,header=FALSE, sep=' ')

# merge subject ids, dependent and independet variables
har.test <- cbind(har.test.subjects,har.test.y,har.test.x)
har.train <- cbind(har.train.subjects,har.train.y,har.train.x)

# merge train and test variables
har <- rbind(har.test, har.train)

# add variable labels to the data set
colnames(har) <- c('subject','activity',as.vector(har.variable.labels[,2]))

# extract only the mean and standard deviation for each measurement
har <- har[c('subject','activity',grep('mean',colnames(har),fixed=TRUE,value=TRUE),grep('std',colnames(har),fixed=TRUE,value=TRUE))]

# apply descriptive activity labels
activity.mapping <- vector()
activity.mapping <- har.activity.labels$label
har$activity <- activity.mapping[har$activity]

# create mappings for variable names
variable.mapping.measures <- vector()
variable.mapping.measures["activity"]                 <-  'activity'
variable.mapping.measures["fBodyAcc"]                 <-  'AccelerationSignalFrequency'
variable.mapping.measures["fBodyAccJerk"]             <-  'AccelerationJerkSignalFrequency'
variable.mapping.measures["fBodyAccMag"]              <-  'MagnitudeOfAccelerationSignalFrequency'
variable.mapping.measures["fBodyBodyAccJerkMag"]      <-  'MagnitudeOfBodyAccelerationJerkSignalFrequency'
variable.mapping.measures["fBodyBodyGyroJerkMag"]     <-  'MagnitudeOfBodyGyroscopicJerkSignalFrequency'
variable.mapping.measures["fBodyBodyGyroMag"]         <-  'MagnitudeOfBodyGyroscopicSignalFrequency'
variable.mapping.measures["fBodyGyro"]                <-  'GyroscopicSignalFrequency'
variable.mapping.measures["subject"]                  <-  'subject'
variable.mapping.measures["tBodyAcc"]                 <-  'AccelerationSignalTime'
variable.mapping.measures["tBodyAccJerk"]             <-  'AccelerationJerkSignalTime'
variable.mapping.measures["tBodyAccJerkMag"]          <-  'MagnitudeOfAccelerationJerkSignalTime'
variable.mapping.measures["tBodyAccMag"]              <-  'MagnitudeOfAccelerationSignalTime'
variable.mapping.measures["tBodyGyro"]                <-  'GyroscopicSignalTime'
variable.mapping.measures["tBodyGyroJerk"]            <-  'GyroscopicJerkSignalTime'
variable.mapping.measures["tBodyGyroJerkMag"]         <-  'MagnitudeOfGyroscopicJerkSignalTime'
variable.mapping.measures["tBodyGyroMag"]             <-  'MagnitudeOfGyroscopicSignalTime'
variable.mapping.measures["tGravityAcc"]              <-  'GravityAccelerationSignalTime'
variable.mapping.measures["tGravityAccMag"]           <-  'MagnitudeOfGravityAccelerationSignalTime'

variable.mapping.statistics <- vector()
variable.mapping.statistics["mean()"]                 <-  'meanOf'
variable.mapping.statistics["meanFreq()"]             <-  'meanFrequencyOf'
variable.mapping.statistics["std()"]                  <-  'standardDeviationOf'

variable.mapping.directions <- vector()
variable.mapping.directions["X"]                      <-  'InXDirection'
variable.mapping.directions["Y"]                      <-  'InYDirection'
variable.mapping.directions["Z"]                      <-  'InZDirection'

# use descriptive variable names 
variable.names <- colsplit(colnames(har), '-',names=c('measure','statistics','direction'))
descriptive.variable.names <- gsub('NA','',paste(variable.mapping.statistics[variable.names[,2]],variable.mapping.measures[variable.names[,1]],variable.mapping.directions[variable.names[,3]],sep=""),fixed=TRUE)
colnames(har) <- descriptive.variable.names

# aggregate by calculating mean for each subject and activity
har.tidy <- aggregate(. ~ subject + activity, data=har,mean)

# save the tidy data set
write.table(har,file="tidy_har.txt",row.names=FALSE)
