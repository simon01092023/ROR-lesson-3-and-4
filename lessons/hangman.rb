# frozen_string_literal: true

def hangman(word, letters)
  result = ''

  word.chars.each do |char|
    found = false

    letters.each do |letter|
      if char == letter
        found = true
        break
      end
    end

    result += if found
                char
              else
                '_'
              end
  end

  result
end

# Test
puts hangman('bob', ['b']) # Expected output: "b_b"
puts hangman('alphabet', %w[a h]) # Expected output: "a__ha___"
puts hangman('hello world', %w[e o]) # Expected output: "_e__o"
