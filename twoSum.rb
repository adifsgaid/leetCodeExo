# @param {Integer[]} nums
# @param {Integer} target
# @return {Integer[]}
def two_sum(nums, target)
 search = {}

 nums.each_with_index do |num, index|
  return [search[target - num], index] unless search[target - num].nil?
  search[num] = index
  end
  search
end
