# frozen_string_literal:true

def calc(count, amount)
  (0..count).each do |count10000|
    (0..(count - count10000)).each do |count5000|
      if count10000 * 10000 + count5000 * 5000 + (count - count5000 - count10000) * 1000 == amount
        return [count10000, count5000, (count - count5000 - count10000)]
      end
    end
  end

  return [-1, -1, -1]
end

count, amount = gets.chomp.split(' ').map(&:to_i)
count10000, count5000, count1000 = calc(count, amount)
print([count10000, count5000, count1000].join(' '))
