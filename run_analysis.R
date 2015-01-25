setwd('C:/Users/Jor/Documents/DSciencesCoursera/GettingAndCleanningData/FinalProject/UCI HAR Dataset')
X_train <- read.table("./train/X_train.txt", sep="", header=FALSE)
head(X_train)
# length(X_train)  X_train has 7352 lines and 561 columns
cols <- ncol(X_train) #X_train has 561 cols

X_means <- rowMeans(X_train)
X_std <- apply(X_train,1, sd, na.rm = TRUE)
X_train_ <- data.frame(X_means,X_std)  #X_train_
head(X_train_)





Y_train <- read.table("./train/Y_train.txt", sep=" ", header=FALSE)
rows <- nrow(Y_train) #has 7352 rows and
# cols ncol(Y_train) # has 1 col
# names(Y_train)
Activity <- rep(0,rows)
for (i in 1:rows) {
  switch(Y_train[i,1], 
         '1'={
           Activity[i] <- "Walking"
         },
         '2'={
           Activity[i] <- "Walking_Upstairs"
         },
         '3'={
           Activity[i] <- "Walking_DOwnstairs"
         },
         '4'={
           Activity[i] <- "Sitting"
         },
         '5'={
           Activity[i] <- "Standing"
         },
         '6'={
           Activity[i] <- "Laying"
         },
        {}
  )
}
  
Y_train_ <-data.frame(Activity)




subject_train_ <- read.table("./train/subject_train.txt", sep=" ", header=FALSE)
#nrow(subject_train) has 7352 rows and
cols= ncol(subject_train_) # has 1 col
#head(subject_train)
for (i in 1:cols) {
  names(subject_train_)[i]<- paste("Subject")
}
head(subject_train_)



body_acc_x_train <- read.table("./train/Inertial Signals/body_acc_x_train.txt", sep="", header=FALSE)
#nrow(body_acc_x_train) has 7352 rows and
cols= ncol(body_acc_x_train) # has 128 col
#head(body_acc_x_train)

body_acc_x_train_means <- rowMeans(body_acc_x_train)
body_acc_x_train_std <- apply(body_acc_x_train,1, sd, na.rm = TRUE)
body_acc_x_train_ <- data.frame(body_acc_x_train_means,body_acc_x_train_std)  #X_train_
head(body_acc_x_train_)



body_acc_y_train <- read.table("./train/Inertial Signals/body_acc_y_train.txt", sep="", header=FALSE)
#nrow(body_acc_y_train) has 7352 rows and
cols = ncol(body_acc_y_train) # has 128 col
#ncol(body_acc_y_train) has 128 col
#head(body_acc_y_train)
body_acc_y_train_means <- rowMeans(body_acc_y_train)
body_acc_y_train_std <- apply(body_acc_y_train,1, sd, na.rm = TRUE)
body_acc_y_train_ <- data.frame(body_acc_y_train_means,body_acc_y_train_std)  #X_train_
head(body_acc_y_train_)


body_acc_z_train <- read.table("./train/Inertial Signals/body_acc_z_train.txt", sep="", header=FALSE)
#nrow(body_acc_z_train) has 7352 rows and
#ncol(body_acc_z_train) has 128 col
#head(body_acc_z_train)
body_acc_z_train_means <- rowMeans(body_acc_z_train)
body_acc_z_train_std <- apply(body_acc_z_train,1, sd, na.rm = TRUE)
body_acc_z_train_ <- data.frame(body_acc_z_train_means,body_acc_z_train_std)  #X_train_
head(body_acc_z_train_)


body_gyro_x_train <- read.table("./train/Inertial Signals/body_gyro_x_train.txt", sep="", header=FALSE)
#nrow(body_gyro_x_train) has 7352 rows and
#ncol(body_gyro_x_train) has 128 col
#head(body_gyro_x_train)
body_gyro_x_train_means <- rowMeans(body_gyro_x_train)
body_gyro_x_train_std <- apply(body_gyro_x_train,1, sd, na.rm = TRUE)
body_gyro_x_train_ <- data.frame(body_gyro_x_train_means,body_gyro_x_train_std)  #X_train_
head(body_gyro_x_train_)



body_gyro_y_train <- read.table("./train/Inertial Signals/body_gyro_y_train.txt", sep="", header=FALSE)
#nrow(body_gyro_y_train) has 7352 rows and
#ncol(body_gyro_y_train) has 128 col
#head(body_gyro_y_train)
body_gyro_y_train_means <- rowMeans(body_gyro_y_train)
body_gyro_y_train_std <- apply(body_gyro_y_train,1, sd, na.rm = TRUE)
body_gyro_y_train_ <- data.frame(body_gyro_y_train_means,body_gyro_y_train_std)  #X_train_
head(body_gyro_y_train_)



body_gyro_z_train <- read.table("./train/Inertial Signals/body_gyro_z_train.txt", sep="", header=FALSE)
#nrow(body_gyro_z_train) has 7352 rows and
#ncol(body_gyro_z_train) has 128 col
body_gyro_z_train_means <- rowMeans(body_gyro_z_train)
body_gyro_z_train_std <- apply(body_gyro_z_train,1, sd, na.rm = TRUE)
body_gyro_z_train_ <- data.frame(body_gyro_z_train_means,body_gyro_z_train_std)  #X_train_
head(body_gyro_z_train_)


total_acc_x_train <- read.table("./train/Inertial Signals/total_acc_x_train.txt", sep="", header=FALSE)
#nrow(total_acc_x_train) has 7352 rows and
#ncol(total_acc_x_train) has 128 col
#head(total_acc_x_train)
total_acc_x_train_means <- rowMeans(total_acc_x_train)
total_acc_x_train_std <- apply(total_acc_x_train,1, sd, na.rm = TRUE)
total_acc_x_train_ <- data.frame(total_acc_x_train_means,total_acc_x_train_std)  #X_train_
head(total_acc_x_train_)


total_acc_y_train <- read.table("./train/Inertial Signals/total_acc_y_train.txt", sep="", header=FALSE)
#nrow(total_acc_y_train) has 7352 rows and
#ncol(total_acc_y_train) has 128 col
#head(total_acc_y_train)
total_acc_y_train_means <- rowMeans(total_acc_x_train)
total_acc_y_train_std <- apply(total_acc_x_train,1, sd, na.rm = TRUE)
total_acc_y_train_ <- data.frame(total_acc_x_train_means,total_acc_x_train_std)  #X_train_
head(total_acc_y_train_)


total_acc_z_train <- read.table("./train/Inertial Signals/total_acc_z_train.txt", sep="", header=FALSE)
#nrow(total_acc_z_train) has 7352 rows and
#ncol(total_acc_z_train) has 128 col
#head(total_acc_z_train)
total_acc_z_train_means <- rowMeans(total_acc_z_train)
total_acc_z_train_std <- apply(total_acc_z_train,1, sd, na.rm = TRUE)
total_acc_z_train_ <- data.frame(total_acc_z_train_means,total_acc_z_train_std)  #X_train_
head(total_acc_z_train_)



train_data <- cbind(X_train_,Y_train_,subject_train_,body_acc_x_train_,body_acc_y_train_,body_acc_z_train_, body_gyro_x_train_,
                body_gyro_y_train_, body_gyro_z_train_, total_acc_x_train_, total_acc_y_train_, total_acc_z_train_)
names(train_data)
#nrow(train_data)
#ncol(train_data)


#################### NOW TEST DATA #############################################
setwd('C:/Users/Jor/Documents/DSciencesCoursera/GettingAndCleanningData/FinalProject/UCI HAR Dataset')
X_test <- read.table("./test/X_test.txt", sep="", header=FALSE)
X_means <- rowMeans(X_test)
X_std <- apply(X_test,1, sd, na.rm = TRUE)
X_test_ <- data.frame(X_means,X_std)  #X_train_
head(X_test_)


Y_test <- read.table("./test/Y_test.txt", sep=" ", header=FALSE)
rows <- nrow(Y_test) #has 7352 rows and
# cols ncol(Y_train) # has 1 col
# names(Y_train)
Activity <- rep(0,rows)
for (i in 1:rows) {
  switch(Y_test[i,1], 
         '1'={
           Activity[i] <- "Walking"
         },
         '2'={
           Activity[i] <- "Walking_Upstairs"
         },
         '3'={
           Activity[i] <- "Walking_DOwnstairs"
         },
         '4'={
           Activity[i] <- "Sitting"
         },
         '5'={
           Activity[i] <- "Standing"
         },
         '6'={
           Activity[i] <- "Laying"
         },
{}
  )
}

Y_test_ <-data.frame(Activity)











subject_test_ <- read.table("./test/subject_test.txt", sep=" ", header=FALSE)
#nrow(subject_train) has 7352 rows and
#cols= ncol(subject_train) # has 1 col
#head(subject_train)


body_acc_x_test <- read.table("./test/Inertial Signals/body_acc_x_test.txt", sep="", header=FALSE)
#nrow(body_acc_x_train) has 7352 rows and
#cols= ncol(body_acc_x_test) # has 128 col
#head(body_acc_x_train)
body_acc_x_test_means <- rowMeans(body_acc_x_test)
body_acc_x_test_std <- apply(body_acc_x_test,1, sd, na.rm = TRUE)
body_acc_x_test_ <- data.frame(body_acc_x_test_means,body_acc_x_test_std)  #X_train_
head(body_acc_x_test_)





body_acc_y_test <- read.table("./test/Inertial Signals/body_acc_y_test.txt", sep="", header=FALSE)
#nrow(body_acc_y_train) has 7352 rows and
body_acc_y_test_means <- rowMeans(body_acc_y_test)
body_acc_y_test_std <- apply(body_acc_y_test,1, sd, na.rm = TRUE)
body_acc_y_test_ <- data.frame(body_acc_y_test_means,body_acc_y_test_std)  #X_train_
head(body_acc_y_test_)



body_acc_z_test <- read.table("./test/Inertial Signals/body_acc_z_test.txt", sep="", header=FALSE)
#nrow(body_acc_z_train) has 7352 rows and
#ncol(body_acc_z_train) has 128 col
#head(body_acc_z_train)
body_acc_z_test_means <- rowMeans(body_acc_z_test)
body_acc_z_test_std <- apply(body_acc_z_test,1, sd, na.rm = TRUE)
body_acc_z_test_ <- data.frame(body_acc_z_test_means,body_acc_z_test_std)  #X_train_
head(body_acc_z_test_)





body_gyro_x_test <- read.table("./test/Inertial Signals/body_gyro_x_test.txt", sep="", header=FALSE)
#nrow(body_gyro_x_train) has 7352 rows and
#ncol(body_gyro_x_train) has 128 col
#head(body_gyro_x_train)
body_gyro_x_test_means <- rowMeans(body_gyro_x_test)
body_gyro_x_test_std <- apply(body_gyro_x_test,1, sd, na.rm = TRUE)
body_gyro_x_test_ <- data.frame(body_gyro_x_test_means,body_gyro_x_test_std)  #X_train_
head(body_gyro_x_test_)


body_gyro_y_test <- read.table("./test/Inertial Signals/body_gyro_y_test.txt", sep="", header=FALSE)
#nrow(body_gyro_y_train) has 7352 rows and
#ncol(body_gyro_y_train) has 128 col
#head(body_gyro_y_train)
body_gyro_y_test_means <- rowMeans(body_gyro_y_test)
body_gyro_y_test_std <- apply(body_gyro_y_test,1, sd, na.rm = TRUE)
body_gyro_y_test_ <- data.frame(body_gyro_y_test_means,body_gyro_x_test_std)  #X_train_
head(body_gyro_y_test_)



body_gyro_z_test <- read.table("./test/Inertial Signals/body_gyro_z_test.txt", sep="", header=FALSE)
#nrow(body_gyro_z_train) has 7352 rows and
#ncol(body_gyro_z_train) has 128 col
#head(body_gyro_z_train)
body_gyro_z_test_means <- rowMeans(body_gyro_z_test)
body_gyro_z_test_std <- apply(body_gyro_z_test,1, sd, na.rm = TRUE)
body_gyro_z_test_ <- data.frame(body_gyro_z_test_means,body_gyro_z_test_std)  #X_train_
head(body_gyro_z_test_)



total_acc_x_test <- read.table("./test/Inertial Signals/total_acc_x_test.txt", sep="", header=FALSE)
#nrow(total_acc_x_train) has 7352 rows and
#ncol(total_acc_x_train) has 128 col
#head(total_acc_x_train)
total_acc_x_test_means <- rowMeans(total_acc_x_test)
total_acc_x_test_std <- apply(total_acc_x_test,1, sd, na.rm = TRUE)
total_acc_x_test_ <- data.frame(total_acc_x_test_means,total_acc_x_test_std)  #X_train_
head(total_acc_x_test_)



total_acc_y_test <- read.table("./test/Inertial Signals/total_acc_y_test.txt", sep="", header=FALSE)
#nrow(total_acc_y_train) has 7352 rows and
#ncol(total_acc_y_train) has 128 col
#head(total_acc_y_train)
total_acc_y_test_means <- rowMeans(total_acc_y_test)
total_acc_y_test_std <- apply(total_acc_y_test,1, sd, na.rm = TRUE)
total_acc_y_test_ <- data.frame(total_acc_y_test_means,total_acc_y_test_std)  #X_train_
head(total_acc_y_test_)


total_acc_z_test <- read.table("./test/Inertial Signals/total_acc_z_test.txt", sep="", header=FALSE)
#nrow(total_acc_z_train) has 7352 rows and
#ncol(total_acc_z_train) has 128 col
#head(total_acc_z_train)
total_acc_z_test_means <- rowMeans(total_acc_z_test)
total_acc_z_test_std <- apply(total_acc_z_test,1, sd, na.rm = TRUE)
total_acc_z_test_ <- data.frame(total_acc_z_test_means,total_acc_z_test_std)  #X_train_
head(total_acc_z_test_)




test_data <- cbind(X_test_,Y_test_,subject_test_,body_acc_x_test_,body_acc_y_test_,body_acc_z_test_, body_gyro_x_test_,
                    body_gyro_y_test_, body_gyro_z_test_, total_acc_x_test_, total_acc_y_test_, total_acc_z_test_)

names(test_data) <- names(train_data)

all_data <- rbind(train_data,test_data)
#nrow(all_data)
#ncol(all_data)

write.table(all_data, "all_data.txt", row.name=FALSE)
