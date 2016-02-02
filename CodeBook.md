#### Tasks to clean up the data
*(1) Merges the training and the test sets to create one data set. 
*(2) Obtain the name of the columns of data set "X" from feature.txt file and assign them as name of "X" 
*(3) Extracts only the measurements on the mean and standard deviation for each measurement. 
*(4) Merges the training and the test Training labels to create one label set. 
*(5) Merges the training and the test Training subjects to create one subject set. 
*(6) Rewrites X with "activity" and "subject" as two additional columns 
*(7) Make descriptive variable names by avaoiding "()", "." and "-" programatically 
*(8) Get mean for each variable based on subject and activity 
*(9) reshape (melt) the data table to create tidy data with only four columns 
*(10) the column names of the final tidy data are: "activity","subject","variable","mean". 
*(11) write the data.frame as a text file

#### Variables of the tidy data

Variable                        | Description
--------------------------------|--------------------
activity	                      |	Performed activity (values laying, sitting, standing, walking, walking downstairs, walking upstairs)
subject	                        |	Identifier for the volunteer (values 1-30)
tbodyaccmeanx	                  |	Mean of *time.bodyacc.mean.x* variable for each *subject/activity* 
tbodyaccmeany	                  |	Mean of *time.bodyacc.mean.y* variable for each *subject/activity* 
tbodyaccmeanz	                  |	Mean of *time.bodyacc.mean.z* variable for each *subject/activity* 
tbodyaccstdx	                  |	Mean of *time.bodyacc.std.x* variable for each *subject/activity* 
tbodyaccstdy	                  |	Mean of *time.bodyacc.std.y* variable for each *subject/activity* 
tbodyaccstdz	                  |	Mean of *time.bodyacc.std.z* variable for each *subject/activity* 
tgravityaccmeanx	              |	Mean of *time.gravityacc.mean.x* variable for each *subject/activity* 
tgravityaccmeany	        |	Mean of *time.gravityacc.mean.y* variable for each *subject/activity* 
tgravityaccmeanz	        |	Mean of *time.gravityacc.mean.z* variable for each *subject/activity* 
tgravityaccstdx	                |	Mean of *time.gravityacc.std.x* variable for each *subject/activity* 
tgravityaccstdy	                |	Mean of *time.gravityacc.std.y* variable for each *subject/activity* 
tgravityaccstdz	                |	Mean of *time.gravityacc.std.z* variable for each *subject/activity* 
tbodyaccjerkmeanx	        |	Mean of *time.bodyaccjerk.mean.x* variable for each *subject/activity* 
tbodyaccjerkmeany	        |	Mean of *time.bodyaccjerk.mean.y* variable for each *subject/activity* 
tbodyaccjerkmeanz	        |	Mean of *time.bodyaccjerk.mean.z* variable for each *subject/activity* 
tbodyaccjerkstdx	        |	Mean of *time.bodyaccjerk.std.x* variable for each *subject/activity* 
tbodyaccjerkstdy	        |	Mean of *time.bodyaccjerk.std.y* variable for each *subject/activity* 
tbodyaccjerkstdz	        |	Mean of *time.bodyaccjerk.std.z* variable for each *subject/activity* 
tbodygyromeanx	                |	Mean of *time.bodygyro.mean.x* variable for each *subject/activity* 
tbodygyromeany	                |	Mean of *time.bodygyro.mean.y* variable for each *subject/activity* 
tbodygyromeanz	                |	Mean of *time.bodygyro.mean.z* variable for each *subject/activity* 
tbodygyrostdx	                |	Mean of *time.bodygyro.std.x* variable for each *subject/activity* 
tbodygyrostdy	                |	Mean of *time.bodygyro.std.y* variable for each *subject/activity* 
tbodygyrostdz	                |	Mean of *time.bodygyro.std.z* variable for each *subject/activity* 
tbodygyrojerkmeanx	        |	Mean of *time.bodygyrojerk.mean.x* variable for each *subject/activity* 
tbodygyrojerkmeany	        |	Mean of *time.bodygyrojerk.mean.y* variable for each *subject/activity* 
tbodygyrojerkmeanz	        |	Mean of *time.bodygyrojerk.mean.z* variable for each *subject/activity* 
tbodygyrojerkstdx	        |	Mean of *time.bodygyrojerk.std.x* variable for each *subject/activity* 
tbodygyrojerkstdy	        |	Mean of *time.bodygyrojerk.std.y* variable for each *subject/activity* 
tbodygyrojerkstdz	        |	Mean of *time.bodygyrojerk.std.z* variable for each *subject/activity* 
tbodyaccmagmean	                |	Mean of *time.bodyaccmag.mean* variable for each *subject/activity* 
tbodyaccmagstd	                |	Mean of *time.bodyaccmag.std* variable for each *subject/activity* 
tgravityaccmagmean	        |	Mean of *time.gravityaccmag.mean* variable for each *subject/activity* 
tgravityaccmagstd	        |	Mean of *time.gravityaccmag.std* variable for each *subject/activity* 
tbodyaccjerkmagmean	        |	Mean of *time.bodyaccjerkmag.mean* variable for each *subject/activity* 
tbodyaccjerkmagstd	        |	Mean of *time.bodyaccjerkmag.std* variable for each *subject/activity* 
tbodygyromagmean	        |	Mean of *time.bodygyromag.mean* variable for each *subject/activity* 
tbodygyromagstd	                |	Mean of *time.bodygyromag.std* variable for each *subject/activity* 
tbodygyrojerkmagmean	        |	Mean of *time.bodygyrojerkmag.mean* variable for each *subject/activity* 
tbodygyrojerkmagstd	        |	Mean of *time.bodygyrojerkmag.std* variable for each *subject/activity* 
fbodyaccmeanx	                |	Mean of *freq.bodyacc.mean.x* variable for each *subject/activity* 
fbodyaccmeany	                |	Mean of *freq.bodyacc.mean.y* variable for each *subject/activity* 
fbodyaccmeanz	                |	Mean of *freq.bodyacc.mean.z* variable for each *subject/activity* 
fbodyaccstdx	                |	Mean of *freq.bodyacc.std.x* variable for each *subject/activity* 
fbodyaccstdy	                |	Mean of *freq.bodyacc.std.y* variable for each *subject/activity* 
fbodyaccstdz	                |	Mean of *freq.bodyacc.std.z* variable for each *subject/activity* 
fbodyaccjerkmeanx	        |	Mean of *freq.bodyaccjerk.mean.x* variable for each *subject/activity* 
fbodyaccjerkmeany	        |	Mean of *freq.bodyaccjerk.mean.y* variable for each *subject/activity* 
fbodyaccjerkmeanz	        |	Mean of *freq.bodyaccjerk.mean.z* variable for each *subject/activity* 
fbodyaccjerkstdx	        |	Mean of *freq.bodyaccjerk.std.x* variable for each *subject/activity* 
fbodyaccjerkstdy	        |	Mean of *freq.bodyaccjerk.std.y* variable for each *subject/activity* 
fbodyaccjerkstdz	        |	Mean of *freq.bodyaccjerk.std.z* variable for each *subject/activity* 
fbodygyromeanx	                |	Mean of *freq.bodygyro.mean.x* variable for each *subject/activity* 
fbodygyromeany	                |	Mean of *freq.bodygyro.mean.y* variable for each *subject/activity* 
fbodygyromeanz	                |	Mean of *freq.bodygyro.mean.z* variable for each *subject/activity* 
fbodygyrostdx	                |	Mean of *freq.bodygyro.std.x* variable for each *subject/activity* 
fbodygyrostdy	                |	Mean of *freq.bodygyro.std.y* variable for each *subject/activity* 
fbodygyrostdz	                |	Mean of *freq.bodygyro.std.z* variable for each *subject/activity* 
fbodyaccmagmean	                |	Mean of *freq.bodyaccmag.mean* variable for each *subject/activity* 
fbodyaccmagstd	                |	Mean of *freq.bodyaccmag.std* variable for each *subject/activity* 
fbodybodyaccjerkmagmean	        |	Mean of *freq.bodybodyaccjerkmag.mean* variable for each *subject/activity* 
fbodybodyaccjerkmagstd	        |	Mean of *freq.bodybodyaccjerkmag.std* variable for each *subject/activity* 
fbodybodygyromagmean	        |	Mean of *freq.bodybodygyromag.mean* variable for each *subject/activity* 
fbodybodygyromagstd	        |	Mean of *freq.bodybodygyromag.std* variable for each *subject/activity* 
fbodybodygyrojerkmagmean	|	Mean of *freq.bodybodygyrojerkmag.mean* variable for each *subject/activity* 
fbodybodygyrojerkmagstd	        |	Mean of *freq.bodybodygyrojerkmag.std* variable for each *subject/activity* 

#### Units
* The units used for the accelerations (total and body) are 'g's (gravity of earth -> 9.80665 m/seg2).
* The gyroscope units are rad/seg.
