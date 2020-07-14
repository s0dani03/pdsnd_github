
ny = read.csv('new_york_city.csv')
wash = read.csv('washington.csv')
chi = read.csv('chicago.csv')

head(ny)

head(wash)

head(chi)

library(ggplot2)

summary(ny$User.Type)

qplot(x=User.Type, data=ny, stat="count",
      xlab='User Type', ylab='User count by type',
      color=I('green'), fill=I('#F79420'), main="Number of user types in NY")



library(ggplot2)

summary(chi$User.Type)

qplot(x=User.Type, data=chi, stat="count",
      xlab='User Type', ylab='User count by type',
      color=I('red'), fill=I('#F79420'), main="Number of user types in Chi")

library(ggplot2)

summary(wash$User.Type)

qplot(x=User.Type, data=wash, stat="count",
      xlab='User Type', ylab='User count by type',
      color=I('red'), fill=I('#F79420'), main="Number of user types in Wash")

summary(ny$Start.Station)

count <- table(ny$Start.Station)

x=tail(sort(count),5)

barplot(x, main="Top 5 Starting Station in New York",

xlab="Starting station", ylab="Number of occurence", las=2)

summary(chi$Start.Station)

count <- table(chi$Start.Station)

x=tail(sort(count),5)

barplot(x, main="Top 5 Starting Station in Chicago",

xlab="Starting station", ylab="Number of occurence", las=2)

summary(wash$Start.Station)

count <- table(wash$Start.Station)

x=tail(sort(count),5)

barplot(x, main="Top 5 Starting Station in Washington",

xlab="Starting station", ylab="Number of occurence", las=2)

summary(ny$Trip.Duration)

#1

ny0=na.omit(ny[,1:7])

#2

e=mean(ny0$Trip.Duration)

#3

means<-c(e)

#4

xx<-barplot(means, main = "Mean rental time in seconds",

ylab = "Average",

xlab = "City",

ylim = c(0,1800),

names.arg="New York",

las=1,

col = 'blue', border='yellow')

#5

text(x=xx, y=means, labels = means, pos = 3, col = "black")


summary(chi$Trip.Duration)

#1

chi0=na.omit(chi[,1:7])

#2

e=mean(chi0$Trip.Duration)

#3

means<-c(e)

#4

xx<-barplot(means, main = "Mean rental time in seconds",

ylab = "Average",

xlab = "City",

ylim = c(0,1800),

names.arg="Chicago",

las=1,

col = 'blue', border='yellow')

#5

text(x=xx, y=means, labels = means, pos = 3, col = "black")


summary(wash$Trip.Duration)

#1

wash0=na.omit(wash[,1:7])

#2

e=mean(wash0$Trip.Duration)

#3

means<-c(e)

#4

xx<-barplot(means, main = "Mean rental time in seconds",

ylab = "Average",

xlab = "City",

ylim = c(0,1800),

names.arg="Washington",

las=1,

col = 'blue', border='yellow')

#5

text(x=xx, y=means, labels = means, pos = 3, col = "black")


system('python -m nbconvert Explore_bikeshare_data.ipynb')
