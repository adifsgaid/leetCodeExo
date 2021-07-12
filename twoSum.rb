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
nums = [2,7,11,15], target = 9



def two_sum(target, nums)

  nums.each_with_index do |num, index|
      current = target - num
      return nil if current.nil?
      result = two_sum(current, nums)
      result = index
  end
  result
end
two_sum(9,[2,7,11,15])




def fibo_tabo(num)
  table = Array.new(num + 1).fill(0)
  table[num]= 0
  table[1]= 1

  for i in (2...num + 1)
    table[i] = table[i - 1] + table[i - 2]
  end

  return table[num]
end

fibo_tabo(3)

def facto(n)
  if n <= 1
    return n
  else

  return n * facto(n - 1)
 end
end

facto(43)


def show
  @post = @post.views + 1
  @post.save
end




def two_Sum(nums, target)
  map = {}

  nums.each_with_index do |num, index|
    diff = target - num 
     if map[diff]
        return [map[diff], index]
     else
       map[num] = index
     end
  end 
end











