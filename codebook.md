As I noted in readme.md, this data is created from another dataset. Therefore, if you would like to know about the variables more concretely, please refer "features.txt" and "features_info.txt" which exist in original zip file.  
In this codebook, brief explanation about the variable names (mainly about abbreviation) and the values in the tidydata.csv.
# Variables
*subject*  
The original data was obtained from the experiment in which 30 people joined. The variable called "subject" is important to identify a person.  
*freq*  
"freq" is the abbreviation of frequency, which means that the data is about frequency domain signals.  
*meanFreq*  
It is one of the statistical method. According to the original datasets, this is the weighted average of the frequency components to obtain a mean frequency.  
*"X","Y","Z" at the end of the variable names*  
This experimental data was collected from 3-axial signals. X, Y, Z represent which direction the data is.  
  
# Values
All the numeric values in this dataset are within [-1,1], because this dataset includes average of each variable for each activity and each subject in original dataset.
The collecting data are normalized and bounded within [-1,1], according to README.txt in *original zip folder*.  
  
*The values on the column named "activity"*  
There are six type of activities: WALKING, WALKING_UPSTAIRS, WAKING_DOWNSTAIRS, SITTING, STANDING, LAYING.  
This represents which activities were done during collecting the data.
