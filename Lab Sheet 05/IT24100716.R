setwd("C:\\Users\\it24100716\\Desktop\\Lab5")

getwd()

data <- read.table("Data.txt", header=TRUE,sep =",")
data

fix(data)

names(data)<-c("X1","X2")
data


attach(data)

hist(X2,main="Histrogram for Number of Shareholders")

histogram <- hist (X2,main="Histogram for Number of Shareholders",breaks = seq(130,270,length = 8),right = FALSE)
?hist

breaks <- round(histogram$breaks)

freq <- histogram$counts

mids <- histogram$mids

classes <- c()

for (i in 1:length(breaks)-1){
  classes[i] <- paste0("[",breaks[i],",",breaks[i+1], ")")
  
}

cbind(classes = classes, frequency = freq )


lines (mids,freq)

plot(mids,freq,type ='l', main="Frequency polygon for Shareholders",xlab = "shareholders", ylab ="Frequency", ylim = c(0,max(freq)))


cum.freq <- cumsum(freq)

new <-c()


for(i in l:length(braks)){
  if(i==1){
    new[i]=0
    
  }else{
    new[i] = cum.freq[i-1]
    
  }
  
}

plot(breaks , new, type = 'l',main = "Cumalative Frequency Polygon for Delivery Time",xlab = "Delivery Time",ylab = "Cumulative Frequence",ylim = c(0,max(cum.freq)))
cbind(Upper = breaks,Cumfreq = new)
