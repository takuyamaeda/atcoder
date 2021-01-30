# frozen_string_literal: true

types, least_time, least_damege = gets.chomp.split(' ').map(&:to_i)
spells = []
types.times do
  spells << gets.chomp.split(' ').map(&:to_i)
end

available_spells = spells.filter {|spell| spell[0] < least_time && spell[1] > least_damege}

unless available_spells.count.zero?
  print('Yes')
else
  print('No')
end
