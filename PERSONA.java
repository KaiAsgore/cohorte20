package clases;
/*DIAGRAMA GENERAL DE UNA CLASE EN JAVA
* persona <-------------------- Nombre de la clase
* -nombre : String <-----------
* -genero : char <-------------  >>> Atributos
* -ocupacion: String <---------
* ----------------------------------------------------------------
* + obtenerNombre ():String <--
* + obtenerGenero (): String <-
* + obtener Ocupacion (): Sring        >>>Metodos
* + modificarNombre(nombre : String)
* + modificarGenero (genero : String)
* + modificarOcupacion (ocupacion : String)*/


public class PERSONA {
    //Atributos de la clase, siempre se recomienda definirlos al inicio de la clase.
    String nombre;
    String apellido;

    //Metodos pueden recibir valores (argumentos) y pueden regresar informacion.
    public void desplegarInformacion(){
        System.out.println("nombre = " + nombre);
        System.out.println("apellido = " + apellido);
    }
}
