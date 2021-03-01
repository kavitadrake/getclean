library(dplyr) #The filter function from here is used.

path <- "C:/Users/poush/Documents/R/learning materials/getdatafinalproject/UCI HAR Dataset/"
ytrainfile <- file.path(path, "train", "y_train.txt")
ytestfile <- file.path(path, "test", "y_test.txt")
xtrainfile <- file.path(path, "train", "X_train.txt")
xtestfile <- file.path(path, "test", "X_test.txt")
subjecttrainfile <- file.path(path, "train", "subject_train.txt")
subjecttestfile <- file.path(path, "test", "subject_test.txt")
featuresfile <- file.path(path, "features.txt")

#From requirement 2: 
#"Extracts only the measurements on the mean and standard deviation for each measurement. "
#Not sure how else to make _86_ different activity measurements "descriptive"
#a la requirement 3:
#"Uses descriptive activity names to name the activities in the data set."
#Decided to just take out the random dashes, commas, and parentheses.
features <- read.table(featuresfile)
features <- filter(features, grepl("mean|Mean|std", features$V2))
featuresnames <- data.frame("colnames" = gsub("[,()-]", "", features$V2))
featuresnames <- lapply(featuresnames, tolower)
featurescols <- data.frame("desiredcolumns" = features$V1)
features <- cbind(featurescols, featuresnames)

#Get the actual data into our variables
ytraindata <- read.table(ytrainfile)
ytestdata <- read.table(ytestfile)
xtraindata <- read.table(xtrainfile)
xtestdata <- read.table(xtestfile)
subjecttraindata <- read.table(subjecttrainfile)
subjecttestdata <- read.table(subjecttestfile)

#Combine the train data and the test data into one dataset.
#From assignment requirement 1: "Merges the training and the test sets to create one data set."
ydata <- rbind(ytraindata, ytestdata)
xdata <- rbind(xtraindata, xtestdata)
subjectdata <- rbind(subjecttraindata, subjecttestdata)

#Giving it a more descriptive column name, a la requirement 4
#"Appropriately labels the data set with descriptive variable names."
ydata <- rename(ydata, "activitylabels" = V1)
subjectdata <- rename(subjectdata, "subjects" = V1) #Here too

#Taking out the desired column numbers from the features file, and the modified
#field names, and selecting out those columns from xdata and renaming it.
descolumns <- features$desiredcolumns
colnames <- features$colnames
newdata <- xdata %>% select(descolumns) %>% setNames(colnames)

#Combine the information from all three sources
alldata <- cbind(subjectdata, ydata, newdata)

#Initializing the table I'm about to write to.
finaldata <- table(1:88)

#Now the goal is to collapse all activitylabels and subjects to one each,
#Taking the average of each data point. So 6 levels each for subjects 1 - 30
#This is from requirement 5:
#"From the data set in step 4, creates a second, independent tidy data set with
#  the average of each variable for each activity and each subject."
for(i in 1:30) {
  filtereddata <- filter(alldata, subjects == i, activitylabels == 1)
  meandata <- colMeans(filtereddata) 
  meandata <- as.data.frame(t(meandata))
  finaldata <- rbind(finaldata, meandata)
}

for(i in 1:30) {
  filtereddata <- filter(alldata, subjects == i, activitylabels == 2)
  meandata <- colMeans(filtereddata) 
  meandata <- as.data.frame(t(meandata))
  finaldata <- rbind(finaldata, meandata)
}

for(i in 1:30) {
  filtereddata <- filter(alldata, subjects == i, activitylabels == 3)
  meandata <- colMeans(filtereddata) 
  meandata <- as.data.frame(t(meandata))
  finaldata <- rbind(finaldata, meandata)
}

for(i in 1:30) {
  filtereddata <- filter(alldata, subjects == i, activitylabels == 4)
  meandata <- colMeans(filtereddata) 
  meandata <- as.data.frame(t(meandata))
  finaldata <- rbind(finaldata, meandata)
}

for(i in 1:30) {
  filtereddata <- filter(alldata, subjects == i, activitylabels == 5)
  meandata <- colMeans(filtereddata) 
  meandata <- as.data.frame(t(meandata))
  finaldata <- rbind(finaldata, meandata)
}

for(i in 1:30) {
  filtereddata <- filter(alldata, subjects == i, activitylabels == 6)
  meandata <- colMeans(filtereddata) 
  meandata <- as.data.frame(t(meandata))
  finaldata <- rbind(finaldata, meandata)
}

#Take out the first row I added to initialize the table. Need to find out what
#the better way to do this is.
finaldata <- finaldata[-c(1), ]

#Attach allows me to refer to the columns by name
attach(finaldata)
finaldata <- finaldata[order(subjects, activitylabels),]
detach(finaldata)

#The following substitutions were taken from the key file 'activity_labels.txt'
#This refers to requirement 4:
#"Appropriately labels the data set with descriptive variable names."
ydata <- gsub(1, "walking", finaldata$activitylabels)
ydata <- gsub(2, "walkingupstairs", ydata)
ydata <- gsub(3, "walkingdownstairs", ydata)
ydata <- gsub(4, "sitting", ydata)
ydata <- gsub(5, "standing", ydata)
ydata <- gsub(6, "laying", ydata)
ydata <- cbind(ydata, finaldata)

#Taking out the original column that had the activity label numbers
ydata <- subset(ydata, select = -c(activitylabels))

#Renaming the new column, a la requirement 4.
names(ydata)[names(ydata) == 'ydata'] <- 'activitylevels'

#Switching the position of columns 1 and 2 since sorting by subject seems most intuitive.
ydata <- ydata[,c(2, 1, 3:88)]

write.csv(ydata, file="finaldata.csv", row.names=FALSE)