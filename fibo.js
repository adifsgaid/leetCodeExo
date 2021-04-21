const fibo = (n) => {
  const table = Array(n + 1).fill(0);
  table[1] = 1;

  for (let i = 0; i <= n; i++){
      table[i + 1] += table[i]
      table[i + 2] += table[i]
    }
    return table[n]
};

console.log(fibo(6))
console.log(fibo(7))
console.log(fibo(8))
console.log(fibo(50))
