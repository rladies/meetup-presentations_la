

rm(list=ls())

data(state)

#head(state.x77)
colnames(state.x77)[4] <- "Life.Exp"

states.data <- as.data.frame(state.x77)

## q plot

plot(states.data$Income,states.data$Life.Exp)

plot(states.data$Income,states.data$Life.Exp, xlab="Income", ylab="Life.Exp",main="Income v. Life Expectancy")

plot(states.data$Income,states.data$Life.Exp, xlab="Income", ylab="Life.Exp",main="Income v. Life Expectancy",pch=20)

plot(states.data$Income,states.data$Life.Exp, xlab="Income", ylab="Life.Exp",main="Income v. Life Expectancy", pch=20,xaxt="n")
axis(1,at=seq(3000,6000,by=1000))

plot(states.data$Income,states.data$Life.Exp, xlab="Income", ylab="Life.Exp",main="Income v. Life Expectancy", pch=20, xaxt="n", yaxt="n")
axis(1,at=seq(3000,6000,by=1000))
axis(2,at=seq(68,72,by=2))

myxlim=c(2900,6400)
myylim=c(67.8,73.9)
plot(0,0,type="n",bty="n", xaxt="n", yaxt="n",xlim=myxlim,ylim=myylim, xlab="Income", ylab="Life.Exp", main="Income v. Life Expectancy")
polygon(rep(myxlim,each=2),c(myylim,myylim[2],myylim[1]), col="lightgrey",border=FALSE)
for (x in seq(3000,6000,by=500)){
	for (y in seq(68,73)){
		points(c(x,x),myylim,type="l",col="white")
		points(myxlim,c(y,y),type="l",col="white")
	}
}
points(states.data$Income,states.data$Life.Exp,pch=20)
axis(1,at=seq(3000,6000,by=1000),col="white")
axis(2,at=seq(68,72,by=2),col="white")

myxlim=c(2900,6400)
myylim=c(67.8,73.9)
par(cex=0.8,mgp=c(1,0.5,0))
plot(0,0,type="n",bty="n", xaxt="n", yaxt="n",xlim=myxlim,ylim=myylim, xlab="Income", ylab="Life.Exp", main="Income v. Life Expectancy")
polygon(rep(myxlim,each=2),c(myylim,myylim[2],myylim[1]), col="lightgrey",border=FALSE)
for (x in seq(3000,6000,by=500)){
	for (y in seq(68,73)){
		points(c(x,x),myylim,type="l",col="white")
		points(myxlim,c(y,y),type="l",col="white")
	}
}
points(states.data$Income,states.data$Life.Exp,pch=20)
axis(1,at=seq(3000,6000,by=1000),tick=FALSE,line=-1)
axis(2,at=seq(68,72,by=2),tick=FALSE,line=-1)


############## facetting plot pop under/over 2000

pop.bool <- states.data$Population > 2000
par(mfrow=c(1,2))

myxlim=c(2900,6400)
myylim=c(67.8,73.9)
par(cex=0.8,mgp=c(1,0.5,0))
plot(0,0,type="n",bty="n", xaxt="n", yaxt="n",xlim=myxlim,ylim=myylim, xlab="Income", ylab="Life.Exp", main="Income v. Life Expectancy")
polygon(rep(myxlim,each=2),c(myylim,myylim[2],myylim[1]), col="lightgrey",border=FALSE)
for (x in seq(3000,6000,by=500)){
	for (y in seq(68,73)){
		points(c(x,x),myylim,type="l",col="white")
		points(myxlim,c(y,y),type="l",col="white")
	}
}
points(states.data$Income[pop.bool],states.data$Life.Exp[pop.bool],pch=20)
axis(1,at=seq(3000,6000,by=1000),tick=FALSE,line=-1)
axis(2,at=seq(68,72,by=2),tick=FALSE,line=-1)

myxlim=c(2900,6400)
myylim=c(67.8,73.9)
par(cex=0.8,mgp=c(1,0.5,0))
plot(0,0,type="n",bty="n", xaxt="n", yaxt="n",xlim=myxlim,ylim=myylim, xlab="Income", ylab="Life.Exp", main="Income v. Life Expectancy")
polygon(rep(myxlim,each=2),c(myylim,myylim[2],myylim[1]), col="lightgrey",border=FALSE)
for (x in seq(3000,6000,by=500)){
	for (y in seq(68,73)){
		points(c(x,x),myylim,type="l",col="white")
		points(myxlim,c(y,y),type="l",col="white")
	}
}
points(states.data$Income[!pop.bool],states.data$Life.Exp[!pop.bool],pch=20)
axis(1,at=seq(3000,6000,by=1000),tick=FALSE,line=-1)
axis(2,at=seq(68,72,by=2),tick=FALSE,line=-1)

##

pop.bool <- states.data$Population > 2000
par(mfrow=c(1,2))

myxlim=c(2900,6400)
myylim=c(67.8,73.9)
par(cex=0.8,mgp=c(1,0.5,0))
plot(0,0,type="n",bty="n", xaxt="n", yaxt="n",xlim=myxlim,ylim=myylim, xlab="", ylab="")
polygon(rep(myxlim,each=2),c(myylim,myylim[2],myylim[1]), col="lightgrey",border=FALSE)
for (x in seq(3000,6000,by=500)){
	for (y in seq(68,73)){
		points(c(x,x),myylim,type="l",col="white")
		points(myxlim,c(y,y),type="l",col="white")
	}
}
points(states.data$Income[pop.bool],states.data$Life.Exp[pop.bool],pch=20)
axis(1,at=seq(3000,6000,by=1000),tick=FALSE,line=-1)
axis(2,at=seq(68,72,by=2),tick=FALSE,line=-1)

myxlim=c(2900,6400)
myylim=c(67.8,73.9)
par(cex=0.8,mgp=c(1,0.5,0))
plot(0,0,type="n",bty="n", xaxt="n", yaxt="n",xlim=myxlim,ylim=myylim, xlab="", ylab="")
polygon(rep(myxlim,each=2),c(myylim,myylim[2],myylim[1]), col="lightgrey",border=FALSE)
for (x in seq(3000,6000,by=500)){
	for (y in seq(68,73)){
		points(c(x,x),myylim,type="l",col="white")
		points(myxlim,c(y,y),type="l",col="white")
	}
}
points(states.data$Income[!pop.bool],states.data$Life.Exp[!pop.bool],pch=20)
axis(1,at=seq(3000,6000,by=1000),tick=FALSE,line=-1)

##

pop.bool <- states.data$Population > 2000
par(mfrow=c(1,2),cex=0.8,oma=c(3,3,3,1),mar=c(1,0.1,0,0.1),xpd=NA)

myxlim=c(2900,6400)
myylim=c(67.8,73.9)
par(cex=0.8,mgp=c(1,0.5,0))
plot(0,0,type="n",bty="n", xaxt="n", yaxt="n",xlim=myxlim,ylim=myylim, xlab="", ylab="")
polygon(rep(myxlim,each=2),c(myylim,myylim[2],myylim[1]), col="lightgrey",border=FALSE)
for (x in seq(3000,6000,by=500)){
	for (y in seq(68,73)){
		points(c(x,x),myylim,type="l",col="white")
		points(myxlim,c(y,y),type="l",col="white")
	}
}
points(states.data$Income[pop.bool],states.data$Life.Exp[pop.bool],pch=20)
axis(1,at=seq(3000,6000,by=1000),tick=FALSE,line=-1)
axis(2,at=seq(68,72,by=2),tick=FALSE,line=-1)
mtext("Life.Exp",2,line=1,outer=TRUE,at=0.5)


myxlim=c(2900,6400)
myylim=c(67.8,73.9)
par(cex=0.8,mgp=c(1,0.5,0))
plot(0,0,type="n",bty="n", xaxt="n", yaxt="n",xlim=myxlim,ylim=myylim, xlab="", ylab="")
polygon(rep(myxlim,each=2),c(myylim,myylim[2],myylim[1]), col="lightgrey",border=FALSE)
for (x in seq(3000,6000,by=500)){
	for (y in seq(68,73)){
		points(c(x,x),myylim,type="l",col="white")
		points(myxlim,c(y,y),type="l",col="white")
	}
}
points(states.data$Income[!pop.bool],states.data$Life.Exp[!pop.bool],pch=20)
axis(1,at=seq(3000,6000,by=1000),tick=FALSE,line=-1)
mtext("Income",1,line=0.5,at=0.5,outer=TRUE)

##

pop.bool <- states.data$Population > 2000
par(mfrow=c(1,2),cex=0.8,oma=c(3,3,3,1),mar=c(1,0.1,0,0.1),xpd=NA)

myxlim=c(2900,6400)
myylim=c(67.8,73.9)
par(cex=0.8,mgp=c(1,0.5,0))
plot(0,0,type="n",bty="n", xaxt="n", yaxt="n",xlim=myxlim,ylim=myylim, xlab="", ylab="")
polygon(rep(myxlim,each=2),c(myylim,myylim[2],myylim[1]), col="lightgrey",border=FALSE)
for (x in seq(3000,6000,by=500)){
	for (y in seq(68,73)){
		points(c(x,x),myylim,type="l",col="white")
		points(myxlim,c(y,y),type="l",col="white")
	}
}
points(states.data$Income[pop.bool],states.data$Life.Exp[pop.bool],pch=20)
axis(1,at=seq(3000,6000,by=1000),tick=FALSE,line=-1)
axis(2,at=seq(68,72,by=2),tick=FALSE,line=-1)
mtext("Life.Exp",2,line=1,outer=TRUE,at=0.5)
polygon(rep(myxlim,each=2),myylim[2]+c(0,0.35,0.35,0),col="darkgrey",border=FALSE)
mtext("Pop Above 2000",outer=TRUE,line=-1,at=0.25)

myxlim=c(2900,6400)
myylim=c(67.8,73.9)
par(cex=0.8,mgp=c(1,0.5,0))
plot(0,0,type="n",bty="n", xaxt="n", yaxt="n",xlim=myxlim,ylim=myylim, xlab="", ylab="")
polygon(rep(myxlim,each=2),c(myylim,myylim[2],myylim[1]), col="lightgrey",border=FALSE)
for (x in seq(3000,6000,by=500)){
	for (y in seq(68,73)){
		points(c(x,x),myylim,type="l",col="white")
		points(myxlim,c(y,y),type="l",col="white")
	}
}
points(states.data$Income[!pop.bool],states.data$Life.Exp[!pop.bool],pch=20)
axis(1,at=seq(3000,6000,by=1000),tick=FALSE,line=-1)
mtext("Income",1,line=0.5,at=0.5,outer=TRUE)
polygon(rep(myxlim,each=2),myylim[2]+c(0,0.35,0.35,0),col="darkgrey",border=FALSE)
mtext("Pop Under 2000",outer=TRUE,line=-1,at=0.75)

##
