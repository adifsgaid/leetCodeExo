def best_sum(target, array)
  return [] if target == 0
  return nil if target < 0

  shortResult = nil

  array.each do |num|
    remainder = target - num
    remainderResult = best_sum(remainder, array)

    if remainderResult != nil
      combination = [*remainderResult, num]
      #  if the combination is shorter than the current shortResult update it
    if shortResult == nil || combination.lenght < shortResult.lenght
      shortResult = combination
      end
    end
  end

   shortResult
end
