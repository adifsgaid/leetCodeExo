# Grid Traveller using RECURSION

def grid_traveler(x,y)
  return 1 if x == 1 && y == 1
  return 0 if x == 0 || y == 0
  grid_traveler(x - 1,y) + grid_traveler(x,y - 1)
end
