let array = ["luca","davide","francesco"]
let newArray = []

array.map((name)=> {
  newArray.push(name.toUpperCase())
  return `My name is + ${name}`
})

