#library init============================
library (dplyr)
library (tidyr)
library (data.table)
library (caret)

#data load ==============================
df_train<-fread("data/train.csv",data.table = FALSE)
nzv <- nearZeroVar(df_train,saveMetrics = TRUE)
 training<-df_train[,!nzv$nzv]
# 
# 
# set.seed(123)
# modelFit <- train(TARGET ~ ., data = training[,-1],  method="parRF", tuneGrid=data.frame(mtry=5),trControl=trainControl(method='cv'))
