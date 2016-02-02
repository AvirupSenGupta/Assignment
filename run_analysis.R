#install packages that are not already installed
listofPackages <- c("stringr","downloader","reshape","data.table")
newPackages <- listofPackages[!(listofPackages %in% installed.packages()[,"Package"])]
if(length(newPackages)) install.packages(newPackages)
#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
# Call libraries
library(stringr)
library(reshape)
library(downloader)
library(data.table)
#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

# set working directory. The working directory will the local repo directory.
setwd(getwd())

# the character string naming the URL of a resource to be downloaded.
url = "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
# Destination directory
destfile = "UCIHARDataset.zip"
#download the data and save it as a local copy
download(url, dest = destfile, mode="wb")
#Unzip the files
con1 <- unzip(destfile,list=TRUE)
for(i in 1:nrow(con1))
{
	unzip(destfile, files=con1$Name[i], exdir = getwd(), overwrite=TRUE) 
}

# delete the zipfile
file.remove(destfile)
#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
# set UCI HAR Dataset as the working directory now
setwd("UCI HAR Dataset")
#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
# Merges the training and the test sets to create one data set. (Question 1)
X = rbind(read.table("train/X_train.txt", header=FALSE), read.table("test/X_test.txt", header=FALSE))
#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
# Obtain the name of the columns of data set "X" from feature.txt file and assign them as name of "X" 
names(X) = as.character(read.table("features.txt", header = FALSE)[,2])

# Extracts only the measurements on the mean and standard deviation for each measurement.(Question 2)
# I created a new variable called SubX to store this
X = X[,setdiff(grep("mean()|std()", names(X)), grep("meanFreq()", names(X)))]
#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

# Merges the training and the test Training labels to create one label set.
Y = rbind(read.table("train/Y_train.txt", header=FALSE), read.table("test/Y_test.txt", header=FALSE))
activity = read.table("activity_labels.txt")
nameVals = NULL
for(i in 1:nrow(activity))
{
        nameVals[Y == activity[i,1]] = as.character(activity[i,2])
}
#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

# Merges the training and the test Training subjects to create one subject set. 
subjects =  rbind(read.table("train/subject_train.txt", header=FALSE), 
                  read.table("test/subject_test.txt", header=FALSE))
# Rewrites X with "activity" and "subject" as two additional columns (Question 3)
DataSet = data.frame(activity = as.factor(nameVals), subject = subjects, X)
colnames(DataSet)[1:2] = c("activity", "subject")
#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

# Get the colomn names from the dataset
names.dataset <- c("activity", "subject", names(X))
# Remove the '()', '-' and '.' from all the names
names.dataset <- gsub("\\(\\)", "", names.dataset)
names.dataset <- gsub("-", "", names.dataset)
names.dataset <- gsub(".", "", names.dataset)
# Change all label characters to lowercase
names.dataset <- tolower(names.dataset)
#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
# Update all column names in the dataset
names(DataSet) <- names.dataset
#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
# convert it as data table
DataSet = data.table(DataSet)
# set the key columns of the data frame
keycols <- c("activity", "subject")
setkeyv(DataSet, keycols)
# Get mean for each variable based on subject and activity
Result = as.data.frame.matrix(DataSet[, lapply(.SD,mean), by = key(DataSet)])
# write the output as a csv file
write.table(Result, "Output.txt", row.names = FALSE, sep = " ")
#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
