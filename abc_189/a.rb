# frozen_string_literal:true

str = gets.chomp
result = str.chars.uniq.count == 1 ? 'Won' : 'Lost'

print(result)
