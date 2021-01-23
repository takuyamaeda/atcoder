# frozen_string_literal: true

_count = gets.to_i
cards = gets.chomp.split(' ').map(&:to_i)

cards.sort!.reverse!

result = 0

cards.each_with_index do |card, index|
  if index.even?
    result += card
  else
    result -= card
  end
end

print(result)
