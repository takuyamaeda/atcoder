# frozen_string_literal: true

cups, limit = gets.chomp.split(' ').map(&:to_i)
alchols = []
cups.times do
  alchols << gets.chomp.split(' ').map(&:to_i)
end

drinked = 0.0

alchols.each.with_index(1) do |alchol, index|
  quantity, per = alchol
  alchols_quantity = quantity * per.to_f
  drinked += alchols_quantity

  if drinked / 100.0 > limit
    print(index)
    exit
  end
end

print(-1)
