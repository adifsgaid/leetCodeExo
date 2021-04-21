def checking(arr)
  arr.uniq.count {|char| arr.count(char) > 1; return char}
end

checking(["d","d","h","d"])



def check(arr)
  arr.each do |time|
    arr.count(time) > 1
    return time
  end
end
check(["d","d","h","d"])
