# frozen_string_literal:true
str = gets.chomp

if str.match?(/\A(dream|dreamer|erase|eraser)*\z/)
  print('YES')
else
  print('NO')
end
