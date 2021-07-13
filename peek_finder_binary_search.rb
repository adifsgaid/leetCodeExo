def peek_finder(nums)
  left = 0
  right = nums.length - 1
  return 0 unless nums.length > 1
  return 0 if nums[0] > nums[1]
  return nums.length - 1 if nums[-1] > nums[-2]

  loop do
    break if left > right

    mid = (left + right) / 2
    return mid if nums[mid - 1] < nums[mid] && nums[mid + 1] < nums[mid]

    if nums[mid - 1] > nums[mid]
      right = mid - 1
    else
      left = mid + 1
    end
  end
  nil
end

nums = [3, 4, 3, 2, 1]

puts "This is the index of nums : #{peek_finder(nums)}"
