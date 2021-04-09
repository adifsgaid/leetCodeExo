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
