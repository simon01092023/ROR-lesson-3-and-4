# frozen_string_literal: true

# Method to collect keys and values from the user and store them in a hash
def collect_user_input
  hash = {}
  5.times do |i|
    puts "Enter key #{i + 1}:"
    key = gets.chomp
    puts "Enter value for key '#{key}':"
    value = gets.chomp
    hash[key] = value
  end
  hash
end

# Method to accept a hash and print arrays of keys and values
def hash_to_array(hash)
  keys = []
  values = []

  hash.each do |key, value|
    keys << key
    values << value
  end

  puts "Keys: #{keys}"
  puts "Values: #{values}"
end

# Print
puts 'Please enter 5 keys and 5 values:'
user_hash = collect_user_input
hash_to_array(user_hash)
