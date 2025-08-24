import javax.swing.JOptionPane;

public class LongitudPalabra {

   /**
    * Función principal que maneja la visualización de mensajes o la solicitud de datos.
    * 
    * Si se pasa el argumento "input", muestra un cuadro de texto para que el usuario ingrese un dato,
    * el cual luego es impreso en la consola.

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

