# frozen_string_literal: true

_count = gets.to_i
numbers = gets.chomp.split(' ').map(&:to_i)

result = 0

while numbers.all?(&:even?)
  numbers = numbers.map { |n| n / 2 }
  result += 1
end

print(result)
