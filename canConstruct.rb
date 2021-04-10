def can_construct(target, wordBank)
  return true if target == ''

  result =  wordBank.select{|word| target.start_with? word}

  result.each  do |word|

    if target.index(word)
    suffix = target.slice!(word.length)

    if can_construct(suffix, wordBank) == true
      return true
      end
    end
    end
  return false
end




def can_construct(target, wordBank)
  return true if target == ''
  wordBank.each  do |word|
    if target == word
      return true
  end
  return false
end
end

can_construct("abdef",["ab","abc","cd","def","abcd"])

can_construct(["eeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeef"],["e","ce","ee","eeeeeeee"])



def can_construct(target, wordBank)
  return true if target == ''

  result =  wordBank.select{|word| target.start_with? word}

  result.each  do |word|

    rest = target.delete_prefix word
    suffix = rest.slice!(word.length)

    if can_construct(suffix, wordBank) == true
      return true
      end
    end
  return false
end








can_construct(["abc"],["a","cd","c","b"])
can_construct(["abcdef"],["a","cd","c","b"])
