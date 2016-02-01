# combine train and test X
train_x <- read.table("train/X_train.txt")
test_x <- read.table("test/X_test.txt")
x_combined<- rbind(train_x, test_x)

# combine train and test subjects
train_subjects <- read.table("train/subject_train.txt")
test_subjects <- read.table("test/subject_test.txt")
subject_combined <- rbind(train_subjects, test_subjects)

# select only mean and std features
features <- read.table("features.txt", stringsAsFactors = FALSE)
feature_selection <- grep("mean\\(\\)|std\\(\\)", features[,2])

# set the column names of the selected features
colnames(x_combined)[feature_selection] <- features[feature_selection,2]
x_combined <-  x_combined[,feature_selection]

# add subject as the first column
x_combined <- cbind(subject_combined, x_combined)

# add activity as the last column
activity_combined <- rbind(read.table("train/Y_train.txt"), read.table("test/Y_test.txt"))
result <- cbind(x_combined, activity_combined)

# set subject and activity variables
colnames(result)[c(1, ncol(result))] <- c("subject","activity")
# remove '()' from variables
colnames(result) <- gsub("\\(\\)","",colnames(result))

# average row
avg_by_subject_activity <- aggregate(result, by=list(result$subject, result$activity), FUN=mean)

# fix activity labels
activity_labels <- read.table("activity_labels.txt", stringsAsFactors = FALSE)
fun_map_activity <- function(x) activity_labels[x,2]

# the first data set
result[,ncol(result)] <- sapply(result[,ncol(result)], FUN=activity_map)

# the second data set
ncols <- ncol(avg_by_subject_activity)
avg_by_subject_activity[,ncols] <- sapply(avg_by_subject_activity[,ncols], FUN=activity_map)

# exclude the group variables produced by aggregate function
write.table(avg_by_subject_activity[, 3:ncols], "avg_by_subject_activity.txt", row.names = FALSE)