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

arr  = [3, 4, 3, 2, 1]

puts "This is the index of nums : #{peek_finder(arr)}"
def peek_finder(arr)
  return arr if arr.length <= 1
  return arr[0] if arr[0] > arr[1]
  return arr.length - 1 if arr[-1] > arr[-2]

  left = 0
  right = arr.length - 1

  loop do
    break if left > right

    mid = (left + right) / 2

    return mid if arr[mid] > arr[mid - 1] && arr[mid] > arr[mid + 1]

    if arr[mid] < arr[mid + 1]
      left = mid + 1
    else
      right = mid - 1
    end
  end
end
arr  = [3, 4, 3, 2, 9]

puts "This is the index of nums : #{peek_finder(arr)}"