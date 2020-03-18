# Libraries

library(tidyverse)
library(janitor)
library(tseries)
library(stats)
library(forecast)
library(leaps)

# Directories
data_path = './Data/all_variables.csv'

# Load data
data <- read_csv(data_path,na = c("NA"))

# 1 Check target variables stationarity
data <- clean_names(data)
data$market_target_relative <- NULL
target <- data[2:41,grep('target_relative',colnames(data))]
predictors <- data[2:41,-grep('target_relative|date',colnames(data))]

non.stat.adf <- NULL
for(col in colnames(target)){
  pvalue <- adf.test(target[[col]],alternative = 'stationary')$p.value
  if(pvalue > .05){
    print(paste(col,"is NOT stationarity"))
    non.stat.adf <- c(non.stat.adf,col)
  }
}

non.stat.kpss<- NULL
for(col in colnames(target)){
  pvalue <- kpss.test(target[[col]])$p.value
  if(pvalue < .05){
    print(paste(col,"is NOT stationarity"))
    non.stat.kpss <- c(non.stat.kpss,col)
  }
}

non.stat.adf
# plot target var
par(mar = rep(3,4))
par(mfrow=c(4,2))
for(col in colnames(target)){
  plot(x=seq(1,40), y=t(target[col]))
  lines(x=seq(1,40), y=t(target[col]))
  if (is.element(col,non.stat.adf))
    {title(paste(col, 'NON_STATIONARY'))}
  else
    {title(col)}
}


seq(1,40)
t(target[col])

# 2 Check autocorrelation
par(mar = rep(3,4))
par(mfrow=c(4,2))
for(col in colnames(target)){
  acf(target[col], main = col)
}

par(mar = rep(3,4))
par(mfrow=c(4,2))
for(col in colnames(target)){
  pacf(target[col], main = col)
}


# Check if timeseries model is needed
for(col in colnames(target)){
  print(col)
  print(auto.arima(target[col]))
}



# Stepwise Selection
#Other sectors variables
special_subset <- predictors[,-grep('_chem|others_fundam|econ',colnames(predictors))]
leapSet <- leaps(x=special_subset, 
                 y=target$specialty_target_relative, 
                 nbest = 1, 
                 method = "adjr2") 
selectVarsIndex <- leapSet$which[5, ]
colnames(special_subset[selectVarsIndex])

#Same sector variables
special_subset <- predictors[,grep('_chem|others_fundam|econ',colnames(predictors))]
leapSet <- leaps(x=special_subset, 
                 y=target$specialty_target_relative, 
                 nbest = 1, 
                 method = "adjr2") 
selectVarsIndex <- leapSet$which[5, ]
colnames(special_subset[selectVarsIndex])

# 
#model.aic.both <- step(lm.null, 
#                       direction = "both", 
#                       trace = 1, 
#                       scope = ~ age + lwt + race.cat + smoke + preterm + ht + ui + ftv.cat)
