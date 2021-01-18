# frozen_string_literal: true

a, b = gets.chomp.split(' ').map(&:to_i)

if (a * b).even?
  print('Even')
else
  print('Odd')
end
