# frozen_string_literal: true
count = gets.to_i
apple_dishes = gets.chomp.split(' ').map(&:to_i)

max = 0

(0...count).each do |l|
  x = apple_dishes[l]

  (l...count).each do |r|
    break if max >= x * (count - l)

    x = [x, apple_dishes[r]].min
    eatable_apple_count = x * (r - l + 1)
    max = [max, eatable_apple_count].max
  end
end

print(max)
