const canSum = (target, numbers) => {
  if (target === 0){
    return true
  }
  const table = Array(target + 1).fill(false);
  table[0] = true;

  for(let i = 0; i <= target; i++ ){
    if (table[i] === true){
      for(let num of numbers){
        table[i + num] = true
      }
    }
  }
  return table[target]
}
console.log(canSum(7,[2,4]))
console.log(canSum(7,[5,3,4,7]))
console.log(canSum(8,[2,3,5]))
console.log(canSum(300,[7,14]))
