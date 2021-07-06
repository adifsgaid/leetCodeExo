def inverse_vowels(s)
  vowels = { 'a' => 'a', 'e' => 'e', 'i' => 'i', 'o' => 'o', 'u' => 'u' }
  l = 0
  r = s.length - 1

  while l < r
    left = s[l]
    right = s[r]

    if vowels.key?(left.downcase) && vowels.key?(right.downcase)
      s[l], s[r] = s[r], s[l]
      l += 1
      r -= 1
    else
      l += 1 unless vowels.key?(left.downcase)
      r -= 1 unless vowels.key?(right.downcase)

    end
  end
  s
end

def inverse_vowels_2(s)
  character = s.scan(/[aeiou]/)
  s.gsub(/[aeiou]/) { character.pop }
end

def reverse_vowels(s)
    vowels = {'a'=>'A', 'e'=>'E', 'i'=>'I', 'o'=>'O', 'u'=>'U'}
    l,r = 0, s.length-1

    while l < r
        left = s[l]
        right = s[r]

    if vowels.key?(left) || vowels.value?(left) && vowels.key?(right) || vowels.value?(right)
        s[l], s[r] = s[r], s[l]

        l += 1
        r-=1
    else
        l += 1 unless vowels.key?(left) || vowels.value?(left)
        r -= 1 unless vowels.key?(right) || vowels.value?(right)
      end
    end
       s
end
