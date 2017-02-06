Guess_Letter=function(){
  print("Welcome to hangman!!")
  word="EVAPORATE"
  guessed=rep("_",nchar(word))
  word=unlist(strsplit(word,""))
  l=list()
  letter=readline(prompt="guess a letter: ")
  while (TRUE){
      if(toupper(letter) %in% l){
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
          cat("the letter is",paste(guessed,collapse = ""),"you won!")
          break
        }
        }
      }
  
  
