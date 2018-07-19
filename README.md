# Samsung-Data-Project

The aim of the project is to collect, work and clean the data from 30 volunteers who performed 6 different activities.
Every individual wore a Samsung Galaxy on the waist while Walking, Walking_upstairs, Walking_downstairs, Sitting, Standing and Laying.

The raw data was captured from the smartphone's accelerometer and gyroscope. It was organized in two differents datasets (train and test sets) with separate labels and subjects. 70% of individuals contribute to complete the train set and the rest 30% fullfill the test set.

Both data sets were merged in a single dataframe including its corresponding labels and subjects (individuals performing the activity). 
Measurements on the mean and standard deviations variables were selected from each measurement.
Train and test labels were named according to the activity labels document. 

The outcome depicts the mean on 68 selected variables organised by individual and activity. 

## Raw data files
  
#### Train data
- X_train.txt: Training set.
- y_train.txt: Training labels.
- subject_train.txt: Individual who performed the activity.

#### Test data
- X_test.txt: Test set.
- y_test.txt: Test labels.
- subject_test.txt: Individual who performed the activity.

#### Common information to both data sets
- activity_labels.txt: Number associated to each activity.
- features.txt: Variable names

## Script files

- run_analysis.R -> Collect, work and clean up the raw data. It creates the outcome text file.   
- hdactivity_codebook.R -> generate the codebook with a complete summary of the data extracted from run_analysis. 

 ## Outcome text files
- hdactivity.txt: Output data set composed by train and test sets. Measurements on the mean and standard deviation variables grouped by individual and activity.

- humandata-cdbk.txt: Codebook with a complete summary of the hdactivity data 



