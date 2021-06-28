def is_valid(s)
  brackets = {
    '(' => ')',
    '[' => ']',
    '{' => '}'
  }
  queue = []
  s.each_char do |char|
    if brackets[char]
      puts brackets[char]
      queue << brackets[char]
    elsif !queue.empty? && queue.pop == char
      next
    else
      return false
    end
  end
  queue.count == 0
end


def is_valid(s)

    queue = []
    s.each_char do |char|
        case char
        when '(', '[', '{'
            queue.push(char)
        when ')'
            return false if queue.pop != '('
        when ']'
            return false if queue.pop != '['
        when '}'
            return false if queue.pop != '{'
        end
    end
    queue.count == 0
end