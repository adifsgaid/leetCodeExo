def how_sum(target, array)
  return [] if target == 0
  return nil if target < 0

  array.each do |num|
    remainder = target - num

    ramainderResult = how_sum(remainder, array)

    if ramainderResult != nil
      return [*ramainderResult, num ]
    end

  end

  return nil
end
