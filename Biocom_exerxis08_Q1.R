#read the data from UWVMSu file  
data= read.table("UWvMSU_1-22-13.txt", header = TRUE, sep = "")

###initialize the vector to sum the score of UW and MSU

Uscore = vector(mode="numeric", nrow(data))

Mscore = vector(mode="numeric", nrow(data))

### Initializing the variables
X = 0
Y=0

for (i in 1:nrow(data))
{
  if (data$team[i] == "UW"){
    Uscore[i] = X + data$score[i]
    Mscore[i] = Y
    X = Uscore[i]### this command is use for repeat the same MSU score when UW is scoring 
  }else{
    Mscore[i] = Y + data$score[i] ### Mscore vector adding all the score for MSU one by one
    Uscore[i] = X
    Y = Mscore[i]  ### this command is use for repeat the same UW score when MSU is scoring 
    
  }
  
}


### use plot command to generate the graph for UW  
plot(data$time,Uscore,type = "l",lwd=3, col = "red", xlab = "Time(min)", ylab = "Score",
     main = "UW vs MSU")
### lines function is used here to plot the 2nd graph of MSW
lines(data$time,Mscore, type = "l",lwd=3, col = "blue")

grid(nx = 5, ny = 5, 
     lty = 1,      # Grid line type
     col = "gray", # Grid line color
     lwd = 1)
### for creating some legend
legend("topleft", legend=c("UW score", "MSU score"),col=c("red", "blue"), lty=1:2, cex=1)



