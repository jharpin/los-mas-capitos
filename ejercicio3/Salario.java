import javax.swing.JOptionPane;

public class Salario {
     public static void  main(String[] args) {

    if(args.length > 0 && args[0].equals("input")) {
        String mensaje = args[1];
        String input = JOptionPane.showInputDialog(null, mensaje);

        System.out.println(input);
    } else if (args.length > 0) {
        JOptionPane.showMessageDialog(null, args[0]);
    }else {
        JOptionPane.showMessageDialog(null, "Mensaje no recibido");
    }
   }
}
