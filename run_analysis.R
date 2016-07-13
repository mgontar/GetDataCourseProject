# setup constants
fn_X_train <- "UCI HAR Dataset/train/X_train.txt"
fn_y_train <- "UCI HAR Dataset/train/y_train.txt"
fn_s_train <- "UCI HAR Dataset/train/subject_train.txt"
fn_X_test <- "UCI HAR Dataset/test/X_test.txt"
fn_y_test <- "UCI HAR Dataset/test/y_test.txt"
fn_s_test <- "UCI HAR Dataset/test/subject_test.txt"
fn_features <- "UCI HAR Dataset/features.txt"
fn_act_lb <- "UCI HAR Dataset/activity_labels.txt"
fn_data_final <- "data_final.txt"
fn_data_avg <- "data_avg.txt"
col_lb_act <- "activity"
col_lb_s <- "subject"
ct_X <- rep("double", 561)
cw_X <- rep(16, 561)

# Read data from HARUSDS files
# For fast reading of large files with fixed column width - use LaF package
library(LaF)
data_X_train <- laf_open_fwf(fn_X_train, ct_X, cw_X)[,]
data_X_test <- laf_open_fwf(fn_X_test, ct_X, cw_X)[,]

# Common read procedure for smaller files
data_y_train <- read.csv(fn_y_train, header = FALSE)
data_s_train <- read.csv(fn_s_train, header = FALSE)
data_y_test <- read.csv(fn_y_test, header = FALSE)
data_s_test <- read.csv(fn_s_test, header = FALSE)
features <- read.csv(fn_features, header = FALSE, sep=" ")
act_lb <- read.csv(fn_act_lb, header = FALSE, sep=" ")

# Gather data from train set
data_train <- data_X_train
data_train[[col_lb_act]] <- as.factor(data_y_train[,])
data_train[[col_lb_s]] <- as.factor(data_s_train[,])

# Gather data from test set
data_test <- data_X_test
data_test[[col_lb_act]] <- as.factor(data_y_test[,])
data_test[[col_lb_s]] <- as.factor(data_s_test[,])

# Merger data from train and test sets
data <- rbind(data_train, data_test)

# Set column names for measurement features
names(data) <- c(as.character(features[,2]), col_lb_act, col_lb_s)

# Extract only measurements with mean() and std() values
col_lb_mean_std <- grep("(mean|std)\\(\\)", names(data), value=TRUE)
data <- data[, c(col_lb_mean_std, col_lb_act, col_lb_s)]

# Update activity variables with descriptive labels
levels(data[,col_lb_act]) <- act_lb[,2]

# Appropriately labels the data set with descriptive variable names
# Set all column names to lowercase
col_lb_mean_std <- tolower(col_lb_mean_std)
# Remove "-", "(", ")" characters
col_lb_mean_std <- gsub("(-|\\(|\\))","", col_lb_mean_std)
names(data) <- c(col_lb_mean_std, col_lb_act, col_lb_s)
data <- data[, c(col_lb_s, col_lb_act, col_lb_mean_std)]
# Write final tidy data set to file in csv format
write.table(data, fn_data_final, row.names = FALSE)

# For easy grouped average use dplyr package
library(dplyr)
# Average of each variable for each activity and each subject
data_avg <- data %>% group_by(activity, subject) %>% summarise_each(funs(mean))
# Write average tidy data set to file in csv format
write.table(data_avg, fn_data_avg, row.names = FALSE)