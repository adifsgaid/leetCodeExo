def count_construct(target, wordBank)
  return 1 if target == ''
  total = 0

  wordBank.each do |word|

    if target.index(word) == 0
      numOfTimes = count_construct(target.slice(word.size), wordBank )
      total += numOfTimes
    end
  end
  return total
end

count_construct("eeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeef",["e","ce","ee","eeeeeeee"])
count_construct("purple",["purp","p","ur","le","purpl"])
count_construct("abcdef",["a","cd","c","b"])




# Non Funziona
