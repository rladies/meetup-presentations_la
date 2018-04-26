setwd("Dropbox/Office/R_Ladies/LA-city-data")
library(magrittr)

rm(list=ls())

jobs.dept.gender <- read.csv("Gender_Breakdown_of_City_Workers_by_Department.csv")
## we could also use the option stringsAsFactors=FALSE

head(jobs.dept.gender)

is.numeric(jobs.dept.gender$Male.Average.Salary)

jobs.dept.gender$Male.Average.Salary.Float <- sapply(as.character(jobs.dept.gender$Male.Average.Salary),function(x) substr(x,2,nchar(x))) %>% as.numeric()

jobs.dept.gender$Female.Average.Salary.Float <- sapply(as.character(jobs.dept.gender$Female.Average.Salary),function(x) substr(x,2,nchar(x))) %>% as.numeric()

nrow(jobs.dept.gender)

plot(1:40,jobs.dept.gender$Female.Average.Salary.Float,type="b",col="red",xaxt="n", xlab="Department", ylab="Average Salary",ylim=c(0, 1.1*max(c(jobs.dept.gender$Female.Average.Salary.Float,jobs.dept.gender$Male.Average.Salary.Float))))
points(1:40,jobs.dept.gender$Male.Average.Salary.Float,type="b",col="blue",xaxt="n")

plot(1:40,jobs.dept.gender$Female.Average.Salary.Float/jobs.dept.gender$Male.Average.Salary.Float,type="b",xaxt="n", xlab="Department", ylab="Pay Gap")
points(c(1,40),c(1,1),type="l",lty=3)

jobs.dept.gender[jobs.dept.gender$Female.Average.Salary.Float/jobs.dept.gender$Male.Average.Salary.Float < 0.5,]


jobs.apps.2013 <- read.csv("Applicant_Information_From_7-1-2013_To_6-30-2014.csv")
head(jobs.apps.2013)

jobs.apps.2014 <- read.csv("Applicant_Information_From_7-1-2014_To_9-30-2014.csv")

jobs.apps.2013$Job.Description

jobs.dept.gender$Department.Title


sapply(as.character(jobs.apps.2013$Job.Number),function(x) substr(x,1,4)) %>% as.numeric()

