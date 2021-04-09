# Grid Traveller using RECURSION

def grid_traveler(x,y)
  return 1 if x == 1 && y == 1
  return 0 if x == 0 || y == 0
  grid_traveler(x - 1,y) + grid_traveler(x,y - 1)
end


# Grid Traveller using MEMOIZATION && RECURSION
def grid_traveler(x, y, memo={})
  key = x,y
  return memo[key] if memo.include?(key)
  return 1 if x == 1 && y == 1
  return 0 if x == 0 || y == 0

  memo[key] = grid_traveler(x - 1, y, memo) + grid_traveler(x, y - 1, memo)

  return memo[key]
end
