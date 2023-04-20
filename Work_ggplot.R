#Plotting point
a <- 4
b <- 9
dat <- data.frame(a,b)
library(ggplot2)
ggplot()+geom_point(data=dat,aes(x=a,y=b),size=5,color="blue")
ggplot()+geom_point(data=dat,aes(x=a,y=b),size=10,color="red")

#Control Axis
x <- c(2,5,1)
y <- c(6,4,9)
dat <- data.frame(x,y)
ggplot()+geom_point(data=dat,aes(x=x,y=y),size=5,color="blue")
ggplot()+geom_point(data=dat,aes(x=x,y=y),size=5,color="red")
ggplot()+geom_point(data=dat,aes(x=x,y=y),size=5,color="red")+
  scale_x_continuous(limits = c(0,15))+
  scale_y_continuous(limits=c(0,15))
seq(0,15,1)
seq(0,15,5)
ggplot()+geom_point(data=dat,aes(x=x,y=y),size=5,color="red")+
  scale_x_continuous(limits = c(0,15),breaks=seq(0,15,1))+
  scale_y_continuous(limits=c(0,15),breaks=seq(0,15,1))

ggplot()+geom_point(data=dat,aes(x=x,y=y),size=5,color="red")+
  scale_x_continuous(limits = c(0,15),breaks=seq(0,15,5))+
  scale_y_continuous(limits=c(0,15),breaks=seq(0,15,5))

#Color and shape
ggplot()+geom_point(data=dat,aes(x=x,y=y),size=5,color="cadetblue1")+
  scale_x_continuous(limits = c(0,15),breaks=seq(0,15,5))+
  scale_y_continuous(limits=c(0,15),breaks=seq(0,15,5))

ggplot()+geom_point(data=dat,aes(x=x,y=y),size=5,color="forestgreen",shape=10)+
  scale_x_continuous(limits = c(0,15),breaks=seq(0,15,5))+
  scale_y_continuous(limits=c(0,15),breaks=seq(0,15,5))

ggplot()+geom_point(data=dat,aes(x=x,y=y),size=5,color="forestgreen",shape=25)+
  scale_x_continuous(limits = c(0,15),breaks=seq(0,15,5))+
  scale_y_continuous(limits=c(0,15),breaks=seq(0,15,5))

ggplot()+geom_point(data=dat,aes(x=x,y=y),size=5,color="forestgreen",shape=112)+
  scale_x_continuous(limits = c(0,15),breaks=seq(0,15,5))+
  scale_y_continuous(limits=c(0,15),breaks=seq(0,15,5))

#Graph line
x1 <- c(1,8)
y1 <- c(3,10)
dat1 <- data.frame(x1,y1)
ggplot()+geom_line(data=dat1,aes(x=x1,y=y1))
dat1$x1
dat1$x1<-c(-2,7)
dat1$y1<-c(13,-5)
ggplot()+geom_line(data=dat1,aes(x=x1,y=y1))

#Lines
x2 <- c(0,10)
y2 <- 3*x2+1
dat2 <- data.frame(x2,y2)
ggplot()+geom_line(data=dat2,aes(x=x2,y=y2))

y2 <--5*x2-7
dat2<-data.frame(x2,y2)
ggplot()+geom_line(data=dat2,aes(x=x2,y=y2))

y2<-.5*x2-.73
dat2<-data.frame(x2,y2)
ggplot()+geom_line(data=dat2,aes(x=x2,y=y2))
