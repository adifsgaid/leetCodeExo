def first_non_consecutive(arr)
  #your code here
  arr.each_cons(2).find {|a,b| b - a != 1}&.last
end


def first_non_consecutive(arr)
  enum = arr.each
  loop {return enum.next if enum.next != enum.peek-1}
  nil
end


def first_non_consecutive(arr)
  #  injecting a and b inside of the array
  arr.reduce do |a,b|

    return b if b != a + 1
  # we return b if b is not equal to the a + 1 wich basically means is not progressive

    b
  # we return b
  end
  # if no condition is satisfieted we simply return nil
  nil
end

