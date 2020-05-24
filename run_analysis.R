#reading data
train <- read.table("train/X_train.txt")
subject_train <- read.table("train/subject_train.txt", col.names = "subject")
activity_train <- read.table("train/y_train.txt", col.names = "activity")
test <- read.table("test/X_test.txt")
subject_test <- read.table("test/subject_test.txt", col.names = "subject")
activity_test <- read.table("test/y_test.txt", col.names = "activity")

#step1: Merges the training and the test sets to create one data set.
new_train <- cbind(train, activity_train, subject_train) #Combine the training data with the subject and the activity data
new_test <- cbind(test, activity_test, subject_test) #Do the same thing to the test data as the training data.
mergeddata <- merge(new_train, new_test, all = TRUE) #Merge the training and the test sets 

#step2: Extracts only the measurements on the mean and standard deviation for each measurement.
feature <- read.table("features.txt", row.names = 1)
mean_and_std <- grep("mean|std", feature[,1])#identify the variables of standard deviation and mean
data_step2 <- mergeddata[,c(mean_and_std, 562, 563)] #Extract only the measurements on the mean and standard deviation

#step3: Uses descriptive activity names to name the activities in the data set
labels <- read.table("activity_labels.txt")
activity <- labels[,2][data_step2$activity] #create vector of decriptive activity names
data_step2$activity <- activity

#step4: Appropriately labels the data set with descriptive variable names.
variables <- feature[mean_and_std,] #create vector of the variable names
library(stringr)
#convert variable names as decriptive one
variables <- str_replace_all(variables, pattern="std", replacement="standard-deviation")
variables <- str_replace_all(variables, pattern = "^t", replacement = "time-")
variables <- str_replace_all(variables, pattern = "^f", replacement = "freq")
variables <- str_replace_all(variables, pattern = "Mag", replacement = "-Magnitude")
variables <- str_replace_all(variables, pattern = "Acc", replacement = "-Acceleration")
variables <- str_replace_all(variables, pattern = "Gyro", replacement = "-Gyroscope")
variables <- str_replace_all(variables, pattern = "Jerk", replacement = "-Jerksignal")
#conversion is complete
names(data_step2) <- c(variables, "activity", "subject") # Change the variable names on the data set

#step5:From the data set in step 4, creates a second, independent tidy data set 
#with the average of each variable for each activity and each subject.
dataset <- aggregate(. ~activity + subject, data_step2, mean) # create new tidy data set

write.csv(dataset, "tidydata.csv") #output the new tidy dataset.
