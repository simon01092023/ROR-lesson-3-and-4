puts 'Enter your name.' # Here we put a prompt to the console
name = gets.chomp
#  Here we collect the answer
# name = gets().chomp() is the verbose version
puts "Well hello, #{name}!" # We respond with a greeting

washington_hash = { name: 'George Washington',
                    year: 1776,
                    phone: 'not yet invented',
                    age: 46 }
washington_hash[:rank] = 'general'

irb
example_string = 'this is a string.'
example_string.class
:name.class
this_hash = {}
this_hash.class
this_hash.methods
quit

irb
puts %w[aaa bbb ccc ddd].inspect # an array of strings
puts %i[aaa bbb ccc ddd].inspect # an array of symbols
puts %q("What's that again?") # A string that has both single and double quotes in it

# Compare that with this string, that has a single quote in it but does not contain double quotes
puts "What's that again?"
quit
