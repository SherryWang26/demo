sample<-read.csv("C:\\Users\\sapg0615ww\\Desktop\\PI Plot\\sample.csv")
library(ggplot2)
ggplot(sample, aes(colour=person)) + 
    geom_segment(aes(x=start, xend=end, y=person, yend=person), size=3) +
    xlab("Duration")

p<-ggplot(Data_3, aes(colour=Acft)) + 
    geom_segment(aes(x=Dept_4, xend=Arrv_4, y=ID, yend=ID), size=3) +
    xlab("Duration")

p + geom_text(x=Data_3$Dept_4,  y=Data_3$Acft, label=rownames(Data_3$City.Pair))