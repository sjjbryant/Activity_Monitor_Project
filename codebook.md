## CodeBook

This codebook consist of following information

* Data Set
* File
* Variable
* Feature Selection


******
##Data Set

Information from the Readme file of the dataset:

The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data. 

The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then sampled in fixed-width sliding windows of 2.56 sec and 50% overlap (128 readings/window). The sensor acceleration signal, which has gravitational and body motion components, was separated using a Butterworth low-pass filter into body acceleration and gravity. The gravitational force is assumed to have only low frequency components, therefore a filter with 0.3 Hz cutoff frequency was used. From each window, a vector of features was obtained by calculating variables from the time and frequency domain. See 'features_info.txt' for more details. 

For each record it is provided:

- Triaxial acceleration from the accelerometer (total acceleration) and the estimated body acceleration.
- Triaxial Angular velocity from the gyroscope. 
- A 561-feature vector with time and frequency domain variables. 
- Its activity label. 
- An identifier of the subject who carried out the experiment.
                
 
******

##File

Files extracted from: 

https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

- 'features.txt': List of all features.

- 'activity_labels.txt': Links the class labels with their activity name.

- 'train/X_train.txt': Training set.

- 'train/y_train.txt': Training labels.

- 'test/X_test.txt': Test set.

- 'test/y_test.txt': Test labels.

- 'test/subject_test.txt': Each row identifies the test subject who performed the activity for each window sample. Its range is from 1 to 30. 

- 'train/subject_train.txt': Each row identifies the train subject who performed the activity for each window sample. Its range is from 1 to 30. 

Inertial Signals data was not used for this analysis.
Features are normalized and bounded within [-1,1].
Each feature vector is a row on the text file.

******

##Variables
activity: 6 activities noted 
WALKING
WALKING_UPSTAIRS
WALKING_DOWNSTAIRS
SITTING
STANDING
LAYING

subject: 30 subjects tested
identified by numbers 1-30

 
Mean and Standard Deviation Variables:

 [1] "activity"                             "subject"                              "angle.tBodyAccJerkMean..gravityMean."
 [4] "angle.tBodyAccMean.gravity."          "angle.tBodyGyroJerkMean.gravityMean." "angle.tBodyGyroMean.gravityMean."    
 [7] "angle.X.gravityMean."                 "angle.Y.gravityMean."                 "angle.Z.gravityMean."                
[10] "fBodyAcc.Mean...X"                    "fBodyAcc.Mean...Y"                    "fBodyAcc.Mean...Z"                   
[13] "fBodyAcc.MeanFreq...X"                "fBodyAcc.MeanFreq...Y"                "fBodyAcc.MeanFreq...Z"               
[16] "fBodyAcc.StdDev...X"                  "fBodyAcc.StdDev...Y"                  "fBodyAcc.StdDev...Z"                 
[19] "fBodyAccJerk.Mean...X"                "fBodyAccJerk.Mean...Y"                "fBodyAccJerk.Mean...Z"               
[22] "fBodyAccJerk.MeanFreq...X"            "fBodyAccJerk.MeanFreq...Y"            "fBodyAccJerk.MeanFreq...Z"           
[25] "fBodyAccJerk.StdDev...X"              "fBodyAccJerk.StdDev...Y"              "fBodyAccJerk.StdDev...Z"             
[28] "fBodyAccMag.Mean.."                   "fBodyAccMag.MeanFreq.."               "fBodyAccMag.StdDev.."                
[31] "fBodyBodyAccJerkMag.Mean.."           "fBodyBodyAccJerkMag.MeanFreq.."       "fBodyBodyAccJerkMag.StdDev.."        
[34] "fBodyBodyGyroJerkMag.Mean.."          "fBodyBodyGyroJerkMag.MeanFreq.."      "fBodyBodyGyroJerkMag.StdDev.."       
[37] "fBodyBodyGyroMag.Mean.."              "fBodyBodyGyroMag.MeanFreq.."          "fBodyBodyGyroMag.StdDev.."           
[40] "fBodyGyro.Mean...X"                   "fBodyGyro.Mean...Y"                   "fBodyGyro.Mean...Z"                  
[43] "fBodyGyro.MeanFreq...X"               "fBodyGyro.MeanFreq...Y"               "fBodyGyro.MeanFreq...Z"              
[46] "fBodyGyro.StdDev...X"                 "fBodyGyro.StdDev...Y"                 "fBodyGyro.StdDev...Z"                
[49] "tBodyAcc.Mean...X"                    "tBodyAcc.Mean...Y"                    "tBodyAcc.Mean...Z"                   
[52] "tBodyAcc.StdDev...X"                  "tBodyAcc.StdDev...Y"                  "tBodyAcc.StdDev...Z"                 
[55] "tBodyAccJerk.Mean...X"                "tBodyAccJerk.Mean...Y"                "tBodyAccJerk.Mean...Z"               
[58] "tBodyAccJerk.StdDev...X"              "tBodyAccJerk.StdDev...Y"              "tBodyAccJerk.StdDev...Z"             
[61] "tBodyAccJerkMag.Mean.."               "tBodyAccJerkMag.StdDev.."             "tBodyAccMag.Mean.."                  
[64] "tBodyAccMag.StdDev.."                 "tBodyGyro.Mean...X"                   "tBodyGyro.Mean...Y"                  
[67] "tBodyGyro.Mean...Z"                   "tBodyGyro.StdDev...X"                 "tBodyGyro.StdDev...Y"                
[70] "tBodyGyro.StdDev...Z"                 "tBodyGyroJerk.Mean...X"               "tBodyGyroJerk.Mean...Y"              
[73] "tBodyGyroJerk.Mean...Z"               "tBodyGyroJerk.StdDev...X"             "tBodyGyroJerk.StdDev...Y"            
[76] "tBodyGyroJerk.StdDev...Z"             "tBodyGyroJerkMag.Mean.."              "tBodyGyroJerkMag.StdDev.."           
[79] "tBodyGyroMag.Mean.."                  "tBodyGyroMag.StdDev.."                "tGravityAcc.Mean...X"                
[82] "tGravityAcc.Mean...Y"                 "tGravityAcc.Mean...Z"                 "tGravityAcc.StdDev...X"              
[85] "tGravityAcc.StdDev...Y"               "tGravityAcc.StdDev...Z"               "tGravityAccMag.Mean.."               
[88] "tGravityAccMag.StdDev.."             
                
 
##Feature Selection

From the Feature Selection Information file:

The feature data are coming from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. These time domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 

Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag). 

Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. (Note the 'f' to indicate frequency domain signals). 

These signals were used to estimate variables of the feature vector for each pattern:  
'-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.
                
                 
 
###Features
tBodyAcc-XYZ

tGravityAcc-XYZ

tBodyAccJerk-XYZ

tBodyGyro-XYZ

tBodyGyroJerk-XYZ

tBodyAccMag

tGravityAccMag

tBodyAccJerkMag

tBodyGyroMag

tBodyGyroJerkMag

fBodyAcc-XYZ

fBodyAccJerk-XYZ

fBodyGyro-XYZ

fBodyAccMag

fBodyAccJerkMag

fBodyGyroMag

fBodyGyroJerkMag
                
 
###Estimated Variables
The set of variables that were estimated from these signals are: 
                
Mean    : Mean value                   
StdDev  : Standard deviation                   
angle   : Angle between to vectors

Additional vectors obtained by averaging the signals in a signal window sample. These are used on the angle() variable:

gravityMean

tBodyAccMean

tBodyAccJerkMean

tBodyGyroMean

tBodyGyroJerkMean