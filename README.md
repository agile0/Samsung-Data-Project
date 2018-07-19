# Samsung-Data-Project

The aim of the project is to collect, work and clean the data from 30 volunteers who performed 6 different activities.
Every individual wore a Samsung Galaxy on the waist while Walking, Walking_upstairs, Walking_downstairs, Sitting, Standing and Laying.

The raw data was captured from the smartphone's accelerometer and gyroscope. It was organized in two differents datasets (train and test sets) with separate labels and subjects. 70% of individuals contribute to complete the train set and the rest 30% fullfill the test set.

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
Using the script presented below and the list of actions described in the codebook we obtain the outcome text file

- run_analysis.R 

Both data sets were merged in a single dataframe including its corresponding labels and subjects (individuals performing the activity). 
Measurements on the mean and standard deviations variables were selected from each measurement.
Train and test labels were named according to the activity labels document. 

  ## Outcome text file
- hdactivity.txt: Output data set composed by train and test sets. Measurements on the mean and standard deviation variables grouped by individual and activity.


Finally to create the codebook and describe every variable we used the package 'memsc'. 
Execute the hdactivity_codebook.R script will generate a textfile with a complete summary of our data.
