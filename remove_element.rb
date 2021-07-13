def remove_element(nums, val)
  return nil if nums.length.zero?

  nums.each_with_index do |num, index|
    return nums[index] = nil if num == val
  end
  nums.compact!
  nums.length
end

def remove_element(nums, val)
  return nil if nums.length.zero?

  size = nums.length
  index = 0

  while index < size
    if nums[index] == val
      size -= 1
      nums[index] = nums[size]
    else
      index += 1
    end
  end
  size
end
