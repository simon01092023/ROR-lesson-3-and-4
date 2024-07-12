# Prompt for and collect personal details, storing them in a hash
person = {}

# Collect first name
puts 'Enter your first name:'
person[:first_name] = gets.chomp

# Collect last name
puts 'Enter your last name:'
person[:last_name] = gets.chomp

# Collect age
puts 'Enter your age:'
person[:age] = gets.chomp

# Collect street address
puts 'Enter your street address:'
person[:street_address] = gets.chomp

# Collect city
puts 'Enter your city:'
person[:city] = gets.chomp

# Collect state
puts 'Enter your state:'
person[:state] = gets.chomp

# Output the hash
puts "Hash: #{person}"

# Output the keys of the hash
puts "Keys: #{person.keys}"

# Output the values of the hash
puts "Values: #{person.values}"

# Capitalize the first name, last name, and city
person[:first_name] = person[:first_name].capitalize
person[:last_name] = person[:last_name].capitalize
person[:city] = person[:city].capitalize

# Change the state to upper case
person[:state] = person[:state].upcase

# Output the modified hash
puts "Modified Hash: #{person}"
