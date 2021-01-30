# frozen_string_literal: true

dishes_count, conditions_count = gets.chomp.split(' ').map(&:to_i)
conditions = []
conditions_count.times do
  conditions << gets.chomp.split(' ').map(&:to_i)
end

votes_count = gets.to_i
votes = []
votes_count.times do
  votes << gets.chomp.split(' ').map(&:to_i)
end

result = 0
vote_patterns = votes[0].product(*votes[1..-1])
vote_patterns.each do |vote_pattern|
  count = conditions.filter{ |cond| vote_pattern.include?(cond[0]) && vote_pattern.include?(cond[1]) }.count
  result = count if result < count
end

print(result)
