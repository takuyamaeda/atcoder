# frozen_string_literal:true
count = gets.to_i
plans = []
count.times do
  plans << gets.chomp.split(' ').map(&:to_i)
end

time = 0
pos_x = 0
pos_y = 0

plans.each do |time_plan, pos_x_plan, pos_y_plan|
  points = time_plan - time
  require_points = (pos_x - pos_x_plan).abs + (pos_y - pos_y_plan).abs

  if require_points > points || (require_points < points && (points - require_points).abs % 2 != 0)
    print('No')
    exit
  end

  time = time_plan
  pos_x = pos_x_plan
  pos_y = pos_y_plan
end

print('Yes')
