


## tasks to clean up the data 
(1) Merges the training and the test sets to create one data set.
(2) Obtain the name of the columns of data set "X" from feature.txt file and assign them as name of "X"
(3) Extracts only the measurements on the mean and standard deviation for each measurement.
(4) Merges the training and the test Training labels to create one label set.
(5) Merges the training and the test Training subjects to create one subject set. 
(6) Rewrites X with "activity" and "subject" as two additional columns
(7) Make descriptive variable names by avaoiding "()", "." and "-" programatically
(8) Get mean for each variable based on subject and activity
(9) reshape (melt) the data table to create tidy data with only four columns
(10) the column names of the final tidy data are: "activity","subject","variable","mean".
(11) write the data.frame as a csv file

## Variables of the tidy data
### there ae 5 unique activities in the activity column column (in output.csv). See the following list.
LAYING             
SITTING           
STANDING          
WALKING           
WALKING_DOWNSTAIRS 
WALKING_UPSTAIRS  

### there ae 30 (1 to 30) subjects in "subject" column.

### there are 66 uniques itesm in the "variable" column (in output.csv). See the following list.
tBodyAccmeanX	   
tBodyAccmeanY	   
tBodyAccmeanZ	   
tBodyAccstdX	   
tBodyAccstdY	   
tBodyAccstdZ	   
tGravityAccmeanX	   
tGravityAccmeanY	   
tGravityAccmeanZ	   
tGravityAccstdX	   
tGravityAccstdY	   
tGravityAccstdZ	   
tBodyAccJerkmeanX	   
tBodyAccJerkmeanY	   
tBodyAccJerkmeanZ	   
tBodyAccJerkstdX	   
tBodyAccJerkstdY	   
tBodyAccJerkstdZ	   
tBodyGyromeanX	   
tBodyGyromeanY	   
tBodyGyromeanZ	   
tBodyGyrostdX	   
tBodyGyrostdY	   
tBodyGyrostdZ	   
tBodyGyroJerkmeanX	   
tBodyGyroJerkmeanY	   
tBodyGyroJerkmeanZ	   
tBodyGyroJerkstdX	   
tBodyGyroJerkstdY	   
tBodyGyroJerkstdZ	   
tBodyAccMagmean	   
tBodyAccMagstd	   
tGravityAccMagmean	   
tGravityAccMagstd	   
tBodyAccJerkMagmean	   
tBodyAccJerkMagstd	   
tBodyGyroMagmean	   
tBodyGyroMagstd	   
tBodyGyroJerkMagmean	   
tBodyGyroJerkMagstd	   
fBodyAccmeanX	   
fBodyAccmeanY	   
fBodyAccmeanZ	   
fBodyAccstdX	   
fBodyAccstdY	   
fBodyAccstdZ	   
fBodyAccJerkmeanX	   
fBodyAccJerkmeanY	   
fBodyAccJerkmeanZ	   
fBodyAccJerkstdX	   
fBodyAccJerkstdY	   
fBodyAccJerkstdZ	   
fBodyGyromeanX	   
fBodyGyromeanY	   
fBodyGyromeanZ	   
fBodyGyrostdX	   
fBodyGyrostdY	   
fBodyGyrostdZ	   
fBodyAccMagmean	   
fBodyAccMagstd	   
fBodyBodyAccJerkMagmean	   
fBodyBodyAccJerkMagstd	   
fBodyBodyGyroMagmean	   
fBodyBodyGyroMagstd	   
fBodyBodyGyroJerkMagmean	   
fBodyBodyGyroJerkMagstd	 

### the "mean" column contains average of each variable for each activity and each subject.

