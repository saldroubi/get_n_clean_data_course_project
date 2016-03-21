Codebook - Getting and cleaning Data Course Project 

File: tidy_data.txt
-------------------

activity_label 
	The type of activity being measured.  It can be on of the followings:
		WALKING
		WALKING_UPSTAIRS
		WALKING_DOWNSTAIRS
		SITTING
		STANDING
		LAYING
 
subject
	Each row identifies the subject who performed the activity for each window sample. 
	Its range is from 1 to 30. 

data_type
	Indicates if the row belongs to test data or train data. 
	1 means test data
	2 means train data. 

The following variables map to the original features names (or function values) in the original data set. 
The names were modified slightly due to limitation in R in naming variables.  For example a dash "-" is not 
allowed in R for a variable name. 
 
tBodyAcc_mean___X -> tBodyAcc-mean()-X
 
tBodyAcc_mean___Y -> tBodyAcc-mean()-Y
 
tBodyAcc_mean___Z -> tBodyAcc-mean()-Z
 
tBodyAcc_std___X ->tBodyAcc-std()-X
 
tBodyAcc_std___Y -> tBodyAcc-std()-Y
 
tBodyAcc_std___Z -> tBodyAcc-std()-Z
 
tGravityAcc_mean___X -> tGravityAcc-mean()-X
 
tGravityAcc_mean___Y -> tGravityAcc-mean()-Y
 
tGravityAcc_mean___Z ->tGravityAcc-mean()-Z
 
tGravityAcc_std___X -> tGravityAcc-std()-X
 
tGravityAcc_std___Y -> tGravityAcc-std()-Y
 
tGravityAcc_std___Z tGravityAcc-std()-Z
 
tBodyAccJerk_mean___X -> tBodyAccJerk-mean()-X
 
tBodyAccJerk_mean___Y -> tBodyAccJerk-mean()-Y
 
tBodyAccJerk_mean___Z -> tBodyAccJerk-mean()-Z
 
tBodyAccJerk_std___X -> tBodyAccJerk-std()-X
 
tBodyAccJerk_std___Y -> tBodyAccJerk-std()-Y
 
tBodyAccJerk_std___Z -> tBodyAccJerk-std()-Z
 
tBodyGyro_mean___X -> tBodyGyro-mean()-X
 
tBodyGyro_mean___Y -> tBodyGyro-mean()-Y
 
tBodyGyro_mean___Z -> tBodyGyro-mean()-Z
 
tBodyGyro_std___X -> tBodyGyro-std()-X
 
tBodyGyro_std___Y -> tBodyGyro-std()-Y
 
tBodyGyro_std___Z -> tBodyGyro-std()-Z
 
tBodyGyroJerk_mean___X -> tBodyGyroJerk-mean()-X
 
tBodyGyroJerk_mean___Y -> tBodyGyroJerk-mean()-Y
 
tBodyGyroJerk_mean___Z -> tBodyGyroJerk-mean()-Z
 
tBodyGyroJerk_std___X -> tBodyGyroJerk-std()-X
 
tBodyGyroJerk_std___Y -> tBodyGyroJerk-std()-Y
 
tBodyGyroJerk_std___Z -> tBodyGyroJerk-std()-Z
 
tBodyAccMag_mean__ -> tBodyAccMag-mean()
 
tBodyAccMag_std__ -> tBodyAccMag-std()
 
tGravityAccMag_mean__ -> tGravityAccMag-mean()
 
tGravityAccMag_std__ ->  tGravityAccMag-std()
 
tBodyAccJerkMag_mean__ -> tBodyAccJerkMag-mean()
 
tBodyAccJerkMag_std__ -> tBodyAccJerkMag-std()
 
tBodyGyroMag_mean__ -> tBodyGyroMag-mean()
 
tBodyGyroMag_std__ -> tBodyGyroMag-std()
 
tBodyGyroJerkMag_mean__ -> tBodyGyroJerkMag-mean()
 
tBodyGyroJerkMag_std__ -> tBodyGyroJerkMag-std()
 
fBodyAcc_mean___X -> fBodyAcc-mean()-X
 
fBodyAcc_mean___Y fBodyAcc-mean()-Y
 
fBodyAcc_mean___Z -> fBodyAcc-mean()-Z
 
fBodyAcc_std___X -> fBodyAcc-std()-X
 
fBodyAcc_std___Y -> fBodyAcc-std()-Y
 
fBodyAcc_std___Z -> fBodyAcc-std()-Z
 
fBodyAccJerk_mean___X -> fBodyAccJerk-mean()-X
 
fBodyAccJerk_mean___Y -> fBodyAccJerk-mean()-Y
 
fBodyAccJerk_mean___Z -> fBodyAccJerk-mean()-Z
 
fBodyAccJerk_std___X -> BodyAccJerk-std()-X
 
fBodyAccJerk_std___Y -> BodyAccJerk-std()-Y
 
fBodyAccJerk_std___Z -> BodyAccJerk-std()-Z
 
fBodyGyro_mean___X -> fBodyGyro-mean()-X
 
fBodyGyro_mean___Y -> fBodyGyro-mean()-Y
 
fBodyGyro_mean___Z -> fBodyGyro-mean()-Z
 
fBodyGyro_std___X -> fBodyGyro-std()-X
 
fBodyGyro_std___Y -> fBodyGyro-std()-Y
 
fBodyGyro_std___Z -> fBodyGyro-std()-Z
 
fBodyAccMag_mean__ -> fBodyAccMag-mean()
 
fBodyAccMag_std__ -> fBodyAccMag-std()
 
fBodyBodyAccJerkMag_mean__ -> fBodyBodyAccJerkMag-mean()
 
fBodyBodyAccJerkMag_std__ -> fBodyBodyAccJerkMag-std()
 
fBodyBodyGyroMag_mean__ -> BodyBodyGyroMag-mean()
 
fBodyBodyGyroMag_std__ -> fBodyBodyGyroMag-std()
 
fBodyBodyGyroJerkMag_mean__ -> fBodyBodyGyroJerkMag-mean()
 
fBodyBodyGyroJerkMag_std__ ->  fBodyBodyGyroJerkMag-std()


File: tidy_data.txt
-------------------

Is based on data set in tidy_data.txt above, all variables were calculated based on the 
mean  grouped by activity_label and subject. 



