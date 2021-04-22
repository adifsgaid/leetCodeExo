const canSum = (target, numbers) => {
  if (target === 0){
    return true
  }
  const table = Array(target + 1).fill(false);
  table[0] = true;
   console.log(table)
}
console.log(canSum(4,[2,3,4]))
