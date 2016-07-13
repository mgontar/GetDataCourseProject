# CodeBook
This code book describes variables in final dataset from `data_final.txt` file and average dataset from `data_avg.txt` file.

## Final dataset

### Identifiers
* `subject` - test subject ID, type of factor, value was taken from `train/subject_train.txt` and `test/subject_test.txt` files of HARUSDS.
* `activity` - type of activity, type of factor, value was taken from `train/y_train.txt` and `test/y_test.txt` files and label was assigned from `activity_labels.txt` file of HARUSDS.

### Measurements
All following columns represents mean() and std() measurements, values are taken from `train/X_train.txt` and `test/X_test.txt` files and column names from `features.txt` file of HARUSDS. All values has type of double.
* `tbodyaccmeanx`
* `tbodyaccmeany`
* `tbodyaccmeanz`
* `tbodyaccstdx`
* `tbodyaccstdy`
* `tbodyaccstdz`
* `tgravityaccmeanx`
* `tgravityaccmeany`
* `tgravityaccmeanz`
* `tgravityaccstdx`
* `tgravityaccstdy`
* `tgravityaccstdz`
* `tbodyaccjerkmeanx`
* `tbodyaccjerkmeany`
* `tbodyaccjerkmeanz`
* `tbodyaccjerkstdx`
* `tbodyaccjerkstdy`
* `tbodyaccjerkstdz`
* `tbodygyromeanx`
* `tbodygyromeany`
* `tbodygyromeanz`
* `tbodygyrostdx`
* `tbodygyrostdy`
* `tbodygyrostdz`
* `tbodygyrojerkmeanx`
* `tbodygyrojerkmeany`
* `tbodygyrojerkmeanz`
* `tbodygyrojerkstdx`
* `tbodygyrojerkstdy`
* `tbodygyrojerkstdz`
* `tbodyaccmagmean`
* `tbodyaccmagstd`
* `tgravityaccmagmean`
* `tgravityaccmagstd`
* `tbodyaccjerkmagmean`
* `tbodyaccjerkmagstd`
* `tbodygyromagmean`
* `tbodygyromagstd`
* `tbodygyrojerkmagmean`
* `tbodygyrojerkmagstd`
* `fbodyaccmeanx`
* `fbodyaccmeany`
* `fbodyaccmeanz`
* `fbodyaccstdx`
* `fbodyaccstdy`
* `fbodyaccstdz`
* `fbodyaccjerkmeanx`
* `fbodyaccjerkmeany`
* `fbodyaccjerkmeanz`
* `fbodyaccjerkstdx`
* `fbodyaccjerkstdy`
* `fbodyaccjerkstdz`
* `fbodygyromeanx`
* `fbodygyromeany`
* `fbodygyromeanz`
* `fbodygyrostdx`
* `fbodygyrostdy`
* `fbodygyrostdz`
* `fbodyaccmagmean`
* `fbodyaccmagstd`
* `fbodybodyaccjerkmagmean`
* `fbodybodyaccjerkmagstd`
* `fbodybodygyromagmean`
* `fbodybodygyromagstd`
* `fbodybodygyrojerkmagmean`
* `fbodybodygyrojerkmagstd`
