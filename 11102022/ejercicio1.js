const personas = ['Maria','Dani','Luis','Juan','Camila'];
personas.splice(1,1)
console.log(personas);
//El primer número indica a partir de donde se va a empezar
//el degundo número indica el número de elementos que se van a borrar
//El tercer valor indica qué es lo que se va a agregar al arreglo
personas.splice(2,1);
console.log(personas);
personas.splice(1,1);
personas.unshift('Luis');
console.log(personas);
personas.push('Erick');
console.log(personas);
console.log(personas.indexOf('Maria'));
console.log(personas.indexOf('Erick'));