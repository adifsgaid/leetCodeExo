const fibo = (n) => {
  const table = Array(n + 1).fill(0);
  table[1] = 1;
  console.log(table)
};

console.log(fibo(6))
