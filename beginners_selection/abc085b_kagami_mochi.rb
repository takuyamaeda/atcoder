# frozen_string_literal:true

count = gets.to_i
mochis = []
count.times do
  mochis << gets.to_i
end

print(mochis.uniq.count)
