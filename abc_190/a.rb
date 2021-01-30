# frozen_string_literal:true

a, b, c = gets.chomp.split(' ').map(&:to_i)

if c.zero?
  a -= 1
else
  b -= 1
end

a_win = a > b || (c.zero? && a == b)

if a_win
  print('Takahashi')
else
  print('Aoki')
end
