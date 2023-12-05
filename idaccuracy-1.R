#这个能传递倒是，没有把2中代码加进来
getwd()
setwd("C:/Users/Administrator/Documents/rstudio_work")

args <- commandArgs(trailingOnly = TRUE)
path <- args[1]
args <- c("D:/桌面/work1/Aminer_data")
path <- args[1]
print(path)