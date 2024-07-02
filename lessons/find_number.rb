
def random_secret_number
    secret_number = rand(1..100)
    puts "I have generated a secret number between 1 and 100. Can you guess it?"
  
    loop do
      print "Enter your guess: "
      guess = gets.chomp
  
      if guess.to_i.to_s != guess
        puts "Invalid guess. Please enter a number."
        next
      end
  
      guess = guess.to_i
  
      if guess < 1 || guess > 100
        puts "Invalid guess. Please enter a number between 1 and 100."
      elsif guess < secret_number
        puts "Too low! Try again."
      elsif guess > secret_number
        puts "Too high! Try again."
      else
        puts "Correct! The secret number was #{secret_number}."
        break
      end
    end
  
    print "Do you want to play again? (yes/no): "
    play_again = gets.chomp.downcase
    if play_again == "yes" || play_again == "y"
      play_game
    else
      puts "Thanks for playing! Goodbye."
    end
  end
  
  random_secret_number
  