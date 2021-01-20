# frozen_string_literal: true

coin500_count = gets.to_i
coin100_count = gets.to_i
coin50_count = gets.to_i
amount = gets.to_i

result = 0

all_combination = (0..coin500_count).filter{|i| i * 500 <= amount}.product(
  (0..coin100_count).filter{|i| i * 100 <= amount},
  (0..coin50_count).filter{|i| i * 50 <= amount}
)

result = all_combination.count do |combination|
  combination[0] * 500 + combination[1] * 100 + combination[2] * 50 === amount
end

print result
