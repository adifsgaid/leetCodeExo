const howSumTabulation = (target, numbers) => {
  const table =  Array(target + 1).fill(null)
  table[0] = []

  for (let i = 0; i <= target; i++){
    if (table[i] !==  null ){
     for (let num of  numbers){
      table[i + num] = [...table[i]]
     }
    }
  }
  return table[target]
}
console.log(howSumTabulation(5,[4,5,3]))
