const frutas=['pear','apple','canelope'];
console.log(frutas);

console.log(frutas.length);

//metodos: son las acciones que pueden realizar los arreglos

//push()
frutas.push('sandia');
console.log(frutas);
console.log(frutas.length);
let num=frutas.push(['papas','zanahorias']);
console.log(frutas)
console.log(num);

//unshift()

frutas.unshift('platano');
console.log(frutas);

//métodos para quitar
//pop()
frutas.pop();
console.log(frutas);
frutas.shift();
console.log(frutas);

//indexOf()
//Sirve para encontrar la posición de un elemento dentro 
//de un arreglo 
console.log(frutas.indexOf('apple'));
console.log(frutas.indexOf());