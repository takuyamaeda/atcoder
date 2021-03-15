# @param {Integer[]} nums
# @param {Integer} target
# @return {Integer[]}
def two_sum(nums, target)
  nums.each_with_index do |num, index|
    diff = target - num
    diff_index = nums.rindex(diff)

    return [index, diff_index] if diff_index && diff_index != index
  end
end
