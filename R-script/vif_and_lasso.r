getwd()

library(glmnet)
library(dplyr)
library(tidyr)
library(fmsb)


df <- read.csv('all_variables.csv')
df <- df %>% drop_na()

colnames(select(df, contains('ECON')))
colnames(select(df, contains('AIR')))
colnames(select(df, contains('OIL')))
colnames(select(df, contains('CHEM')))
colnames(select(df, contains('OTHERS')))

# choose the target variable
target = select(df, contains("TARGET")&contains('SPECIALTY')&-contains('NON')) 
# locate indicators
indicator = select(df, -contains("TARGET")&-contains("date")&-contains("leadingInd|uS10|consumerOp"))


## 1 Remove Collinearity using VIF
vif_func<-function(in_frame,thresh=10,trace=T,...){
  if(any(!'data.frame' %in% class(in_frame))) in_frame<-data.frame(in_frame)
  
  #get initial vif value for all comparisons of variables
  vif_init<-NULL
  var_names <- names(in_frame)
  for(val in var_names){
    regressors <- var_names[-which(var_names == val)]
    form <- paste(regressors, collapse = '+')
    form_in <- formula(paste(val, '~', form))
    vif_init<-rbind(vif_init, c(val, VIF(lm(form_in, data = in_frame, ...))))
  }
  vif_max<-max(as.numeric(vif_init[,2]), na.rm = TRUE)
  
  if(vif_max < thresh){
    if(trace==T){ #print output of each iteration
      prmatrix(vif_init,collab=c('var','vif'),rowlab=rep('',nrow(vif_init)),quote=F)
      cat('\n')
      cat(paste('All variables have VIF < ', thresh,', max VIF ',round(vif_max,2), sep=''),'\n\n')
    }
    return(var_names)
  }
  else{
    
    in_dat<-in_frame
    
    #backwards selection of explanatory variables, stops when all VIF values are below 'thresh'
    while(vif_max >= thresh){
      
      vif_vals<-NULL
      var_names <- names(in_dat)
      
      for(val in var_names){
        regressors <- var_names[-which(var_names == val)]
        form <- paste(regressors, collapse = '+')
        form_in <- formula(paste(val, '~', form))
        vif_add<-VIF(lm(form_in, data = in_dat, ...))
        vif_vals<-rbind(vif_vals,c(val,vif_add))
      }
      max_row<-which(vif_vals[,2] == max(as.numeric(vif_vals[,2]), na.rm = TRUE))[1]
      
      vif_max<-as.numeric(vif_vals[max_row,2])
      
      if(vif_max<thresh) break
      
      if(trace==T){ #print output of each iteration
        prmatrix(vif_vals,collab=c('var','vif'),rowlab=rep('',nrow(vif_vals)),quote=F)
        
        cat('removed: ',vif_vals[max_row,1],vif_max,'\n')
        flush.console()
      }
      in_dat<-in_dat[,!names(in_dat) %in% vif_vals[max_row,1]]
    }
    
    return(names(in_dat))
    
  }
  
}
cols = vif_func(indicator)
cols
indicator_filtered = indicator[cols]

## 2 Feature Selection using LASSO
# let alpha = 1 to use lasso regression
lassoreg<- glmnet(x=as.matrix(indicator_filtered),y=as.matrix(target), standardize=TRUE, intercept=FALSE, alpha=1)

# get non-zero featuers
myCoefs <- coef(lassoreg, s=0.1) # use regularization strength lambda=1
myResults <- data.frame(
  features = myCoefs@Dimnames[[1]][ which(myCoefs != 0 ) ], #intercept included
  coefs    = myCoefs              [ which(myCoefs != 0 ) ]  #intercept included
)
myResults

indicator_selected = df[myResults$features]
