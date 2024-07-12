# frozen_string_literal: true

# Class Sum1
class Sum1
  attr_accessor :total

  def initialize(a, b)
    @total = a + b
  end
end

# Class Sum2
class Sum2
  def initialize(a, b)
    @a = a
    @b = b
  end

  def new_total
    @a + @b
  end
end

# Mainline program
sum1_instance = Sum1.new(5, 6)
sum2_instance = Sum2.new(5, 6)

puts "Sum1 total: #{sum1_instance.total}"
puts "Sum2 new_total: #{sum2_instance.new_total}"
