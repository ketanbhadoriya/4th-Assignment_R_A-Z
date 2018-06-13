#Start of the Script

#Loading the data
Chicago <- read.csv("Chicago-F.csv",row.names = 1)
head(Chicago)

NewYork <- read.csv("NewYork-F.csv",row.names = 1)
head(NewYork)

Houston <- read.csv("Houston-F.csv",row.names = 1)
head(Houston)

SanFrancisco <- read.csv("SanFrancisco-F.csv",row.names = 1)
head(SanFrancisco)

#Coverting the DataFrames into Matrices

Chicago <- as.matrix(Chicago)
NewYork <- as.matrix(NewYork)
Houston <- as.matrix(Houston)
SanFrancisco <- as.matrix(SanFrancisco)

#Putting all of the above matrices into list
Weather <- list(Chicago = Chicago,
                NewYork = NewYork,
                Houston = Houston,
                SanFrancisco = SanFrancisco)

Weather

Weather[3]
Weather[[3]]

#Calculating the Averages
Chicago_monthly_average <- apply(Chicago, 1,mean)
Chicago_monthly_average

#Using lapply()
lapply(Weather,t)

lapply(Weather, rbind, NewRow = 1:12)
lapply(Weather, "[",1,1) #Weather[[1]][1,1]

lapply(Weather, function(x) x[1,])

sapply(Weather,"[",1,1)

round(sapply(Weather,rowMeans),2)
Weather
sapply(Weather,apply,1,max)


#which.max() and which.min() functions
sapply(Weather,apply,1,function(x) names(which.max(x)))
