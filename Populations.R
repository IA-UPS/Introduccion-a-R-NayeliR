# Normal populations
sample(1:10,100,replace=TRUE)
rnorm(100,50,10)

#Plot vertical sample
rep(1,100)
x <- rep(1,100)
y <- rnorm(100,50,10)
dat<- data.frame(x,y)
x <- 1
y <- 50
mean <- data.frame(x,y)
ggplot()+geom_point(data=dat,aes(x=x,y=y))+
  geom_point(data=mean,aes(x=x,y=y),size=7,color="red")

#Plot several vertical sample
x <- rep(1,100)
x <- c(x,rep(9,100))
x <- c(x, rep(15,100))
y <- rnorm(100,50,10)
y <- c(y,rnorm(100,30,10))
y <- c(y,rnorm(100,78,10))
dat <- data.frame(x,y)
x <- c(1,9,15)
y <- c(50,30,78)
means <- data.frame(x,y)
ggplot()+geom_point(data=dat,aes(x=x,y=y))+
  geom_point(data=means,aes(x=x,y=y),size=7,color="red")

#Samples line
x <- c(0,25)
y <- 3*x+1
line <- data.frame(x,y)
ggplot()+geom_line(data =line, aes(x=x,y=y))

x <- c(1,9,15,22)
y <- 3*x+1
ggplot()+
  geom_line(data =line,aes(x=x,y=y))+
  geom_point(data=means,aes(x=x,y=y),size=7,color="red")

x <- c(rep(1,100),rep(9,100),rep(15,100),rep(22,100))
y <- c(rnorm(100,4,10),rnorm(100,28,10),rnorm(100,46,10),rnorm(100,67,10))
dat <- data.frame(x,y)
ggplot()+
  geom_line(data =line,aes(x=x,y=y))+
  geom_point(data=means,aes(x=x,y=y),size=7,color="red")+
  geom_point(data=dat,aes(x=x,y=y))

#Sapply
x<-c(2,4,9,15)
sqrt(x)
x^2
sapply(x,function(x) sqrt(x))
sapply(x, function(x) x^2)
sapply(x, function(x) rnorm(1,x,10))

#Cloud of points
x <- rnorm(100,10,5)
y <- 3*x+1
means<-data.frame(x,y)
ggplot()+
  geom_point(data=means,aes(x=x,y=y),color="red")

x <- c(-5,25)
y <- 3*x+1
line <- data.frame(x,y)
ggplot()+
  geom_point(data=means,aes(x=x,y=y),color="red")+
  geom_line(data=line,aes(x=x,y=y))

ggplot()+
  geom_point(data=means,aes(x=x,y=y),color="red")+
  geom_line(data=line,aes(x=x,y=y))+
  scale_x_continuous(limits=c(-10,30))+
  scale_y_continuous(limits=c(-20,80))

x <- means$x
y <- sapply(x, function(x) rnorm(1,3*x+1,10))
dat <- data.frame(x,y)
ggplot()+
  geom_point(data=means,aes(x=x,y=y),color="red")+
  geom_line(data=line,aes(x=x,y=y))+
  scale_x_continuous(limits=c(-10,30))+
  scale_y_continuous(limits=c(-20,80))+
  geom_point(data=dat,aes(x=x,y=y))

ggplot()+
  scale_x_continuous(limits=c(-10,30))+
  scale_y_continuous(limits=c(-20,80))+
  geom_point(data=dat,aes(x=x,y=y))
