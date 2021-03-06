def roman_integer(s)
  roman_numbers = {
    'I' => 1,
    'V' => 5,
    'X' => 10,
    'L' => 50,
    'C' => 100,
    'D' => 500,
    'M' => 1000
  }

  sum = 0
  temp = s.length

  (0..temp - 1).each do |i|
    if i == temp - 1 || roman_numbers[s[i + 1]] <= roman_numbers[s[i]]
      sum += roman_numbers[s[i]]
    else
      sum -= roman_numbers[s[i]]
    end
  end
  sum
end

def remove_element(nums, val)
  length = nums.length
  index = 0
  while index < length
    if nums[index] == val
      length -= 1
      puts nums[index]
      puts nums[length]
      nums[index] = nums[length]
    else
      index += 1
    end
  end
  length
end
