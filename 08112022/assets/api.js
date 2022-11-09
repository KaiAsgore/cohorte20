const nombre = ()=> {
    const nombres =['Pepe,','Pancho','María'];


    
  /*   setTimeout(() =>{
        return nombres;
    },0) */
    /* Sale undefined porque aunque se lleva a cabo primero 
    las acciones de la función, al tener un delay de 3 segundos
    console log no tendrá los valores a tiempo. */
    return new Promise((resolve,reject)=> {
        setTimeout(()=> {
        if (true) {
            resolve (nombres)
        }else {
            reject("No hay nombres");
        }    
        }, 1)
    });
}
nombre().then(nombres => console.log(nombres)).catch(error => console.warn(error))
console.log(nombre());
/* 

 //PROMESAS CON USO DE API'S
console.log(nombre()[0]); */
/* console.log(nombre()) */
/* Promesas JavaScript, son lo que su nombre dice, promesas,
las cuales actuaran de forma que pueda resolver los problemas 
anteriores. 
.then(function resolve) 
.catch(function reject)
.then()
Va a ser código a realizar hasta que se cumpla la promesa
API = *//* 
const url= 'https://pokeapi.co/api/v2/pokemon/25';

const pokedex = () =>  {
   fetch(url)
   .then(a => a.json())
   .then (b => console.log(b))
   .catch (c => console.log(c))

};
    pokedex(); */

//las funciones flecha funcionan así 
/*  () => {return} */


/* PROMESAS EN CADENA */
/*  ----------> azucar sintactica código que se creó 
para facilitar el trabajo de los programadores */

//async -- await : siempre deben estar asociadas. 


/* 
async function obtenerNombre (){

}
*/
const obtenerNombre = async () => {
    let nombres = await nombre();
    console.log(nombres);
    
} 
obtenerNombre();