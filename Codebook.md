## HUMAN DATA ACTIVITY EXPERIMENT

### Description 
The experiment represents data gathered from 30 individuals who complete 6 different activities. 
Each volunteer wore a smartphone to measure sensor signals from the accelerometer and gyroscope.

### Usage
hdactivity

### List of actions
##### 1.Load packages
##### 2.Download the file from the source
##### 3.Unzip files, list them and selection process
##### 4.Read in files from directory 
##### 5.Store information from files in a data frame 
##### 6.Reorder data as (subject_train/test.txt, y_train/test.txt, X_train/test.txt)
##### 7.Merge test and train data sets
##### 8.Extracts measurements on the mean and std
##### 9.Using descriptive activity names
##### 10.Label column variables
##### 11.Group by individual and activity. Then summarize on the mean the dataset 
##### 12.Export the dataframe to a text file using read.table
##### 13.Transform the outcome dataframe to data.set 
##### 14.Description of variables and summarize information 
##### 15.Generate a codebook text file  

### Format 

A data frame with 168 observations on 68 variables 

Volunteer
Activity
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

### Source

Davide Anguita, Alessandro Ghio, Luca Oneto, Xavier Parra and Jorge L. Reyes-Ortiz. Human Activity Recognition on Smartphones using a Multiclass Hardware-Friendly Support Vector Machine. International Workshop of Ambient Assisted Living (IWAAL 2012). Vitoria-Gasteiz, Spain. Dec 2012
