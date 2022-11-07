/* console.log("Hola mundo"); */


/* CALCULADORA */
/* 
let operacion = prompt ("qué operación desea realizar?");
let primerNumero = parseInt(prompt("indique el primer número"));
let segundoNumero= parseInt(prompt("indique el segundo número"));
function calculadora (a,b)  {
    if (operacion == "suma"){
       return a+b;

    }
    if (operacion == "resta"){
        return a-b;
    }
    if (operacion == "multiplicar"){
       return a*b;
    }
    if (operacion == "dividir") {
        return a/b;
    }
    else {
        console.log ("no procede operación");
    }
} */
/* let variable = calculadora(primerNumero,segundoNumero);
console.log(variable); */

/* console.log(calculadora(primerNumero,segundoNumero)); */

/* TERMINA CALCULADORA */

/* Empieza  cálculos de arreglos */

/* 
let operacion=0;

*/
/* const numeros = [2, 4, 6, 57, 200] */
/*
//foreach: nos va a ayudar a pasar por cada uno de los elementos del arreglo, YA ES UNA FUNCIÓN
numeros.forEach(function sumar(elemento){
    console.log (operacion+=elemento);
}); */
/* Nos permite utilizar una variable "vacía " para guardar las operaciones en la misma
for each hace que se recorra la operación en todos los elementos.*/

/* Termina cálculo de arreglos */


/* numeros.forEach((el, indice, arreglo) => {
    console.log(el, indice, arreglo);
}); */
/* En la primera posición, no importa el nombre, da la información del calor dentro del index
en la segunda posición, sin importar el nombre, da el lugar dentro del arreglo
en la tercera posición imprime lo que tiene el arreglo */

/* Crear una aplicación JS, recibir una palabra y va a regresar la palabra pero invertida 
e.g. raul => Luar */

/* split separa elementos y los pone en un arreglo
reverse revierte los elementos del arreglo
join los une  y los convierte en un string de vuelta */

let nombre = prompt("cuál es tu nombre?");
let arrayNombre=nombre.split('');

let arrInver=arrayNombre.reverse();
let newName=arrInver.join('');


console.log(newName);
