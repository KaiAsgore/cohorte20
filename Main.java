import java.util.Objects;
import java.util.Scanner;

public class Main {
    public static void main(String[] args) {
        //OPERADORES:
        //Metodo para solicitar informacion al usuario; va a hacer que lo que escribamos se almacene en la variable 'entrada'
        /*Scanner entrada= new Scanner(System.in);
        //Se estan creando variables, todas son variables tipo float por lo que van a esperar un valor de este tipo
        float numero1,numero2,suma,resta,mult,div,resto;
        //El sistema es lo que va a pedir al usuario 'Por eso tinene el out' y lo va a ingresar en donde este el in (entrada)
        System.out.print("Digite dos numeros");

        //Va a aceptar los numeros pero llegan como cadenas, se tienen que convertir a Float.
        numero1=entrada.nextFloat();
        numero2=entrada.nextFloat();

        suma=numero1+numero2;
        resta=numero1-numero2;
        mult=numero1*numero2;
        div=numero1/numero2;
        resto=numero1%numero2;
        System.out.println("La suma es: "+suma);
        System.out.println("La resta es: "+resta);
        System.out.println("La multiplicacion es: "+mult);
        System.out.println("La division es: "+div);
        System.out.println("El resto es: "+resto);*/

        //var infiere el tipo de dato que va a tener la variable.
        /*var miVariable= "nueva cadena";
        System.out.println(miVariable);*/

        //CONCATEDACION DE CADENAS
        /*var usuario= "erick " ;
        var titulo = "ingeniero ";
        var union = usuario+titulo;
        System.out.println("union = " + union);

        var i = 3;
        var j = 4;
        var suma= i+j;*/
        //System.out.println("suma = " + suma);
        /*contexto cadena, java lo lee de izquierda a derecha por lo que si el primer valor
        es una cadena y lo que sigue es int (e.g.) al concatenar se convertira en str.
        se pueden usar parentesis para evitar esto.*/
        //System.out.println(usuario + i + j);

        //CARACTERES ESPECIALES
        /*var nombre="karla";
        System.out.println("Nueva linea: \n" + nombre);
        System.out.println("Tabulador: \t"+nombre);
        System.out.println("Retroceso: \b"+nombre);*/

        //SCANNER
        /*Se usa para capturar la informacion que ponga el usuario*/

        /*System.out.println("escribe tu nombre");
        Scanner consola = new Scanner(System.in);

        var usuario = consola.nextLine();
        System.out.println("usuario = " + usuario);*/

        //ejercicio libro
        //Se crea el nuevo objeto "scanner" que va a tomar el valor del System out, y lo va a guardar.
        /*Scanner scanner= new Scanner(System.in);
        System.out.println("Proporciona el titulo: ");
        String titulo = scanner.nextLine();
        System.out.println("Proporciona el autor: ");
        String autor = scanner.nextLine();
        System.out.println(titulo+" fue escrito por "+autor); */

        //TIPOS DE DATOS PRIMITIVOS:
        /*
        Tipos primitivos enteros : byte, short, int, long
        */
        /* EJERCICIO DE LIBROS!!
        Scanner scanner=new Scanner(System.in);
        System.out.println("nombre del titulo:");
        var titulo= scanner.nextLine();
        System.out.println("Numero de identificacion:");
        var id = scanner.nextInt();
        System.out.println("precio:");
        var costo=scanner.nextDouble();
        System.out.println("Proporciona el envio gratuito:");
        var envio = scanner.nextBoolean();

        System.out.println("Titulo: "+titulo);
        System.out.println("Identificacion: "+id);
        System.out.println("Precio: "+costo);
        System.out.println("Envio gratuito: "+envio);*/

        //OPERADORES ARITMETICOS:
        /*int a=3, b=2;
        var resultado= a-b;
        System.out.println("resultado = " + resultado);
        resultado= a+b;
        System.out.println("resultado = " + resultado);
        resultado= a*b;
        System.out.println("resultado = " + resultado);
        resultado= a/b;
        System.out.println("resultado = " + resultado);*/

        //EJERCICIO RECTANGULO:
         /*Scanner scanner=new Scanner(System.in);
         System.out.println("Cual es el alto");
         var alto = scanner.nextInt();
         System.out.println("Cual es el largo");
         var largo = scanner.nextInt();

         var area = alto*largo;
         var perimetro= (alto +largo)*2;

        System.out.println("area = " + area);
        System.out.println("perimetro = " + perimetro);*/

        //EJERCICIO EL MAYOR DE DOS NUMEROS:

        /*Scanner scanner = new Scanner(System.in);
        System.out.println("proporciona el numero 1: ");
        var numero1 = scanner.nextInt();
        System.out.println("proporciona el numero 2: ");
        var numero2 = scanner.nextInt();

        var resultado = (numero1 >= numero2) ? "el mayor es el numero 1: " +numero1 : "el mayor es el numero 2: "+numero2;
        System.out.println(resultado); */

        // IF ELSE!!
        /*var condicion = true;
        if (condicion) {
            System.out.println("La condicion es verdadera");
        }
        else {
            System.out.println("condicion falsa");
        }*/

        //IF, ELSE, ELSE IF:

        /*Scanner scanner = new Scanner(System.in);
        System.out.println("Escriba un numero");
        var numero = scanner.nextInt();
        var numeroTexto= "Numero desconocido";
        if (numero == 1) {numeroTexto="Numero uno";

        } else if (numero ==2) {numeroTexto = "Numero dos";

        } else if (numero == 3) {numeroTexto = "Numero tres";

        } else if (numero==4){ numeroTexto= "numero cuatro";
        } else { numeroTexto = "Numero no encontrado";}

        System.out.println(numeroTexto);*/

        //EJERCICIO CALCULO ESTACION DEL AÑO

        /*var mes = 28;
        var estacion = "Estacion desconocida";
        if (mes == 1 || mes == 2 || mes ==12){
            estacion="invierno";
        } else if (mes==3 || mes == 4  || mes ==5){
            estacion = "primavera";
        } else if (mes == 6 || mes == 7 || mes == 8) {
            estacion = "verano";
        } else if (mes ==9 || mes ==10 || mes ==11) {
            estacion="otoño";
        }else {
            System.out.println(estacion);
        }
        System.out.println(estacion);*/

        //  ----->SWITCH EN JAVA:<------
        /*Switch ayuda para evaluar casos y necesita break*/

        /*Scanner scanner = new Scanner(System.in);
        System.out.println("Escriba un numero del uno al doce");
        var mes = scanner.nextInt();

        switch (mes){
            case 12:
                System.out.println("Primavera");
                break;
            case 1:
                System.out.println("Primavera");
                break;
            case 2:
                System.out.println("Primavera");
                break;
            case 3:
                System.out.println("Verano");
                break;
            case 4:
                System.out.println("Verano");
                break;
            case 5:
                System.out.println("Verano");
                break;
            case 6:
                System.out.println("Otoño");
                break;
            case 7:
                System.out.println("Otoño");
                break;
            case 8:
                System.out.println("Otoño");
                break;
            case 9:
                System.out.println("Invierno");
                break;
            case 10:
                System.out.println("Invierno");
                break;
            case 11:
                System.out.println("Invierno");
                break;
            default:
                System.out.println("Mes no valido");
                //Despues de la palabra reservaca Case, se pone la situacion a evaluar.

        }*/

        //---->EJERCICIO CALIFICACIONES <------
        /*Scanner calificaiones = new Scanner(System.in);
        System.out.println("indique la calidicacion");
        var promedio = calificaiones.nextInt();
        switch (promedio){
            case 10 :
                System.out.println("A");
                break;
            case 9 :
                System.out.println("A");
                break;
            case 8 :
                System.out.println("B");
                break;
            case 7 :
                System.out.println("B");
                break;
            case 6 :
                System.out.println("C");
                break;
            case 5 :
                System.out.println("C");
                break;
            case 4 :
                System.out.println("D");
                break;
            case 3 :
                System.out.println("D");
                break;
            case 2 :
                System.out.println("F");
                break;
            case 1 :
                System.out.println("F");
                break;
            case 0 :
                System.out.println("No aprobatorio");
                break;
            default:
                System.out.println("Valor desconocido");

        }*/

        //CICLOS WHILE!!

        /*var contador = 0;
        while (contador < 3 ) {
            System.out.println("contador = " + contador);
            contador ++;
        }*/

        //----->CICLOS DO-WHILE:<-------

        /*Tienen una linea de codigo a ejecutar antes de que empiece el ciclo, incluso
        * cuando la condicion sea falsa, se va a ejecutar esa primera linea de codigo para
        * despues entrar al ciclo while, y continuara ese ciclo while hasta que se cumpla
        * su condicion.*/

        /*var contador = 0;
        do {
            System.out.println("contador = " + contador);
            contador++;
        } while (contador<0); //se requiere el punto y coma al final*/
        
        //---->CICLOS FOR <-----
        /*Es principalmente para ingrsar al indice de una variable ya que se incrementa
        * o decrementa dependiendo sea el caso.*/
        
        //el ciclo for tiene tres espacios a llenar}, el primer espacio es para declarar alguna variable
        //el segundo espacio es la condicion, que mientras sea verdadero se va a seguir repitiendo la accion
        //el tercer espacio es para incrementar la variable inicial. 
        /*for (var contador = 0; contador<3;contador++ ) {
            System.out.println("contador = " + contador);
        }
        //Al terminar el ciclo for se destuye la variable que esta ocupando
        var contador = 33;
        System.out.println("contador = " + contador);*/

        //USO DE BREAK Y CONTINUE EN CICLOS;
        /*for (var contador = 0;contador <3;contador++){
            if(contador % 2 == 0) {
                System.out.println("contador = " + contador);
                break;


            }

        }*/
        /*inicio: //ETIQUETA ... No es muy recomendable utilizar etiquetas en programacion.
        for (var contador = 0;contador <3;contador++) {
            if (contador % 2 != 0) {
               continue inicio; //Ir a la siguiente iteracion.
            }
            System.out.println("contador = " + contador);
        }*/

        /*------>CLASES EM JAVA<--------
        * los objetos se pueden crear en java, los cuales van a tener atributos y metodos
        * una clase es una plantilla que va a poder crear objetos.
        * un objeto es una instancia de una clase. */

    
    }
}