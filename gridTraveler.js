const grid_traveler = (x,y) =>{
  const array = Array(x + 1)
  .fill().map(() => Array(y + 1).fill(0))

  array[1][1] = 1

  for (let i = 0; i <= x; i++){
    for (let j = 0; j <= y; j++){
      const current = array[i][j]
      if (i + 1 <= x) array[i + 1][j] += current
      if (i + 1 <= x) array[i][j + 1] += current
    }
  }
  return array[x][y]
}
 console.log(grid_traveler(3,4))
 console.log(grid_traveler(18,14))
 console.log(grid_traveler(13,4))
 console.log(grid_traveler(18,4))
