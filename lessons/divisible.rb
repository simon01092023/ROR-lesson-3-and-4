# frozen_string_literal: true

def divisible
  (1..100).select { |number| number.even? || (number % 3).zero? || (number % 5).zero? }
end

result = divisible
puts "Numbers between 1 and 100 divisible by 2, 3, or 5: #{result}"
