let arr = [
           [1,2,3],
           [4,5,6],
           [7,8,9],
        ];
/* console.log(arr [1][1]); */


/* es una función por lo que lleva paréntesis */
/* for(let i = 0; i < 2;) */ 
/* En este caso, no va a llegar al tercer elemento del arreglo  */
/* for(let fila = 0; fila<=2; fila++) { */
    /* Se creó una variable inicial con valor 0
    el cuál va a servir como switch para apagar 
    el loop, se realizó un condicional de que 
    si "fila dos" es menor o igual a 2 el loop va a continuar
    y se agregó la iteración de agregar un valor de 1 a 0 
    cada vez que se realice el loop */
    /* for (let columna=0;columna<=2; columna++) {
        console.log(arr [fila][columna]);  */
        /* Se realizó un segundo loop para que no solo recorra
        hileras sino vaya casilla por casilla. 
        con el tema de columna de igual forma comienza en 0 una 
        nueva variable para que de el siguiente patrón 
        comienza en la fila 0 columna 0 lo cuál sería
        el valor 1 y suma un valor a columna y hasta que en columna
        se cumpla la condición de ser mayor a 2 se va a sumar 
        una valor a fila y se repite todo el ciclo.*/
    /* } */
 /*   console.log("-----------------"); */
/* } */
/* El loop while evalua booleanos y condicionales de true/false */
/* let contador = 0; */
/* while(contador < 10 ) {
    console.log(contador);
    contador = contador + 1;
    
}
console.log (contador); */

/* loop Do */
/* do{
contador ++;
console.log(contador)
}while(contador <=10); */

let fila = 0;
do{
    for (let columna=0;columna<=2; columna++) {
        console.log(arr [fila][columna]); 

}
fila ++;
console.log("-------------")
} while(fila<= 2) {

}

/* ESTRUCTURA DE LOS BUCLES
While (condicion a cumplir) {Código que va a ejecutar mientas
no se cumpla la condicion}; evalua si la condición es verdadera
o falsa  */
/* For (evento -condicional-) {Codigo a cumplir} */
/* DoWhile. Do{codigo a realizar}while(condición){} */