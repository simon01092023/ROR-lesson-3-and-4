# frozen_string_literal: true

def do_calc
  result = yield(7, 9)
  puts result
end

# First call: adding the two numbers
do_calc do |a, b|
  a + b
end

# Second call: multiplying the two numbers
do_calc do |a, b|
  a * b
end
