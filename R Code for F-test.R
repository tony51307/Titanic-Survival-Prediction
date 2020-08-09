install.packages("dplyr")
library(dplyr)

## check the homogeneity of variance for "Age"
dat = read.csv(file.choose())
d1=filter(dat,Survived==0)
d2=filter(dat,Survived==1)
var.test(unlist(d1["Age"]), unlist(d2["Age"]),ratio = 1, alternative="two.sided")
## result: p-value 0.317
