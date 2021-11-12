
##initializing variable for loops
y =1
x = 0

### Use while loop here in order to play the guess game again and again 
while (y ==1) {
## generating random number using a sample function 
### first argument in sample function is range and the second one is size of the vector
  randomnum =  sample(1:100, 1)
  print("I am think of number from 1 to 100")

  
  ### for loop is ruining 10 time in order to give 10 turns to the users
  for (i in 1:10){
    x = x+1
    Userinput <- readline(prompt="Guess: ") ### taking user input
    if (Userinput < randomnum) ### checking User input is less than random numbers or not
    {
      
      print("Your guess is lower")
      
    }else if(Userinput > randomnum){ ### checking User input is higher than random numbers or not
      
      print("Your guess is higher")
      
    }else{
      print("Great! Your Guess number is correct")
      break
    } 
    }
  
  if (x ==10){
    print(" Your time is up")
    print(" Press 1 to play again and 2 for quit")
    y <- readline(prompt="Option: ") ### getting input from users if he/she wants to play again
  }else{
    print(" Press 1 to play again and 2 for quit")
    y <- readline(prompt="Option: ") ### getting input from users to chose options
  }
}