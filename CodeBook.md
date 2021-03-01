The file finaldata.csv has 88 columns coming from the following locations:
_________________________________________________________________________
There are 30 subjects, represented by the numbers 1:30 in the first column
of finaldata.csv. This information was included in the subjects files in
training and testing.
_________________________________________________________________________
There are 6 activities represented. The activity_labels.txt file included
in the original dataset gave the following information:
1 WALKING
2 WALKING_UPSTAIRS
3 WALKING_DOWNSTAIRS
4 SITTING
5 STANDING
6 LAYING
These numbers were found in the y files. They have been translated to the
English equivalent, with underscores removed and as lowercase, in column
2 of finaldata.csv.
_________________________________________________________________________
These are the 86 columns extracted from the x train and test files. The characters
comma, parentheses, and dashes were removed from the original column names to make
them more readable.
 [1] "tbodyaccmeanx"                     "tbodyaccmeany"                    
 [3] "tbodyaccmeanz"                     "tbodyaccstdx"                     
 [5] "tbodyaccstdy"                      "tbodyaccstdz"                     
 [7] "tgravityaccmeanx"                  "tgravityaccmeany"                 
 [9] "tgravityaccmeanz"                  "tgravityaccstdx"                  
[11] "tgravityaccstdy"                   "tgravityaccstdz"                  
[13] "tbodyaccjerkmeanx"                 "tbodyaccjerkmeany"                
[15] "tbodyaccjerkmeanz"                 "tbodyaccjerkstdx"                 
[17] "tbodyaccjerkstdy"                  "tbodyaccjerkstdz"                 
[19] "tbodygyromeanx"                    "tbodygyromeany"                   
[21] "tbodygyromeanz"                    "tbodygyrostdx"                    
[23] "tbodygyrostdy"                     "tbodygyrostdz"                    
[25] "tbodygyrojerkmeanx"                "tbodygyrojerkmeany"               
[27] "tbodygyrojerkmeanz"                "tbodygyrojerkstdx"                
[29] "tbodygyrojerkstdy"                 "tbodygyrojerkstdz"                
[31] "tbodyaccmagmean"                   "tbodyaccmagstd"                   
[33] "tgravityaccmagmean"                "tgravityaccmagstd"                
[35] "tbodyaccjerkmagmean"               "tbodyaccjerkmagstd"               
[37] "tbodygyromagmean"                  "tbodygyromagstd"                  
[39] "tbodygyrojerkmagmean"              "tbodygyrojerkmagstd"              
[41] "fbodyaccmeanx"                     "fbodyaccmeany"                    
[43] "fbodyaccmeanz"                     "fbodyaccstdx"                     
[45] "fbodyaccstdy"                      "fbodyaccstdz"                     
[47] "fbodyaccmeanfreqx"                 "fbodyaccmeanfreqy"                
[49] "fbodyaccmeanfreqz"                 "fbodyaccjerkmeanx"                
[51] "fbodyaccjerkmeany"                 "fbodyaccjerkmeanz"                
[53] "fbodyaccjerkstdx"                  "fbodyaccjerkstdy"                 
[55] "fbodyaccjerkstdz"                  "fbodyaccjerkmeanfreqx"            
[57] "fbodyaccjerkmeanfreqy"             "fbodyaccjerkmeanfreqz"            
[59] "fbodygyromeanx"                    "fbodygyromeany"                   
[61] "fbodygyromeanz"                    "fbodygyrostdx"                    
[63] "fbodygyrostdy"                     "fbodygyrostdz"                    
[65] "fbodygyromeanfreqx"                "fbodygyromeanfreqy"               
[67] "fbodygyromeanfreqz"                "fbodyaccmagmean"                  
[69] "fbodyaccmagstd"                    "fbodyaccmagmeanfreq"              
[71] "fbodybodyaccjerkmagmean"           "fbodybodyaccjerkmagstd"           
[73] "fbodybodyaccjerkmagmeanfreq"       "fbodybodygyromagmean"             
[75] "fbodybodygyromagstd"               "fbodybodygyromagmeanfreq"         
[77] "fbodybodygyrojerkmagmean"          "fbodybodygyrojerkmagstd"          
[79] "fbodybodygyrojerkmagmeanfreq"      "angletbodyaccmeangravity"         
[81] "angletbodyaccjerkmeangravitymean"  "angletbodygyromeangravitymean"    
[83] "angletbodygyrojerkmeangravitymean" "anglexgravitymean"                
[85] "angleygravitymean"                 "anglezgravitymean"      