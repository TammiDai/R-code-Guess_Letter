# R-code-Guess_Letter
# Guess Letter "Evaporate", if guess successfully, automatic quit procedure
# We are going to write a function named Guess_Letter
Guess_Letter=function(){
  print("Welcome to hangman!!")     # welcome interface
  word="EVAPORATE"                  # the word we would like to guess
  guessed=rep("_",nchar(word))      # put _ in each character's place
  word=unlist(strsplit(word,""))    
  l=list()                          # empty list for guessing value to be stored
  letter=readline(prompt="guess a letter: ")  # interaction interface
  while (TRUE){                               # while loop, will end until the guessing are all correct
      if(toupper(letter) %in% l){             # change all the input into uppercase and %in% function the same as grepl in R
        letter=""
        print("Already Guessed!")
      }else if(toupper(letter)%in%word){
        index=which(word==toupper(letter))
        guessed[index]=toupper(letter)
        word[index]="_" 
      }else{
          cat(paste(guessed,collapse = ""))
          if (letter%in%""==FALSE){
            l=toupper(letter)                 
          }
          letter=readline(prompt="guess a letter:")
      }
        if ("_"%in%guessed==FALSE){
          cat("the letter is",paste(guessed,collapse = ""),"you won!")  # cat is more readable than print in R
          break                    #break while loop
        }
        }
      }
  
  
