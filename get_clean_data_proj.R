# Course project for Getting and Cleaning Data 
# Student: Sam Al-Droubi 
library(dplyr)
library(stringr)
#remove existing variables
rm(list=ls())
##########################################################################################################
# read_data function is used generically to read either test or train data.
# based on the parameter passed "test" or "trai" it will return a data set
# that uses ./UCI HAR Dataset/features.txt file to assign legal column names to the data set 
# The activity is added as a column based on activity file either Y_test.txt or Y_train.txt (based on parameter) 
# activity_label column to data set by merging to the activity_labels.txt file to get activity label
# subject column subject_test.txt or subject_train.txt again based on passed parameter.
# data_type column is added.  If "test" then 1 else 2
########################################################################################################### 

read_data <- function  (p_data_set) {
    # set up file variables based on which data set 
    if (p_data_set == "test" || p_data_set =="train") {
        data_file <- paste0("./UCI HAR Dataset/",p_data_set,"/X_",p_data_set,".txt")
        activity_file <- paste0("./UCI HAR Dataset/",p_data_set,"/Y_",p_data_set,".txt")
        subject_file <-  paste0("./UCI HAR Dataset/",p_data_set,"/subject_",p_data_set,".txt")
        if (p_data_set == "test") {
            v_data_type = 1
    } else {
            v_data_type = 2
    }

    }
     else {
        return(NA)
        
     }
    # Read column names
    features <- read.table("./UCI HAR Dataset/features.txt")
    features <- tbl_df(features)
    #str(features)
    #Read data from file
    x_data <- read.table(data_file)
    #    x_data <- read.table("./UCI HAR Dataset/test/X_test.txt")
    #x_data <- tbl_df(x_data)
    # Makes column names legal in r
    mycolnames <- make.names(features$V2,unique = TRUE, allow_ = TRUE)
    mycolnames <-gsub("\\.","_",mycolnames)
    #Assign the column names
    colnames(x_data) <- mycolnames
#    str(x_data)
    # Get activity list (Walking, Sitting,...etc)
#   activity_test <- read.table("./UCI HAR Dataset/test/Y_test.txt")
    activity_test <- read.table(activity_file)
#    class(activity_test)
    #Add activity column
    x_data <- cbind(activity=activity_test$V1,x_data)
#    colnames(x_data)
#    select (x_data,activity)
    #Add column to indicate data type 1, means test data. 2 means train data
    x_data <- cbind(data_type=c(rep.int(v_data_type,nrow(x_data))),x_data)
#    select (x_data,data_type)
    #Add subject column
#   subject_test <- read.table("./UCI HAR Dataset/test/subject_test.txt")
    subject_test <- read.table(subject_file)
    x_data <- cbind(subject=subject_test$V1, x_data)
#    select (x_data,subject)
#    x_data
    # Activity labels
    activity_label_test <- read.table("./UCI HAR Dataset/activity_labels.txt")
    colnames(activity_label_test)=(c("activity","activity_label"))
    res <- merge(activity_label_test,x_data)
}

##########################################################################################################
# tidy_data function is calls read_data twice once with "test" parameter and once with "train" parameter
# The returned data sets are combined using rbind.  
# The data set is then restricted to columns either "mean" or "std" plus subject, activity, activity_label
# and data_type, 
# Two files are written, one with variables as they are.  File is called tidy_data.txt
# The other file is the average of the data for all variables grouped by activity,activity_label and subject. 
# The file is named tidy_data_by_activity_subject.txt
########################################################################################################### 

tidy_all_data <- function () {
    all_data<-rbind(read_data("test"),read_data("train"))
    tidyData <- select(all_data, matches("data_type|activity_label|subject|_mean_|_std_")) # select(x_test,contains(".std."))
#    tidyData <- select(all_Data, matches("subject")) # select(x_test,contains(".std."))
    write.table(tidyData,file="./tidy_data.txt")
    #drop the activity_label column
    #all_data$activity_label <- NULL
     by_activity_subject <- group_by(tidyData,activity_label,subject)
     tidy_data_by_activity_subject <- summarise_each(by_activity_subject,funs(mean))
     write.table(tidy_data_by_activity_subject,file="./tidy_data_by_activity_subject.txt")
}

generate_tidy_data <- tidy_all_data()

