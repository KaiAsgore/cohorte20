const titulo=document.getElementById('titulo');
titulo.textContent = 'hola';

/* Text content nos permite modificar agragando texto */
/* innerHTML puede modificar de mejor manera el elemento. */
const parrafos=document.getElementsByClassName('parrafo');
/* console.log(parrafos[0].innerHTML);
 */
parrafos[0].innerHTML='Soy un párrafo';
parrafos[1].style.backgroundColor  = 'yellow' ;
console.log(parrafos[1].classList.add('coloresFeos'));

const padre=document.getElementById('padre');
/* Crear elementos HTML */
const enlace = document.createElement("a");
enlace.href='https://google.com';
enlace.textContent='ir a google';

/* va a agregar el 'a' al documento. Y se va a agregar hasta 
la parte final de la página. */
/* document.body.appendChild(enlace); */
/* afterbegin, inserta al inicio de la página 
Afterend lo manda al final.
Beforebegin y beforeend son la contraparte de los otros*//* 
document.body.insertAdjacentElement("afterbegin",enlace); */

/* Se colocó dentro del elemento div 'padre' en la
página.  */
padre.appendChild(enlace);

const nombres = ['Pedro','Juan','Sonia','Miguel'];
/* 
const lista = document.createElement('ul');


for(let i=0; i < nombres.length; i++) {
    const li = document.createElement('li');
    li.innerText = nombres[i];
    lista.appendChild(li);
}
console.log(lista); */
  const lista1 = document.getElementById("lista1");

nombres.forEach((el)=> {
    const li = document.createElement("li");
    li.textContent = el;
    lista1.appendChild(li);
});
 

const frutas = ['Manzana','Limón','Pera','Uva'];

const lista2 = document.getElementById("lista2");

frutas.forEach((el)=>{
    lista2.innerHTML += `
    <li>${el}</li>
    
    `;
})




