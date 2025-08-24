import javax.swing.JOptionPane;

public class Salario {

    /**
     * Función principal que maneja la visualización de mensajes o la solicitud de datos.
    
     * Si se pasa el argumento "input", muestra un cuadro de entrada para que el usuario ingrese un dato,
     * el cual luego se imprime en la consola.
     * Si se pasa solo un mensaje, se muestra en un cuadro de diálogo.
     * Si no se pasa ningún argumento, se muestra un mensaje predeterminado.
     */
    public static void main(String[] args) {

        if (args.length > 0 && args[0].equals("input")) {
            String mensaje = args[1];
            String input = JOptionPane.showInputDialog(null, mensaje);
            System.out.println(input);
        } else if (args.length > 0) {
            JOptionPane.showMessageDialog(null, args[0]);
        } else {
            JOptionPane.showMessageDialog(null, "Mensaje no recibido");
        }
    }
}

