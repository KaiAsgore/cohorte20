package clases;

public class PruebaPersona {
    public static void main(String[] args) {
        PERSONA persona1;
        persona1 = new PERSONA();
        persona1.nombre = "Oliver";
        persona1.apellido= "Fong";
        persona1.desplegarInformacion();

        PERSONA persona2 = new PERSONA();
        System.out.println("persona1 = " + persona1);
        System.out.println("persona2 = " + persona2);
        persona2.desplegarInformacion();
        persona2.nombre = "Rin";
        persona2.apellido = "Fong";
        persona2.desplegarInformacion();

    }
}
