def checking(arr)
 arr.uniq.count { |char| arr.count(char) > 1; return char}
end

checking(["d","a","d","h","d"])
