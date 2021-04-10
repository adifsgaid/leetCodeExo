def all_contruct(target, wordBank)
  return [[]] if target == ''
  result = []

  wordBank.each do |word|
    if target.index(word) == 0
      suffix = target.slice(word.length)

    suffixResult = all_contruct(suffix, wordBank)
    suffixWay  = suffixResult.map { |e| [ word, *e]  }

    result.push(*suffixWay)
    end
  end
  return result
end



all_contruct("purple",["purp","p","ur","le","purpl"])


[
["purp", "le"]
["p","ur", "p", "le"]
]


def all_contruct( target, wordBank)
  nextPossibleWords = wordBank.select{|word| target.start_with? word}

  nextPossibleWords.each_with_object([]) do |word,result|
    rest = target.delete_prefix word

    if rest.empty?
      result << [word]
    else
      all_contruct(rest,wordBank).each {|contruct| result << [word] + contruct}
    end

  end
end

all_contruct("purple",["purp","p","ur","le","purpl"])
