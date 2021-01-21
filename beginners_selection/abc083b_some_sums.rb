# frozen_string_literal: true

limit, min, max = gets.chomp.split(' ').map(&:to_i)
result = 0

(0..limit).each do |num|
  sum = num.to_s.chars.map(&:to_i).sum
  result += num if sum >= min && sum <= max
end

print(result)
