# frozen_string_literal: true

require 'faker'

def chuck_norris_fact
  puts 'Do you want to know a fact about Chuck Norris? (yes/no)'
  answer = gets.chomp.downcase

  if answer == 'yes'
    puts Faker::ChuckNorris.fact
    chuck_norris_fact
  elsif answer == 'no'
    puts 'Okay, have a great day!'
  else
    puts "Sorry, I didn't understand that. Please answer with 'yes' or 'no'."
    chuck_norris_fact
  end
end

chuck_norris_fact
