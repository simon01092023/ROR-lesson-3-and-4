def guesser
  puts 'Think of a number between 1 and 100, and I will try to guess it.'

  low = 1
  high = 100

  loop do
    guess = (low + high) / 2

    puts "Is your number #{guess}? (too low, too high, correct)"
    response = gets.chomp.downcase

    case response
    when 'too low'
      low = guess + 1
    when 'too high'
      high = guess - 1
    when 'correct'
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

  print 'Do you want to play again? (yes/no): '
  play_again = gets.chomp.downcase
  if %w[yes y].include?(play_again)
    guesser
  else
    puts 'Thanks for playing! Goodbye.'
  end
end

guesser
