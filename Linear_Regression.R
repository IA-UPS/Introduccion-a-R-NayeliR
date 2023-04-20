#Father and son heights
head(father.son)
ggplot()+geom_point(data=father.son,aes(x=fheight,y=sheight))
x <- c(60,75)
y <- c(63,78)
line <- data.frame(x,y)
ggplot()+
  geom_point(data=father.son,aes(x=fheight,y=sheight))+
  geom_line(data=line,aes(x=x,y=y))

#Residual visualization
head(father.son)
x <- father.son$fheight
y <- father.son$sheight
group <- 1:1078
dat <-data.frame(x,y,group)
y <- x+3
means <- data.frame(x,y,group)
head(dat)
head(means)
ggplot()+geom_point(data=dat,aes(x=x,y=y))+
  geom_point(data=means,aes(x=x,y=y),color="red")
x <- c(50,80)
y <- x+3
line <- data.frame(x,y)
ggplot()+geom_point(data=dat,aes(x=x,y=y))+
  geom_point(data=means,aes(x=x,y=y),color="red")+
  geom_line(data=line,aes(x=x,y=y))
d <- rbind(dat,means)
head(dat)
head(means)
head(d)
ggplot()+geom_point(data=dat,aes(x=x,y=y))+
  geom_point(data=means,aes(x=x,y=y),color="red")+
  geom_line(data=line,aes(x=x,y=y))+
  geom_line(data=d,aes(x=x,y=y,group=group))

#Sum of squared residuals
head(means$y)
head(dat$y)
head(means$y-dat$y)
(means$y-dat$y)^2
head((means$y-dat$y)^2)
sum((means$y-dat$y)^2)

#Least squares line
lm(y~x,data=dat)
slope <- 0.5141
intercept <- 33.8866
x <- c(57,78)
y <- slope*x+intercept
line <- data.frame(x,y)
ggplot()+geom_point(data=dat,aes(x=x,y=y))+
  geom_point(data=means,aes(x=x,y=y),color="red")+
  geom_line(data=line,aes(x=x,y=y))+
  geom_line(data=d,aes(x=x,y=y,group=group))
x <- means$x
y <- slope*x+intercept
means <- data.frame(x,y,group)
ggplot()+geom_point(data=dat,aes(x=x,y=y))+
  geom_point(data=means,aes(x=x,y=y),color="red")+
  geom_line(data=line,aes(x=x,y=y))+
  geom_line(data=d,aes(x=x,y=y,group=group))
d <- rbind(dat,means)
ggplot()+geom_point(data=dat,aes(x=x,y=y))+
  geom_point(data=means,aes(x=x,y=y),color="red")+
  geom_line(data=line,aes(x=x,y=y))+
  geom_line(data=d,aes(x=x,y=y,group=group))

#Prediction
ggplot()+geom_line(data=line,aes(x=x,y=y))
lm(y~x, data=dat)
y <- 0.5141*70+33.8866