def guesser_random_number
    puts "Think of a number between 1 and 100, and I will try to guess it."
    
    low = 1
    high = 100
    guessed_numbers = []
  
    loop do
      guess = (low + high) / 2
      guessed_numbers << guess
      
      puts "Is your number #{guess}? (too low, too high, correct)"
      response = gets.chomp.downcase
  
      case response
      when "too low"
        if guessed_numbers.include?(low) && low >= guess
          puts "I think you are lying. Let's try again."
          break
        end
        low = guess + 1
      when "too high"
        if guessed_numbers.include?(high) && high <= guess
          puts "I think you are lying. Let's try again."
          break
        end
        high = guess - 1
      when "correct"
        puts "I guessed your number! It was #{guess}."
        break
      else
        puts "Invalid response. Please say 'too low', 'too high', or 'correct'."
      end
  
      if low > high
        puts "I think you are lying. Let's try again."
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
  
  