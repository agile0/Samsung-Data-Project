#Load packages

library("dplyr")
library("tdyr")
library("memsc")

# Download the file from the source

URL <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
download.file(URL, destfile = "./Human_activity_data.zip")

# Unzip files, list them and selection process

Human_activity_list <- unzip("Human_activity_data.zip", list = TRUE)
unzip("Human_activity_data.zip", files = Human_activity_list[c(1:4),1], exdir = "./UCIHARDataset",
      junkpaths = TRUE, overwrite = TRUE)
unzip("Human_activity_data.zip", files = Human_activity_list[c(16:18),1], exdir = "./test", 
        junkpaths = TRUE, overwrite = TRUE)
unzip("Human_activity_data.zip", files = Human_activity_list[c(30:32),1], exdir = "./train",
        junkpaths = TRUE, overwrite = TRUE)

# Read in files from directory 

test <- as.list(list.files("./test", full.names = TRUE), sorted = TRUE)
train <- as.list(list.files("./train", full.names = TRUE), sorted = TRUE)

#Store information from files in a data frame 

test_df <- do.call(cbind, lapply(test, function(x) read.csv(x, stringsAsFactors = FALSE,
                                                            sep = "", header = FALSE)))
train_df <- do.call(cbind, lapply(train, function(x) read.csv(x, stringsAsFactors = FALSE, 
                                                              sep = "", header = FALSE)))
features <- read.csv("./UCIHARDataset/features.txt", stringsAsFactors = FALSE, sep ="",
                     header = FALSE, colClasses = "character")

#Reorder data as (subject_train/test.txt, y_train/test.txt, X_train/test.txt)

test_df <- test_df[c(1,563,2:562)]
train_df <- train_df[c(1,563,2:562)]

#Merge test and train data sets

experiment_df <- rbind(test_df, train_df)

#Extracts measurements on the mean and std

var.std <- grep("std()", features[,2], fixed = TRUE)
var.mean <- grep("mean()", features[,2], fixed = TRUE)
var.ext <- sort(c(var.std, var.mean))
experiment_df <- experiment_df[,c(1,2,var.ext + 2)]

#Using descriptive activity names

activity_labels <- read.csv("./UCIHARDataset/activity_labels.txt", stringsAsFactors = FALSE,
                            sep =" ", header = FALSE, colClasses = "character")
experiment_df$V1.1 <- factor(experiment_df$V1.1, labels = activity_labels[,2])

#Label column variables

features <- lapply(as.list(features[var.ext,2]), function(x) gsub('[()-,(),-]','', x))
colnames(experiment_df) <-c("Volunteer", "Activity", features)

#Create an independent dataset 

hdactivity <- group_by_at(experiment_df, vars(Volunteer, Activity))
hdactivity <- summarise_all(hdactivity, funs(mean))

#Export to a text file using read.table
