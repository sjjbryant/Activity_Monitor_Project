
library(dplyr)
library(reshape2)

# read features and create vector for column names
features_df<-read.table("./features.txt", header=FALSE, colClasses=c("integer", "character"))
features_vct<-features_df[,2]

# read subject and activity for test, create vectors for test subjects and activities
subject_test_df<-read.table("subject_test.txt", colClasses="character")
subject<-subject_test_df[,1]
activity_test_df<-read.table("y_test.txt", colClasses="character")
activity<-activity_test_df[,1]

# substitute activity names for activity codes
activity<-factor(activity, c(1:6), c("WALKING", "WALKING_UPSTAIRS", "WALKING_DOWNSTAIRS", "SITTING", "STANDING", "LAYING"))

# read test group using features as column names
x_test_df<-read.table("./x_test.txt",header=FALSE, col.names=features_vct)

# add columns for test subject and activity 
x_test_df<-cbind(activity, x_test_df)
x_test_df<-cbind(subject, x_test_df)


# read subject and activity for train, create vectors for train subjects and activities
subject_train_df<-read.table("subject_train.txt", colClasses="character")
subject<-subject_train_df[,1]
activity_train_df<-read.table("y_train.txt", colClasses="character")
activity<-activity_train_df[,1]

# substitute activity names for activity codes
activity<-factor(activity, c(1:6), c("WALKING", "WALKING_UPSTAIRS", "WALKING_DOWNSTAIRS", "SITTING", "STANDING", "LAYING"))

# read test group using features as column names
x_train_df<-read.table("./x_train.txt",header=FALSE, col.names=features_vct)

# add columns for test subject and activity 
x_train_df<-cbind(activity, x_train_df)
x_train_df<-cbind(subject, x_train_df)

# join test and train datasets
accdata_df<-merge(x_test_df,x_train_df, all=TRUE)

# convert to dplyr table dataframe
accdata<-tbl_df(accdata_df)

# select only mean and std dev columns
accmean<-select(accdata, contains("mean"))
accstd<-select(accdata, contains("std"))
accsubact<-accdata[,1:2]

# bind 3 frames into one
accmeanstd<-cbind(accsubact, accmean, accstd)

# melt data based on activity and subject
melt_accmeanstd <- melt(accmeanstd,id=c("activity","subject"))

# replace the variable with better description name
melt_accmeanstd$variable <- gsub("mean","Mean",melt_accmeanstd$variable)
melt_accmeanstd$variable <- gsub("std","StdDev",melt_accmeanstd$variable)
melt_accmeanstd$variable <- gsub("\\(\\)","",melt_accmeanstd$variable)


# dcast the mean for each subject and acitivy pair
mean_accmeanstd <- dcast(melt_accmeanstd, activity + subject ~ variable, mean)

# create results file
write.table(mean_accmeanstd,row.names = FALSE,"./mean_activity_data.txt")

