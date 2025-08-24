import javax.swing.JOptionPane;

public class EcoMensaje {

   /**
    * Función principal que maneja la visualización de mensajes o la solicitud de datos.
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


